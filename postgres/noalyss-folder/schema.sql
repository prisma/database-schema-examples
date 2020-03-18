--
-- PostgreSQL database dump
--

-- Dumped from database version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)
-- Dumped by pg_dump version 10.10 (Ubuntu 10.10-0ubuntu0.18.04.1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

--
-- Name: comptaproc; Type: SCHEMA; Schema: -; Owner: prisma
--

CREATE SCHEMA comptaproc;


ALTER SCHEMA comptaproc OWNER TO prisma;

--
-- Name: plpgsql; Type: EXTENSION; Schema: -; Owner: 
--

CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;


--
-- Name: EXTENSION plpgsql; Type: COMMENT; Schema: -; Owner: 
--

COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';


--
-- Name: account_type; Type: DOMAIN; Schema: public; Owner: prisma
--

CREATE DOMAIN public.account_type AS character varying(40);


ALTER DOMAIN public.account_type OWNER TO prisma;

--
-- Name: anc_table_account_type; Type: TYPE; Schema: public; Owner: prisma
--

CREATE TYPE public.anc_table_account_type AS (
	po_id bigint,
	pa_id bigint,
	po_name text,
	po_description text,
	sum_amount numeric(25,4),
	card_account text,
	name text
);


ALTER TYPE public.anc_table_account_type OWNER TO prisma;

--
-- Name: anc_table_card_type; Type: TYPE; Schema: public; Owner: prisma
--

CREATE TYPE public.anc_table_card_type AS (
	po_id bigint,
	pa_id bigint,
	po_name text,
	po_description text,
	sum_amount numeric(25,4),
	f_id bigint,
	card_account text,
	name text
);


ALTER TYPE public.anc_table_card_type OWNER TO prisma;

--
-- Name: menu_tree; Type: TYPE; Schema: public; Owner: prisma
--

CREATE TYPE public.menu_tree AS (
	code text,
	description text
);


ALTER TYPE public.menu_tree OWNER TO prisma;

--
-- Name: account_add(public.account_type, character varying); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.account_add(p_id public.account_type, p_name character varying) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	nParent tmp_pcmn.pcm_val_parent%type;
	nCount integer;
	sReturn text;
begin
	sReturn:= format_account(p_id);
	select count(*) into nCount from tmp_pcmn where pcm_val=sReturn;
	if nCount = 0 then
		nParent=account_parent(p_id);
		insert into tmp_pcmn (pcm_val,pcm_lib,pcm_val_parent)
			values (p_id, p_name,nParent) returning pcm_val into sReturn;
	end if;
return sReturn;
end ;
$$;


ALTER FUNCTION comptaproc.account_add(p_id public.account_type, p_name character varying) OWNER TO prisma;

--
-- Name: account_alphanum(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.account_alphanum() RETURNS boolean
    LANGUAGE plpgsql
    AS $$
declare
	l_auto bool;
begin
	l_auto := true;
	select pr_value into l_auto from parameter where pr_id='MY_ALPHANUM';
	if l_auto = 'N' or l_auto is null then
		l_auto:=false;
	end if;
	return l_auto;
end;
$$;


ALTER FUNCTION comptaproc.account_alphanum() OWNER TO prisma;

--
-- Name: account_auto(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.account_auto(p_fd_id integer) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
declare
	l_auto bool;
begin

	select fd_create_account into l_auto from fiche_def where fd_id=p_fd_id;
	if l_auto is null then
		l_auto:=false;
	end if;
	return l_auto;
end;
$$;


ALTER FUNCTION comptaproc.account_auto(p_fd_id integer) OWNER TO prisma;

--
-- Name: account_compute(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.account_compute(p_f_id integer) RETURNS public.account_type
    LANGUAGE plpgsql
    AS $$
declare
	class_base fiche_def.fd_class_base%type;
	maxcode numeric;
	sResult text;
	bAlphanum bool;
	sName text;
begin
	select fd_class_base into class_base
	from
		fiche_def join fiche using (fd_id)
	where
		f_id=p_f_id;
	raise notice 'account_compute class base %',class_base;
	bAlphanum := account_alphanum();
	if bAlphanum = false  then
	raise info 'account_compute : Alphanum is false';
		select count (pcm_val) into maxcode from tmp_pcmn where pcm_val_parent = class_base;
		if maxcode = 0	then
			maxcode:=class_base::numeric;
		else
			select max (pcm_val) into maxcode from tmp_pcmn where pcm_val_parent = class_base;
			maxcode:=maxcode::numeric;
		end if;
		if maxcode::text = class_base then
			maxcode:=class_base::numeric*1000;
		end if;
		maxcode:=maxcode+1;
		raise notice 'account_compute Max code %',maxcode;
		sResult:=maxcode::account_type;
	else
	raise info 'account_compute : Alphanum is true';
		-- if alphanum, use name
		select ad_value into sName from fiche_detail where f_id=p_f_id and ad_id=1;
		raise info 'name is %',sName;
		if sName is null then
			raise exception 'Cannot compute an accounting without the name of the card for %',p_f_id;
		end if;
		sResult := class_base||sName;
		sResult := substr(sResult,1,40);
		raise info 'Result is %',sResult;
	end if;
	return sResult::account_type;
end;
$$;


ALTER FUNCTION comptaproc.account_compute(p_f_id integer) OWNER TO prisma;

--
-- Name: account_insert(integer, text); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.account_insert(p_f_id integer, p_account text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	nParent tmp_pcmn.pcm_val_parent%type;
	sName varchar;
	sNew tmp_pcmn.pcm_val%type;
	bAuto bool;
	nFd_id integer;
	sClass_Base fiche_def.fd_class_base%TYPE;
	nCount integer;
	first text;
	second text;
	s_account text;
begin

	if p_account is not null and length(trim(p_account)) != 0 then
	-- if there is coma in p_account, treat normally
		if position (',' in p_account) = 0 then
			raise info 'p_account is not empty';
				s_account := substr( p_account,1 , 40);
				select count(*)  into nCount from tmp_pcmn where pcm_val=s_account::account_type;
				raise notice 'found in tmp_pcm %',nCount;
				if nCount !=0  then
					raise info 'this account exists in tmp_pcmn ';
					perform attribut_insert(p_f_id,5,s_account);
				   else
				       -- account doesn't exist, create it
					select ad_value into sName from
						fiche_detail
					where
					ad_id=1 and f_id=p_f_id;

					nParent:=account_parent(s_account::account_type);
					insert into tmp_pcmn(pcm_val,pcm_lib,pcm_val_parent) values (s_account::account_type,sName,nParent);
					perform attribut_insert(p_f_id,5,s_account);

				end if;
		else
		raise info 'presence of a comma';
		-- there is 2 accounts separated by a comma
		first := split_part(p_account,',',1);
		second := split_part(p_account,',',2);
		-- check there is no other coma
		raise info 'first value % second value %', first, second;

		if  position (',' in first) != 0 or position (',' in second) != 0 then
			raise exception 'Too many comas, invalid account';
		end if;
		perform attribut_insert(p_f_id,5,p_account);
		end if;
	else
	raise info 'A000 : p_account is  empty';
		select fd_id into nFd_id from fiche where f_id=p_f_id;
		bAuto:= account_auto(nFd_id);

		select fd_class_base into sClass_base from fiche_def where fd_id=nFd_id;
raise info 'sClass_Base : %',sClass_base;
		if bAuto = true and sClass_base similar to '[[:digit:]]*'  then
			raise info 'account generated automatically';
			sNew:=account_compute(p_f_id);
			raise info 'sNew %', sNew;
			select ad_value into sName from
				fiche_detail
			where
				ad_id=1 and f_id=p_f_id;
			nParent:=account_parent(sNew);
			sNew := account_add  (sNew,sName);
			perform attribut_insert(p_f_id,5,sNew);

		else
		-- if there is an account_base then it is the default
		      select fd_class_base::account_type into sNew from fiche_def join fiche using (fd_id) where f_id=p_f_id;
			if sNew is null or length(trim(sNew)) = 0 then
				raise notice 'count is null';
				 perform attribut_insert(p_f_id,5,null);
			else
				 perform attribut_insert(p_f_id,5,sNew);
			end if;
		end if;
	end if;

return 0;
end;
$$;


ALTER FUNCTION comptaproc.account_insert(p_f_id integer, p_account text) OWNER TO prisma;

--
-- Name: account_parent(public.account_type); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.account_parent(p_account public.account_type) RETURNS public.account_type
    LANGUAGE plpgsql
    AS $$
declare
	sSubParent tmp_pcmn.pcm_val_parent%type;
	sResult tmp_pcmn.pcm_val_parent%type;
	nCount integer;
begin
	if p_account is NULL then
		return NULL;
	end if;
	sSubParent:=p_account;
	while true loop
		select count(*) into nCount
		from tmp_pcmn
		where
		pcm_val = sSubParent;
		if nCount != 0 then
			sResult:= sSubParent;
			exit;
		end if;
		sSubParent:= substr(sSubParent,1,length(sSubParent)-1);
		if length(sSubParent) <= 0 then
			raise exception 'Impossible de trouver le compte parent pour %',p_account;
		end if;
		raise notice 'sSubParent % % ',sSubParent,length(sSubParent);
	end loop;
	raise notice 'account_parent : Parent is %',sSubParent;
	return sSubParent;
end;
$$;


ALTER FUNCTION comptaproc.account_parent(p_account public.account_type) OWNER TO prisma;

--
-- Name: account_update(integer, public.account_type); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.account_update(p_f_id integer, p_account public.account_type) RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare
	nMax fiche.f_id%type;
	nCount integer;
	nParent tmp_pcmn.pcm_val_parent%type;
	sName varchar;
	first text;
	second text;
begin

	if length(trim(p_account)) != 0 then
		-- 2 accounts in card separated by comma
		if position (',' in p_account) = 0 then
			select count(*) into nCount from tmp_pcmn where pcm_val=p_account;
			if nCount = 0 then
			select ad_value into sName from
				fiche_detail
				where
				ad_id=1 and f_id=p_f_id;
			nParent:=account_parent(p_account);
			insert into tmp_pcmn(pcm_val,pcm_lib,pcm_val_parent) values (p_account,sName,nParent);
		end if;
		else
		raise info 'presence of a comma';
		-- there is 2 accounts separated by a comma
		first := split_part(p_account,',',1);
		second := split_part(p_account,',',2);
		-- check there is no other coma
		raise info 'first value % second value %', first, second;

		if  position (',' in first) != 0 or position (',' in second) != 0 then
			raise exception 'Too many comas, invalid account';
		end if;
		-- check that both account are in PCMN

		end if;
	else
		-- account is null
		update fiche_detail set ad_value=null where f_id=p_f_id and ad_id=5 ;
	end if;

	update fiche_detail set ad_value=p_account where f_id=p_f_id and ad_id=5 ;

return 0;
end;
$$;


ALTER FUNCTION comptaproc.account_update(p_f_id integer, p_account public.account_type) OWNER TO prisma;

--
-- Name: action_gestion_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.action_gestion_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
NEW.ag_title := substr(trim(NEW.ag_title),1,70);
NEW.ag_hour := substr(trim(NEW.ag_hour),1,5);
NEW.ag_owner := lower(NEW.ag_owner);
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.action_gestion_ins_upd() OWNER TO prisma;

--
-- Name: action_gestion_related_ins_up(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.action_gestion_related_ins_up() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
	nTmp bigint;
begin

if NEW.aga_least > NEW.aga_greatest then
	nTmp := NEW.aga_least;
	NEW.aga_least := NEW.aga_greatest;
	NEW.aga_greatest := nTmp;
end if;

if NEW.aga_least = NEW.aga_greatest then
	return NULL;
end if;

return NEW;

end;
$$;


ALTER FUNCTION comptaproc.action_gestion_related_ins_up() OWNER TO prisma;

--
-- Name: anc_correct_tvand(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.anc_correct_tvand() RETURNS void
    LANGUAGE plpgsql
    AS $$ 
declare
        n_count numeric;
        i record;
        newrow_tva record;
begin
         for i in select * from operation_analytique where oa_jrnx_id_source is not null loop
         -- Get all the anc accounting from the base operation and insert the missing record for VAT 
                for newrow_tva in select *  from operation_analytique where j_id=i.oa_jrnx_id_source and po_id <> i.po_id loop
                    
                        -- check if the record is yet present
                        select count(*) into n_count from operation_analytique where  po_id=newrow_tva.po_id and oa_jrnx_id_source=i.oa_jrnx_id_source;

                        if n_count = 0 then
                          raise info 'insert operation analytique po_id = % oa_group = % ',i.po_id, i.oa_group;
                          insert into operation_analytique 
                          (po_id,oa_amount,oa_description,oa_debit,j_id,oa_group,oa_date,oa_jrnx_id_source,oa_positive)
                          values (newrow_tva.po_id,i.oa_amount,i.oa_description,i.oa_debit,i.j_id,i.oa_group,i.oa_date,i.oa_jrnx_id_source,i.oa_positive);
                        end if;
         
                end loop;

         
         end loop;
end;
 $$;


ALTER FUNCTION comptaproc.anc_correct_tvand() OWNER TO prisma;

--
-- Name: attribut_insert(integer, integer, character varying); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.attribut_insert(p_f_id integer, p_ad_id integer, p_value character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
	insert into fiche_detail (f_id,ad_id, ad_value) values (p_f_id,p_ad_id,p_value);
	
return;
end;
$$;


ALTER FUNCTION comptaproc.attribut_insert(p_f_id integer, p_ad_id integer, p_value character varying) OWNER TO prisma;

--
-- Name: attribute_correct_order(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.attribute_correct_order() RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
    crs_correct cursor for select A.jnt_id,A.jnt_order from jnt_fic_attr as A join jnt_fic_attr as B using (fd_id) where A.jnt_order=B.jnt_order and A.jnt_id > B.jnt_id;
    rec record;
begin
	open crs_correct;
	loop
	fetch crs_correct into rec;
	if NOT FOUND then
		close crs_correct;
		return;
	end if;
	update jnt_fic_attr set jnt_order=jnt_order + 1 where jnt_id = rec.jnt_id;
	end loop;
	close crs_correct;
	perform attribute_correct_order ();
end;
$$;


ALTER FUNCTION comptaproc.attribute_correct_order() OWNER TO prisma;

--
-- Name: card_after_delete(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.card_after_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin

	delete from action_gestion where f_id_dest = OLD.f_id;
	return OLD;

end;
$$;


ALTER FUNCTION comptaproc.card_after_delete() OWNER TO prisma;

--
-- Name: card_class_base(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.card_class_base(p_f_id integer) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	n_poste fiche_def.fd_class_base%type;
begin

	select fd_class_base into n_poste from fiche_def join fiche using
(fd_id)
	where f_id=p_f_id;
	if not FOUND then
		raise exception 'Invalid fiche card_class_base(%)',p_f_id;
	end if;
return n_poste;
end;
$$;


ALTER FUNCTION comptaproc.card_class_base(p_f_id integer) OWNER TO prisma;

--
-- Name: category_card_before_delete(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.category_card_before_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin
    if OLD.fd_id > 499000 then
        return null;
    end if;
    return OLD;

end;
$$;


ALTER FUNCTION comptaproc.category_card_before_delete() OWNER TO prisma;

--
-- Name: check_balance(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.check_balance(p_grpt integer) RETURNS numeric
    LANGUAGE plpgsql
    AS $$
declare
	amount_jrnx_debit numeric;
	amount_jrnx_credit numeric;
	amount_jrn numeric;
begin
	select coalesce(sum (j_montant),0) into amount_jrnx_credit
	from jrnx
		where
	j_grpt=p_grpt
	and j_debit=false;

	select coalesce(sum (j_montant),0) into amount_jrnx_debit
	from jrnx
		where
	j_grpt=p_grpt
	and j_debit=true;

	select coalesce(jr_montant,0) into amount_jrn
	from jrn
	where
	jr_grpt_id=p_grpt;

	if ( amount_jrnx_debit != amount_jrnx_credit )
		then
		return abs(amount_jrnx_debit-amount_jrnx_credit);
		end if;
	if ( amount_jrn != amount_jrnx_credit)
		then
		return -1*abs(amount_jrn - amount_jrnx_credit);
		end if;
	return 0;
end;
$$;


ALTER FUNCTION comptaproc.check_balance(p_grpt integer) OWNER TO prisma;

--
-- Name: check_periode(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.check_periode() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare 
  nPeriode int;
begin
if periode_exist(to_char(NEW.p_start,'DD.MM.YYYY'),NEW.p_id) <> -1 then
       nPeriode:=periode_exist(to_char(NEW.p_start,'DD.MM.YYYY'),NEW.p_id) ;
        raise info 'Overlap periode start % periode %',NEW.p_start,nPeriode;
	return null;
end if;

if periode_exist(to_char(NEW.p_end,'DD.MM.YYYY'),NEW.p_id) <> -1 then
	nPeriode:=periode_exist(to_char(NEW.p_start,'DD.MM.YYYY'),NEW.p_id) ;
        raise info 'Overlap periode end % periode %',NEW.p_end,nPeriode;
	return null;
end if;
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.check_periode() OWNER TO prisma;

--
-- Name: correct_sequence(text, text, text); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.correct_sequence(p_sequence text, p_col text, p_table text) RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare
last_sequence int8;
max_sequence int8;
n integer;
begin
	select count(*) into n from pg_class where relkind='S' and relname=lower(p_sequence);
	if n = 0 then
		raise exception  ' Unknow sequence  % ',p_sequence;
	end if;
	select count(*) into n from pg_class where relkind='r' and relname=lower(p_table);
	if n = 0 then
		raise exception ' Unknow table  % ',p_table;
	end if;

	execute 'select last_value   from '||p_sequence into last_sequence;
	raise notice 'Last value of the sequence is %', last_sequence;

	execute 'select max('||p_col||')  from '||p_table into max_sequence;
	if  max_sequence is null then
		max_sequence := 0;
	end if;
	raise notice 'Max value of the sequence is %', max_sequence;
	max_sequence:= max_sequence +1;	
	execute 'alter sequence '||p_sequence||' restart with '||max_sequence;
return 0;

end;
$$;


ALTER FUNCTION comptaproc.correct_sequence(p_sequence text, p_col text, p_table text) OWNER TO prisma;

--
-- Name: FUNCTION correct_sequence(p_sequence text, p_col text, p_table text); Type: COMMENT; Schema: comptaproc; Owner: prisma
--

COMMENT ON FUNCTION comptaproc.correct_sequence(p_sequence text, p_col text, p_table text) IS ' Often the primary key is a sequence number and sometimes the value of the sequence is not synchronized with the primary key ( p_sequence : sequence name, p_col : col of the pk,p_table : concerned table';


--
-- Name: create_missing_sequence(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.create_missing_sequence() RETURNS integer
    LANGUAGE plpgsql
    AS $$
declare
p_sequence text;
nSeq integer;
c1 cursor for select jrn_def_id from jrn_def;
begin
	open c1;
	loop
	   fetch c1 into nSeq;
	   if not FOUND THEN
	   	close c1;
	   	return 0;
	   end if;
	   p_sequence:='s_jrn_pj'||nSeq::text;
	execute 'create sequence '||p_sequence;
	end loop;
close c1;
return 0;

end;
$$;


ALTER FUNCTION comptaproc.create_missing_sequence() OWNER TO prisma;

--
-- Name: drop_index(character varying); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.drop_index(p_constraint character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare 
	nCount integer;
begin
	select count(*) into nCount from pg_indexes where indexname=p_constraint;
	if nCount = 1 then
	execute 'drop index '||p_constraint ;
	end if;
end;
$$;


ALTER FUNCTION comptaproc.drop_index(p_constraint character varying) OWNER TO prisma;

--
-- Name: drop_it(character varying); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.drop_it(p_constraint character varying) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare 
	nCount integer;
begin
	select count(*) into nCount from pg_constraint where conname=p_constraint;
	if nCount = 1 then
	execute 'alter table parm_periode drop constraint '||p_constraint ;
	end if;
end;
$$;


ALTER FUNCTION comptaproc.drop_it(p_constraint character varying) OWNER TO prisma;

--
-- Name: extension_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.extension_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
 sCode text;
 sFile text;
begin
sCode:=trim(upper(NEW.ex_code));
sCode:=replace(sCode,' ','_');
sCode:=substr(sCode,1,15);
sCode=upper(sCode);
NEW.ex_code:=sCode;
sFile:=NEW.ex_file;
sFile:=replace(sFile,';','_');
sFile:=replace(sFile,'<','_');
sFile:=replace(sFile,'>','_');
sFile:=replace(sFile,'..','');
sFile:=replace(sFile,'&','');
sFile:=replace(sFile,'|','');



return NEW;

end;

$$;


ALTER FUNCTION comptaproc.extension_ins_upd() OWNER TO prisma;

--
-- Name: fiche_account_parent(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.fiche_account_parent(p_f_id integer) RETURNS public.account_type
    LANGUAGE plpgsql
    AS $$
declare
ret tmp_pcmn.pcm_val%TYPE;
begin
	select fd_class_base into ret from fiche_def join fiche using (fd_id) where f_id=p_f_id;
	if not FOUND then
		raise exception '% N''existe pas',p_f_id;
	end if;
	return ret;
end;
$$;


ALTER FUNCTION comptaproc.fiche_account_parent(p_f_id integer) OWNER TO prisma;

--
-- Name: fiche_attribut_synchro(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.fiche_attribut_synchro(p_fd_id integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
	-- this sql gives the f_id and the missing attribute (ad_id)
	list_missing cursor for select f_id,fd_id,ad_id,jnt_order from jnt_fic_attr join fiche as A using (fd_id) where fd_id=p_fd_id and ad_id not in (select ad_id from fiche join fiche_detail using (f_id) where fd_id=jnt_fic_attr.fd_id and A.f_id=f_id);
	rec record;
begin
	open list_missing;
	loop
	
	fetch list_missing into rec;
	IF NOT FOUND then
		exit;
	end if;
	
	-- now we insert into attr_value
	insert into fiche_detail (f_id,ad_id,ad_value) values (rec.f_id,rec.ad_id,null);
	end loop;
	close list_missing;
end; 
$$;


ALTER FUNCTION comptaproc.fiche_attribut_synchro(p_fd_id integer) OWNER TO prisma;

--
-- Name: fiche_def_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.fiche_def_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin

if position (',' in NEW.fd_class_base) != 0 then
   NEW.fd_create_account='f';

end if;
return NEW;
end;$$;


ALTER FUNCTION comptaproc.fiche_def_ins_upd() OWNER TO prisma;

--
-- Name: fiche_detail_qcode_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.fiche_detail_qcode_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
	i record;
begin
	if NEW.ad_id=23 and NEW.ad_value != OLD.ad_value then
		RAISE NOTICE 'new qcode [%] old qcode [%]',NEW.ad_value,OLD.ad_value;
		update jrnx set j_qcode=NEW.ad_value where j_qcode = OLD.ad_value;    
	        update op_predef_detail set opd_poste=NEW.ad_value where opd_poste=OLD.ad_value;
	        raise notice 'TRG fiche_detail update op_predef_detail set opd_poste=% where opd_poste=%;',NEW.ad_value,OLD.ad_value;
		for i in select ad_id from attr_def where ad_type = 'card' or ad_id=25 loop
			update fiche_detail set ad_value=NEW.ad_value where ad_value=OLD.ad_value and ad_id=i.ad_id;
			RAISE NOTICE 'change for ad_id [%] ',i.ad_id;
			if i.ad_id=19 then
				RAISE NOTICE 'Change in stock_goods OLD[%] by NEW[%]',OLD.ad_value,NEW.ad_value;
				update stock_goods set sg_code=NEW.ad_value where sg_code=OLD.ad_value;
			end if;

		end loop;
	end if;
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.fiche_detail_qcode_upd() OWNER TO prisma;

--
-- Name: fill_quant_fin(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.fill_quant_fin() RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
   sBank text;
   sCassa text;
   sCustomer text;
   sSupplier text;
   rec record;
   recBank record;
   recSupp_Cust record;
   nCount integer;
   nAmount numeric;
   nBank integer;
   nOther integer;
   nSupp_Cust integer;
begin
	select p_value into sBank from parm_code where p_code='BANQUE';
	select p_value into sCassa from parm_code where p_code='CAISSE';
	select p_value into sSupplier from parm_code where p_code='SUPPLIER';
	select p_value into sCustomer from parm_code where p_code='CUSTOMER';
	
	for rec in select jr_id,jr_grpt_id from jrn 
	    where jr_def_id in (select jrn_def_id from jrn_def where jrn_def_type='FIN')
		and jr_id not in (select jr_id from quant_fin)
	loop
		-- there are only 2 lines for bank operations
		-- first debit
		select count(j_id) into nCount from jrnx where j_grpt=rec.jr_grpt_id;
		if nCount > 2 then 
			raise notice 'Trop de valeur pour jr_grpt_id % count %',rec.jr_grpt_id,nCount;
			return;
		end if;
		nBank := 0; nOther:=0;
		for recBank in select  j_id, j_montant,j_debit,j_qcode,j_poste from jrnx where j_grpt=rec.jr_grpt_id
		loop
		if recBank.j_poste like sBank||'%' then
			-- retrieve f_id for bank
			select f_id into nBank from vw_poste_qcode where j_qcode=recBank.j_qcode;
			if recBank.j_debit = false then
				nAmount=recBank.j_montant*(-1);
			else 
				nAmount=recBank.j_montant;
			end if;
		else
			select f_id into nOther from vw_poste_qcode where j_qcode=recBank.j_qcode;
		end if;
		end loop;
		if nBank != 0 and nOther != 0 then
			insert into quant_fin (jr_id,qf_bank,qf_other,qf_amount) values (rec.jr_id,nBank,nOther,nAmount);
		end if;
	end loop;
	for rec in select jr_id,jr_grpt_id from jrn 
	    where jr_def_id in (select jrn_def_id from jrn_def where jrn_def_type='FIN') and jr_id not in (select jr_id from quant_fin)
	loop
		-- there are only 2 lines for bank operations
		-- first debit
		select count(j_id) into nCount from jrnx where j_grpt=rec.jr_grpt_id;
		if nCount > 2 then 
			raise notice 'Trop de valeur pour jr_grpt_id % count %',rec.jr_grpt_id,nCount;
			return;
		end if;
		nBank := 0; nOther:=0;
		for recBank in select  j_id, j_montant,j_debit,j_qcode,j_poste from jrnx where j_grpt=rec.jr_grpt_id
		loop
		if recBank.j_poste like sCassa||'%' then
			-- retrieve f_id for bank
			select f_id into nBank from vw_poste_qcode where j_qcode=recBank.j_qcode;
			if recBank.j_debit = false then
				nAmount=recBank.j_montant*(-1);
			else 
				nAmount=recBank.j_montant;
			end if;
		else
			select f_id into nOther from vw_poste_qcode where j_qcode=recBank.j_qcode;
		end if;
		end loop;
		if nBank != 0 and nOther != 0 then
			insert into quant_fin (jr_id,qf_bank,qf_other,qf_amount) values (rec.jr_id,nBank,nOther,nAmount);
		end if;
	end loop;

	for rec in select jr_id,jr_grpt_id from jrn 
	    where jr_def_id in (select jrn_def_id from jrn_def where jrn_def_type='FIN') and jr_id not in (select jr_id from quant_fin)
	loop
		-- there are only 2 lines for bank operations
		-- first debit
		select count(j_id) into nCount from jrnx where j_grpt=rec.jr_grpt_id;
		if nCount > 2 then 
			raise notice 'Trop de valeur pour jr_grpt_id % count %',rec.jr_grpt_id,nCount;
			return;
		end if;
		nSupp_Cust := 0; nOther:=0;
		for recSupp_Cust in select  j_id, j_montant,j_debit,j_qcode,j_poste from jrnx where j_grpt=rec.jr_grpt_id
		loop
		if recSupp_Cust.j_poste like sSupplier||'%'  then
			-- retrieve f_id for bank
			select f_id into nSupp_Cust from vw_poste_qcode where j_qcode=recSupp_Cust.j_qcode;
			if recSupp_Cust.j_debit = true then
				nAmount=recSupp_Cust.j_montant*(-1);
			else 
				nAmount=recSupp_Cust.j_montant;
			end if;
		else if  recSupp_Cust.j_poste like sCustomer||'%' then
			select f_id into nSupp_Cust from vw_poste_qcode where j_qcode=recSupp_Cust.j_qcode;
			if recSupp_Cust.j_debit = false then
				nAmount=recSupp_Cust.j_montant*(-1);
			else 
				nAmount=recSupp_Cust.j_montant;
			end if;
			else
			select f_id into nOther from vw_poste_qcode where j_qcode=recSupp_Cust.j_qcode;
			
			end if;
		end if;
		end loop;
		if nSupp_Cust != 0 and nOther != 0 then
			insert into quant_fin (jr_id,qf_bank,qf_other,qf_amount) values (rec.jr_id,nOther,nSupp_Cust,nAmount);
		end if;
	end loop;
	for rec in select jr_id,jr_grpt_id from jrn 
	    where jr_def_id in (select jrn_def_id from jrn_def where jrn_def_type='FIN') and jr_id not in (select jr_id from quant_fin)
	loop
		-- there are only 2 lines for bank operations
		-- first debit
		select count(j_id) into nCount from jrnx where j_grpt=rec.jr_grpt_id;
		if nCount > 2 then 
			raise notice 'Trop de valeur pour jr_grpt_id % count %',rec.jr_grpt_id,nCount;
			return;
		end if;
		nSupp_Cust := 0; nOther:=0;
		for recSupp_Cust in select  j_id, j_montant,j_debit,j_qcode,j_poste from jrnx where j_grpt=rec.jr_grpt_id
		loop
		if recSupp_Cust.j_poste like '441%'  then
			-- retrieve f_id for bank
			select f_id into nSupp_Cust from vw_poste_qcode where j_qcode=recSupp_Cust.j_qcode;
			if recSupp_Cust.j_debit = false then
				nAmount=recSupp_Cust.j_montant*(-1);
			else 
				nAmount=recSupp_Cust.j_montant;
			end if;
			else
			select f_id into nOther from vw_poste_qcode where j_qcode=recSupp_Cust.j_qcode;
			
			
		end if;
		end loop;
		if nSupp_Cust != 0 and nOther != 0 then
			insert into quant_fin (jr_id,qf_bank,qf_other,qf_amount) values (rec.jr_id,nOther,nSupp_Cust,nAmount);
		end if;
	end loop;
	return;
end;
$$;


ALTER FUNCTION comptaproc.fill_quant_fin() OWNER TO prisma;

--
-- Name: find_pcm_type(public.account_type); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.find_pcm_type(pp_value public.account_type) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	str_type parm_poste.p_type%TYPE;
	str_value parm_poste.p_type%TYPE;
	nLength integer;
begin
	str_value:=pp_value;
	nLength:=length(str_value::text);
	while nLength > 0 loop
		select p_type into str_type from parm_poste where p_value=str_value;
		if FOUND then
			return str_type;
		end if;
		nLength:=nLength-1;
		str_value:=substring(str_value::text from 1 for nLength)::account_type;
	end loop;
return 'CON';
end;
$$;


ALTER FUNCTION comptaproc.find_pcm_type(pp_value public.account_type) OWNER TO prisma;

--
-- Name: find_periode(text); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.find_periode(p_date text) RETURNS integer
    LANGUAGE plpgsql
    AS $$

declare n_p_id int4;
begin

select p_id into n_p_id
	from parm_periode
	where
		p_start <= to_date(p_date,'DD.MM.YYYY')
		and
		p_end >= to_date(p_date,'DD.MM.YYYY');

if NOT FOUND then
	return -1;
end if;

return n_p_id;

end;$$;


ALTER FUNCTION comptaproc.find_periode(p_date text) OWNER TO prisma;

--
-- Name: format_account(public.account_type); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.format_account(p_account public.account_type) RETURNS public.account_type
    LANGUAGE plpgsql
    AS $_$

declare

sResult account_type;

begin
sResult := lower(p_account);

sResult := translate(sResult,E'éèêëàâäïîüûùöôç','eeeeaaaiiuuuooc');
sResult := translate(sResult,E' $€µ£%.+-/\\!(){}(),;_&|"#''^<>*','');

return upper(sResult);

end;
$_$;


ALTER FUNCTION comptaproc.format_account(p_account public.account_type) OWNER TO prisma;

--
-- Name: FUNCTION format_account(p_account public.account_type); Type: COMMENT; Schema: comptaproc; Owner: prisma
--

COMMENT ON FUNCTION comptaproc.format_account(p_account public.account_type) IS 'format the accounting :
- upper case
- remove space and special char.
';


--
-- Name: get_letter_jnt(bigint); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.get_letter_jnt(a bigint) RETURNS bigint
    LANGUAGE plpgsql
    AS $$
declare
 nResult bigint;
begin
   select jl_id into nResult from jnt_letter join letter_deb using (jl_id) where j_id = a;
   if NOT FOUND then
	select jl_id into nResult from jnt_letter join letter_cred using (jl_id) where j_id = a;
	if NOT found then
		return null;
	end if;
    end if;
return nResult;
end;
$$;


ALTER FUNCTION comptaproc.get_letter_jnt(a bigint) OWNER TO prisma;

--
-- Name: get_menu_dependency(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.get_menu_dependency(profile_menu_id integer) RETURNS SETOF integer
    LANGUAGE plpgsql
    AS $$
declare
	i int;
	x int;
	e int;
begin
	for x in select pm_id,me_code
			from profile_menu
			where me_code_dep in (select me_code from profile_menu where pm_id=profile_menu_id)
			and p_id = (select p_id from profile_menu where pm_id=profile_menu_id)
	loop
		return next x;

	for e in select *  from comptaproc.get_menu_dependency(x)
		loop
			return next e;
		end loop;

	end loop;
	return;
end;
$$;


ALTER FUNCTION comptaproc.get_menu_dependency(profile_menu_id integer) OWNER TO prisma;

--
-- Name: get_menu_tree(text, integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.get_menu_tree(p_code text, p_profile integer) RETURNS SETOF public.menu_tree
    LANGUAGE plpgsql
    AS $$
declare
	i menu_tree;
	e menu_tree;
	a text;
	x v_all_menu%ROWTYPE;
begin
	for x in select *  from v_all_menu where me_code_dep=p_code::text and p_id=p_profile
	loop
		if x.me_code_dep is not null then
			i.code := x.me_code_dep||'/'||x.me_code;
		else
			i.code := x.me_code;
		end if;

		i.description := x.me_description;

		return next i;

	for e in select *  from get_menu_tree(x.me_code,p_profile)
		loop
			e.code:=x.me_code_dep||'/'||e.code;
			return next e;
		end loop;

	end loop;
	return;
end;
$$;


ALTER FUNCTION comptaproc.get_menu_tree(p_code text, p_profile integer) OWNER TO prisma;

--
-- Name: get_pcm_tree(public.account_type); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.get_pcm_tree(source public.account_type) RETURNS SETOF public.account_type
    LANGUAGE plpgsql
    AS $$
declare
	i account_type;
	e account_type;
begin
	for i in select pcm_val from tmp_pcmn where pcm_val_parent=source
	loop
		return next i;
		for e in select get_pcm_tree from get_pcm_tree(i)
		loop
			return next e;
		end loop;

	end loop;
	return;
end;
$$;


ALTER FUNCTION comptaproc.get_pcm_tree(source public.account_type) OWNER TO prisma;

--
-- Name: get_profile_menu(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.get_profile_menu(p_profile integer) RETURNS SETOF public.menu_tree
    LANGUAGE plpgsql
    AS $$
declare
	a menu_tree;
	e menu_tree;
begin
for a in select me_code,me_description from v_all_menu where p_id=p_profile
	and me_code_dep is null and me_type <> 'PR' and me_type <>'SP'
loop
		return next a;

		for e in select * from get_menu_tree(a.code,p_profile)
		loop
			return next e;
		end loop;

	end loop;
return;
end;
$$;


ALTER FUNCTION comptaproc.get_profile_menu(p_profile integer) OWNER TO prisma;

--
-- Name: group_analytic_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.group_analytic_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare 
name text;
begin
name:=upper(NEW.ga_id);
name:=trim(name);
name:=replace(name,' ','');
NEW.ga_id:=name;
return NEW;
end;$$;


ALTER FUNCTION comptaproc.group_analytic_ins_upd() OWNER TO prisma;

--
-- Name: group_analytique_del(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.group_analytique_del() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
begin
update poste_analytique set ga_id=null
where ga_id=OLD.ga_id;
return OLD;
end;$$;


ALTER FUNCTION comptaproc.group_analytique_del() OWNER TO prisma;

--
-- Name: html_quote(text); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.html_quote(p_string text) RETURNS text
    LANGUAGE plpgsql
    AS $$
declare
	r text;
begin
	r:=p_string;
	r:=replace(r,'<','&lt;');
	r:=replace(r,'>','&gt;');
	r:=replace(r,'''','&quot;');
	return r;
end;$$;


ALTER FUNCTION comptaproc.html_quote(p_string text) OWNER TO prisma;

--
-- Name: FUNCTION html_quote(p_string text); Type: COMMENT; Schema: comptaproc; Owner: prisma
--

COMMENT ON FUNCTION comptaproc.html_quote(p_string text) IS 'remove harmfull HTML char';


--
-- Name: info_def_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.info_def_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare 
	row_info_def info_def%ROWTYPE;
	str_type text;
begin
row_info_def:=NEW;
str_type:=upper(trim(NEW.id_type));
str_type:=replace(str_type,' ','');
str_type:=replace(str_type,',','');
str_type:=replace(str_type,';','');
if  length(str_type) =0 then
	raise exception 'id_type cannot be null';
end if;
row_info_def.id_type:=str_type;
return row_info_def;
end;
$$;


ALTER FUNCTION comptaproc.info_def_ins_upd() OWNER TO prisma;

--
-- Name: insert_jrnx(character varying, numeric, public.account_type, integer, integer, boolean, text, integer, text, text); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.insert_jrnx(p_date character varying, p_montant numeric, p_poste public.account_type, p_grpt integer, p_jrn_def integer, p_debit boolean, p_tech_user text, p_tech_per integer, p_qcode text, p_comment text) RETURNS void
    LANGUAGE plpgsql
    AS $$
begin
	insert into jrnx
	(
		j_date,
		j_montant,
		j_poste,
		j_grpt,
		j_jrn_def,
		j_debit,
		j_text,
		j_tech_user,
		j_tech_per,
		j_qcode
	) values
	(
		to_date(p_date,'DD.MM.YYYY'),
		p_montant,
		p_poste,
		p_grpt,
		p_jrn_def,
		p_debit,
		p_comment,
		p_tech_user,
		p_tech_per,
		p_qcode
	);

return;
end;
$$;


ALTER FUNCTION comptaproc.insert_jrnx(p_date character varying, p_montant numeric, p_poste public.account_type, p_grpt integer, p_jrn_def integer, p_debit boolean, p_tech_user text, p_tech_per integer, p_qcode text, p_comment text) OWNER TO prisma;

--
-- Name: insert_quant_purchase(text, numeric, character varying, numeric, numeric, numeric, integer, numeric, numeric, numeric, numeric, character varying, numeric, numeric); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.insert_quant_purchase(p_internal text, p_j_id numeric, p_fiche character varying, p_quant numeric, p_price numeric, p_vat numeric, p_vat_code integer, p_nd_amount numeric, p_nd_tva numeric, p_nd_tva_recup numeric, p_dep_priv numeric, p_client character varying, p_tva_sided numeric, p_price_unit numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
        fid_client integer;
        fid_good   integer;
        account_priv    account_type;
        fid_good_account account_type;
        n_dep_priv numeric;
begin
        n_dep_priv := 0;
        select p_value into account_priv from parm_code where p_code='DEP_PRIV';
        select f_id into fid_client from
                fiche_detail where ad_id=23 and ad_value=upper(trim(p_client));
        select f_id into fid_good from
                 fiche_detail where ad_id=23 and ad_value=upper(trim(p_fiche));
        select ad_value into fid_good_account from fiche_detail where ad_id=5 and f_id=fid_good;
        if strpos( fid_good_account , account_priv ) = 1 then
                n_dep_priv=p_price;
        end if; 
            
        insert into quant_purchase
                (qp_internal,
                j_id,
                qp_fiche,
                qp_quantite,
                qp_price,
                qp_vat,
                qp_vat_code,
                qp_nd_amount,
                qp_nd_tva,
                qp_nd_tva_recup,
                qp_supplier,
                qp_dep_priv,
                qp_vat_sided,
                qp_unit)
        values
                (p_internal,
                p_j_id,
                fid_good,
                p_quant,
                p_price,
                p_vat,
                p_vat_code,
                p_nd_amount,
                p_nd_tva,
                p_nd_tva_recup,
                fid_client,
                n_dep_priv,
                p_tva_sided,
                p_price_unit);
        return;
end;
 $$;


ALTER FUNCTION comptaproc.insert_quant_purchase(p_internal text, p_j_id numeric, p_fiche character varying, p_quant numeric, p_price numeric, p_vat numeric, p_vat_code integer, p_nd_amount numeric, p_nd_tva numeric, p_nd_tva_recup numeric, p_dep_priv numeric, p_client character varying, p_tva_sided numeric, p_price_unit numeric) OWNER TO prisma;

--
-- Name: insert_quant_sold(text, numeric, character varying, numeric, numeric, numeric, integer, character varying, numeric, numeric); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.insert_quant_sold(p_internal text, p_jid numeric, p_fiche character varying, p_quant numeric, p_price numeric, p_vat numeric, p_vat_code integer, p_client character varying, p_tva_sided numeric, p_price_unit numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
        fid_client integer;
        fid_good   integer;
begin

        select f_id into fid_client from
                fiche_detail where ad_id=23 and ad_value=upper(trim(p_client));
        select f_id into fid_good from
                fiche_detail where ad_id=23 and ad_value=upper(trim(p_fiche));
        insert into quant_sold
                (qs_internal,j_id,qs_fiche,qs_quantite,qs_price,qs_vat,qs_vat_code,qs_client,qs_valid,qs_vat_sided,qs_unit)
        values
                (p_internal,p_jid,fid_good,p_quant,p_price,p_vat,p_vat_code,fid_client,'Y',p_tva_sided,p_price_unit);
        return;
end;
 $$;


ALTER FUNCTION comptaproc.insert_quant_sold(p_internal text, p_jid numeric, p_fiche character varying, p_quant numeric, p_price numeric, p_vat numeric, p_vat_code integer, p_client character varying, p_tva_sided numeric, p_price_unit numeric) OWNER TO prisma;

--
-- Name: insert_quick_code(integer, text); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.insert_quick_code(nf_id integer, tav_text text) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
	declare
	ns integer;
	nExist integer;
	tText text;
	tBase text;
	tName text;
	nCount Integer;
	nDuplicate Integer;
	begin
	tText := lower(trim(tav_text));
	tText := replace(tText,' ','');
        tText:= translate(tText,E' $€µ£%+/\\!(){}(),;&|"#''^<>*','');
	tText := translate(tText,E'éèêëàâäïîüûùöôç','eeeeaaaiiuuuooc');
	nDuplicate := 0;
	tBase := tText;
	loop
		-- take the next sequence
		select nextval('s_jnt_fic_att_value') into ns;
		if length (tText) = 0 or tText is null then
			select count(*) into nCount from fiche_detail where f_id=nf_id and ad_id=1;
			if nCount = 0 then
				tText := 'FICHE'||ns::text;
			else
				select ad_value into tName from fiche_detail where f_id=nf_id and ad_id=1;
				
				tName := lower(trim(tName));
				tName := substr(tName,1,6);
				tName := replace(tName,' ','');
				tName:= translate(tName,E' $€µ£%+/\\!(){}(),;&|"#''^<>*','');
				tName := translate(tName,E'éèêëàâäïîüûùöôç','eeeeaaaiiuuuooc');
				tBase := tName;
				if nDuplicate = 0 then
					tText := tName;
				else
					tText := tName||nDuplicate::text;
				end if;
			end if;
		end if;
		-- av_text already used ?
		select count(*) into nExist
			from fiche_detail
		where
			ad_id=23 and  ad_value=upper(tText);

		if nExist = 0 then
			exit;
		end if;
		nDuplicate := nDuplicate + 1 ;
		tText := tBase || nDuplicate::text;
		
		if nDuplicate > 9999 then
			raise Exception 'too many duplicate % duplicate# %',tText,nDuplicate;
		end if;
	end loop;


	insert into fiche_detail(jft_id,f_id,ad_id,ad_value) values (ns,nf_id,23,upper(tText));
	return ns;
	end;
$_$;


ALTER FUNCTION comptaproc.insert_quick_code(nf_id integer, tav_text text) OWNER TO prisma;

--
-- Name: is_closed(integer, integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.is_closed(p_periode integer, p_jrn_def_id integer) RETURNS boolean
    LANGUAGE plpgsql
    AS $$
declare
bClosed bool;
str_status text;
begin
select p_closed into bClosed from parm_periode
	where p_id=p_periode;

if bClosed = true then
	return bClosed;
end if;

select status into str_status from jrn_periode
       where p_id =p_periode and jrn_def_id=p_jrn_def_id;

if str_status <> 'OP' then
   return bClosed;
end if;
return false;
end;
$$;


ALTER FUNCTION comptaproc.is_closed(p_periode integer, p_jrn_def_id integer) OWNER TO prisma;

--
-- Name: jnt_fic_attr_ins(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jnt_fic_attr_ins() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
   r_record jnt_fic_attr%ROWTYPE;
   i_max integer;
begin
r_record=NEW;
perform comptaproc.fiche_attribut_synchro(r_record.fd_id);
select coalesce(max(jnt_order),0) into i_max from jnt_fic_attr where fd_id=r_record.fd_id;
i_max := i_max + 10;
NEW.jnt_order=i_max;
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.jnt_fic_attr_ins() OWNER TO prisma;

--
-- Name: jrn_add_note(bigint, text); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jrn_add_note(p_jrid bigint, p_note text) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
	tmp bigint;
begin
	if length(trim(p_note)) = 0 then
	   delete from jrn_note where jr_id= p_jrid;
	   return;
	end if;
	
	select n_id into tmp from jrn_note where jr_id = p_jrid;
	
	if FOUND then
	   update jrn_note set n_text=trim(p_note) where jr_id = p_jrid;
	else 
	   insert into jrn_note (jr_id,n_text) values ( p_jrid, p_note);

	end if;
	
	return;
end;
$$;


ALTER FUNCTION comptaproc.jrn_add_note(p_jrid bigint, p_note text) OWNER TO prisma;

--
-- Name: jrn_check_periode(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jrn_check_periode() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
bClosed bool;
str_status text;
ljr_tech_per jrn.jr_tech_per%TYPE;
ljr_def_id jrn.jr_def_id%TYPE;
lreturn jrn%ROWTYPE;
begin
if TG_OP='UPDATE' then
	ljr_tech_per :=OLD.jr_tech_per ;
	NEW.jr_tech_per := comptaproc.find_periode(to_char(NEW.jr_date,'DD.MM.YYYY'));
	ljr_def_id   :=OLD.jr_def_id;
	lreturn      :=NEW;
	if NEW.jr_date = OLD.jr_date then
		return NEW;
	end if;
	if comptaproc.is_closed(NEW.jr_tech_per,NEW.jr_def_id) = true then
	      	raise exception 'Periode fermee';
	end if;
end if;

if TG_OP='INSERT' then
	NEW.jr_tech_per := comptaproc.find_periode(to_char(NEW.jr_date,'DD.MM.YYYY'));
	ljr_tech_per :=NEW.jr_tech_per ;
	ljr_def_id   :=NEW.jr_def_id;
	lreturn      :=NEW;
end if;

if TG_OP='DELETE' then
	ljr_tech_per :=OLD.jr_tech_per;
	ljr_def_id   :=OLD.jr_def_id;
	lreturn      :=OLD;
end if;

if comptaproc.is_closed (ljr_def_id,ljr_def_id) = true then
   	raise exception 'Periode fermee';
end if;

return lreturn;
end;$$;


ALTER FUNCTION comptaproc.jrn_check_periode() OWNER TO prisma;

--
-- Name: jrn_def_add(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jrn_def_add() RETURNS trigger
    LANGUAGE plpgsql
    AS $$begin
execute 'insert into jrn_periode(p_id,jrn_def_id,status) select p_id,'||NEW.jrn_def_id||',
	case when p_central=true then ''CE''
	      when p_closed=true then ''CL''
	else ''OP''
	end
from
parm_periode ';
return NEW;
end;$$;


ALTER FUNCTION comptaproc.jrn_def_add() OWNER TO prisma;

--
-- Name: jrn_def_delete(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jrn_def_delete() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare 
nb numeric;
begin
select count(*) into nb from jrn where jr_def_id=OLD.jrn_def_id;

if nb <> 0 then
	raise exception 'EFFACEMENT INTERDIT: JOURNAL UTILISE';
end if;
return OLD;
end;$$;


ALTER FUNCTION comptaproc.jrn_def_delete() OWNER TO prisma;

--
-- Name: jrn_del(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jrn_del() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
row jrn%ROWTYPE;
begin
row:=OLD;
insert into del_jrn ( jr_id,
       jr_def_id,
       jr_montant,
       jr_comment,
       jr_date,
       jr_grpt_id,
       jr_internal,
       jr_tech_date,
       jr_tech_per,
       jrn_ech,
       jr_ech,
       jr_rapt,
       jr_valid,
       jr_opid,
       jr_c_opid,
       jr_pj,
       jr_pj_name,
       jr_pj_type,
       jr_pj_number,
       del_jrn_date) 
       select  jr_id,
	      jr_def_id,
	      jr_montant,
	      jr_comment,
	      jr_date,
	      jr_grpt_id,
	      jr_internal,
	      jr_tech_date,
	      jr_tech_per,
	      jrn_ech,
	      jr_ech,
	      jr_rapt,
	      jr_valid,
	      jr_opid,
	      jr_c_opid,
	      jr_pj,
	      jr_pj_name,
	      jr_pj_type,
	      jr_pj_number
	      ,now() from jrn where jr_id=row.jr_id;
return row;
end;
$$;


ALTER FUNCTION comptaproc.jrn_del() OWNER TO prisma;

--
-- Name: jrnx_del(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jrnx_del() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
row jrnx%ROWTYPE;
begin
row:=OLD;


insert into del_jrnx(
            j_id, j_date, j_montant, j_poste, j_grpt, j_rapt, j_jrn_def, 
            j_debit, j_text, j_centralized, j_internal, j_tech_user, j_tech_date, 
            j_tech_per, j_qcode, f_id)  SELECT j_id, j_date, j_montant, j_poste, j_grpt, j_rapt, j_jrn_def, 
       j_debit, j_text, j_centralized, j_internal, j_tech_user, j_tech_date, 
       j_tech_per, j_qcode, f_id from jrnx where j_id=row.j_id;
return row;
end;
$$;


ALTER FUNCTION comptaproc.jrnx_del() OWNER TO prisma;

--
-- Name: jrnx_ins(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jrnx_ins() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
n_fid bigint;
nCount integer;
sQcode text;

begin
n_fid := NULL;
sQcode := NULL;

NEW.j_tech_per := comptaproc.find_periode(to_char(NEW.j_date,'DD.MM.YYYY'));
if NEW.j_tech_per = -1 then
        raise exception 'Période invalide';
end if;

if trim(coalesce(NEW.j_qcode,'')) = '' then
        -- how many card has this accounting
        select count(*) into nCount from fiche_detail where ad_id=5 and ad_value=NEW.j_poste;
        -- only one card is found , then we change the j_qcode by the card
        if nCount = 1 then
                select f_id into n_fid from fiche_detail where ad_id = 5 and ad_value=NEW.j_poste;
            if FOUND then
                select ad_value into sQcode  from fiche_detail where f_id=n_fid and ad_id = 23;
                NEW.f_id := n_fid;
                NEW.j_qcode = sQcode;
                raise info 'comptaproc.jrnx_ins : found card % qcode %',n_fid,sQcode;
            end if;
        end if;

end if;

NEW.j_qcode=trim(upper(coalesce(NEW.j_qcode,'')));

if length (coalesce(NEW.j_qcode,'')) = 0 then
    NEW.j_qcode=NULL;
    else
      select f_id into n_fid from fiche_detail  where ad_id=23 and ad_value=NEW.j_qcode;
      if NOT FOUND then
        raise exception 'La fiche dont le quick code est % n''existe pas',NEW.j_qcode;
    end if;
end if;

NEW.f_id:=n_fid;
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.jrnx_ins() OWNER TO prisma;

--
-- Name: jrnx_letter_del(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.jrnx_letter_del() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
row jrnx%ROWTYPE;
begin
row:=OLD;
delete from jnt_letter 
	where (jl_id in (select jl_id from letter_deb) and jl_id not in(select jl_id from letter_cred )) 
		or (jl_id not in (select jl_id from letter_deb  ) and jl_id  in(select jl_id from letter_cred ));
return row;
end;
$$;


ALTER FUNCTION comptaproc.jrnx_letter_del() OWNER TO prisma;

--
-- Name: menu_complete_dependency(numeric); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.menu_complete_dependency(n_profile numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare 
 n_count integer;
 csr_root_menu cursor (p_profile numeric) is select pm_id,
	me_code,
	me_code_dep 
	
	from profile_menu 
	where 
	me_code in 
		(select a.me_code_dep 
			from profile_menu as a 
			join profile_menu as b on (a.me_code=b.me_code and a.me_code_dep=b.me_code_dep and a.pm_id <> b.pm_id and a.p_id=b.p_id) 
			where a.p_id=n_profile) 
		and p_id=p_profile;

begin
	for duplicate in csr_root_menu(n_profile)
	loop
		raise notice 'found %',duplicate;
		update profile_menu set pm_id_dep  = duplicate.pm_id 
			where pm_id in (select a.pm_id
				from profile_menu as a 
				left join profile_menu as b on (a.me_code=b.me_code and a.me_code_dep=b.me_code_dep)
				where 
				a.p_id=n_profile
				and b.p_id=n_profile
				and a.pm_id_dep is null 
				and a.me_code_dep = duplicate.me_code
				and a.pm_id < b.pm_id);
	end loop;
	
	for duplicate in csr_root_menu(n_profile) 
	loop
		select count(*) into n_count from profile_menu where p_id=n_profile and pm_id_dep = duplicate.pm_id;
		raise notice '% use % times',duplicate,n_count;
		if n_count = 0 then
			raise notice ' Update with %',duplicate;
			update profile_menu set pm_id_dep = duplicate.pm_id where p_id = n_profile and me_code_dep = duplicate.me_code and pm_id_dep is null;
		end if;

	end loop;
	
end;
$$;


ALTER FUNCTION comptaproc.menu_complete_dependency(n_profile numeric) OWNER TO prisma;

--
-- Name: opd_limit_description(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.opd_limit_description() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
	declare
		sDescription text;
	begin
	sDescription := NEW.od_description;
	NEW.od_description := substr(sDescription,1,80);
	return NEW;
	end;
$$;


ALTER FUNCTION comptaproc.opd_limit_description() OWNER TO prisma;

--
-- Name: periode_exist(text, bigint); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.periode_exist(p_date text, p_periode_id bigint) RETURNS integer
    LANGUAGE plpgsql
    AS $$

declare n_p_id int4;
begin

select p_id into n_p_id
        from parm_periode
        where
                p_start <= to_date(p_date,'DD.MM.YYYY')
                and
                p_end >= to_date(p_date,'DD.MM.YYYY')
                and
                p_id <> p_periode_id;

if NOT FOUND then
        return -1;
end if;

return n_p_id;

end;$$;


ALTER FUNCTION comptaproc.periode_exist(p_date text, p_periode_id bigint) OWNER TO prisma;

--
-- Name: plan_analytic_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.plan_analytic_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
   name text;
begin
   name:=upper(NEW.pa_name);
   name:=trim(name);
   name:=replace(name,' ','');
   NEW.pa_name:=name;
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.plan_analytic_ins_upd() OWNER TO prisma;

--
-- Name: poste_analytique_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.poste_analytique_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$declare
name text;
rCount record;

begin
name:=upper(NEW.po_name);
name:=trim(name);
name:=replace(name,' ','');		
NEW.po_name:=name;

if NEW.ga_id is NULL then
return NEW;
end if;

if length(trim(NEW.ga_id)) = 0 then
  NEW.ga_id:=NULL;
  return NEW;
end if;
perform 'select ga_id from groupe_analytique where ga_id='||NEW.ga_id;
if NOT FOUND then
   raise exception' Inexistent Group Analytic %',NEW.ga_id;
end if;
return NEW;
end;$$;


ALTER FUNCTION comptaproc.poste_analytique_ins_upd() OWNER TO prisma;

--
-- Name: proc_check_balance(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.proc_check_balance() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare 
	diff numeric;
	tt integer;
begin
	if TG_OP = 'INSERT' or TG_OP='UPDATE' then
	tt=NEW.jr_grpt_id;
	diff:=check_balance(tt);
	if diff != 0 then
		raise exception 'balance error %',diff ;
	end if;
	return NEW;
	end if;
end;
$$;


ALTER FUNCTION comptaproc.proc_check_balance() OWNER TO prisma;

--
-- Name: quant_purchase_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.quant_purchase_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
	begin
		if NEW.qp_price < 0 OR NEW.qp_quantite <0 THEN
			NEW.qp_price := abs (NEW.qp_price)*(-1);
			NEW.qp_quantite := abs (NEW.qp_quantite)*(-1);
		end if;
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.quant_purchase_ins_upd() OWNER TO prisma;

--
-- Name: quant_sold_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.quant_sold_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
	begin
		if NEW.qs_price < 0 OR NEW.qs_quantite <0 THEN
			NEW.qs_price := abs (NEW.qs_price)*(-1);
			NEW.qs_quantite := abs (NEW.qs_quantite)*(-1);
		end if;
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.quant_sold_ins_upd() OWNER TO prisma;

--
-- Name: t_document_modele_validate(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.t_document_modele_validate() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare 
    lText text;
    modified document_modele%ROWTYPE;
begin
    modified:=NEW;

	modified.md_filename:=replace(NEW.md_filename,' ','_');
	return modified;
end;
$$;


ALTER FUNCTION comptaproc.t_document_modele_validate() OWNER TO prisma;

--
-- Name: t_document_type_insert(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.t_document_type_insert() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
nCounter integer;
    BEGIN
select count(*) into nCounter from pg_class where relname='seq_doc_type_'||NEW.dt_id;
if nCounter = 0 then
        execute  'create sequence seq_doc_type_'||NEW.dt_id;
end if;
        RETURN NEW;
    END;
$$;


ALTER FUNCTION comptaproc.t_document_type_insert() OWNER TO prisma;

--
-- Name: t_document_validate(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.t_document_validate() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
  lText text;
  modified document%ROWTYPE;
begin
    	modified:=NEW;
	modified.d_filename:=replace(NEW.d_filename,' ','_');
	return modified;
end;
$$;


ALTER FUNCTION comptaproc.t_document_validate() OWNER TO prisma;

--
-- Name: t_jrn_def_description(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.t_jrn_def_description() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
    declare
        str varchar(200);
    BEGIN
        str := substr(NEW.jrn_def_description,1,200);
        NEW.jrn_def_description := str;

        RETURN NEW;
    END;
$$;


ALTER FUNCTION comptaproc.t_jrn_def_description() OWNER TO prisma;

--
-- Name: t_jrn_def_sequence(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.t_jrn_def_sequence() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
nCounter integer;

    BEGIN
    select count(*) into nCounter 
       from pg_class where relname='s_jrn_'||NEW.jrn_def_id;
       if nCounter = 0 then
       	   execute  'create sequence s_jrn_'||NEW.jrn_def_id;
	   raise notice 'Creating sequence s_jrn_%',NEW.jrn_def_id;
	 end if;

        RETURN NEW;
    END;
$$;


ALTER FUNCTION comptaproc.t_jrn_def_sequence() OWNER TO prisma;

--
-- Name: tmp_pcmn_alphanum_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.tmp_pcmn_alphanum_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
   r_record tmp_pcmn%ROWTYPE;
begin
r_record := NEW;
r_record.pcm_val:=format_account(NEW.pcm_val);

return r_record;
end;
$$;


ALTER FUNCTION comptaproc.tmp_pcmn_alphanum_ins_upd() OWNER TO prisma;

--
-- Name: tmp_pcmn_ins(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.tmp_pcmn_ins() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
   r_record tmp_pcmn%ROWTYPE;
begin
r_record := NEW;
if  length(trim(r_record.pcm_type))=0 or r_record.pcm_type is NULL then
   r_record.pcm_type:=find_pcm_type(NEW.pcm_val);
   return r_record;
end if;
return NEW;
end;
$$;


ALTER FUNCTION comptaproc.tmp_pcmn_ins() OWNER TO prisma;

--
-- Name: trg_profile_user_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.trg_profile_user_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin

NEW.user_name := lower(NEW.user_name);
return NEW;

end;
$$;


ALTER FUNCTION comptaproc.trg_profile_user_ins_upd() OWNER TO prisma;

--
-- Name: trg_todo_list_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.trg_todo_list_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin

NEW.use_login:= lower(NEW.use_login);
return NEW;

end;
$$;


ALTER FUNCTION comptaproc.trg_todo_list_ins_upd() OWNER TO prisma;

--
-- Name: trg_todo_list_shared_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.trg_todo_list_shared_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin

NEW.use_login:= lower(NEW.use_login);
return NEW;

end;
$$;


ALTER FUNCTION comptaproc.trg_todo_list_shared_ins_upd() OWNER TO prisma;

--
-- Name: trg_user_sec_act_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.trg_user_sec_act_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin

NEW.ua_login:= lower(NEW.ua_login);
return NEW;

end;
$$;


ALTER FUNCTION comptaproc.trg_user_sec_act_ins_upd() OWNER TO prisma;

--
-- Name: trg_user_sec_jrn_ins_upd(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.trg_user_sec_jrn_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$

begin

NEW.uj_login:= lower(NEW.uj_login);
return NEW;

end;
$$;


ALTER FUNCTION comptaproc.trg_user_sec_jrn_ins_upd() OWNER TO prisma;

--
-- Name: trim_cvs_quote(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.trim_cvs_quote() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
        modified import_tmp%ROWTYPE;
begin
	modified:=NEW;
	modified.devise=replace(new.devise,'"','');
	modified.poste_comptable=replace(new.poste_comptable,'"','');
        modified.compte_ordre=replace(NEW.COMPTE_ORDRE,'"','');
        modified.detail=replace(NEW.DETAIL,'"','');
        modified.num_compte=replace(NEW.NUM_COMPTE,'"','');
        return modified;
end;
$$;


ALTER FUNCTION comptaproc.trim_cvs_quote() OWNER TO prisma;

--
-- Name: trim_space_format_csv_banque(); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.trim_space_format_csv_banque() RETURNS trigger
    LANGUAGE plpgsql
    AS $$
declare
        modified format_csv_banque%ROWTYPE;
begin
        modified.name=trim(NEW.NAME);
        modified.include_file=trim(new.include_file);
		if ( length(modified.name) = 0 ) then
			modified.name=null;
		end if;
		if ( length(modified.include_file) = 0 ) then
			modified.include_file=null;
		end if;

        return modified;
end;
$$;


ALTER FUNCTION comptaproc.trim_space_format_csv_banque() OWNER TO prisma;

--
-- Name: tva_delete(integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.tva_delete(integer) RETURNS void
    LANGUAGE plpgsql
    AS $_$ 
declare
	p_tva_id alias for $1;
	nCount integer;
begin
	nCount=0;
	select count(*) into nCount from quant_sold where qs_vat_code=p_tva_id;
	if nCount != 0 then
                 return;
		
	end if;
	select count(*) into nCount from quant_purchase where qp_vat_code=p_tva_id;
	if nCount != 0 then
                 return;
		
	end if;

delete from tva_rate where tva_id=p_tva_id;
	return;
end;
$_$;


ALTER FUNCTION comptaproc.tva_delete(integer) OWNER TO prisma;

--
-- Name: tva_insert(text, numeric, text, text, integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.tva_insert(text, numeric, text, text, integer) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
declare
	l_tva_id integer;
	p_tva_label alias for $1;
	p_tva_rate alias for $2;
	p_tva_comment alias for $3;
	p_tva_poste alias for $4;
	p_tva_both_side alias for $5;
	debit text;
	credit text;
	nCount integer;
begin
if length(trim(p_tva_label)) = 0 then
	return 3;
end if;

if length(trim(p_tva_poste)) != 0 then
	if position (',' in p_tva_poste) = 0 then return 4; end if;
	debit  = split_part(p_tva_poste,',',1);
	credit	= split_part(p_tva_poste,',',2);
	select count(*) into nCount from tmp_pcmn where pcm_val=debit::account_type;
	if nCount = 0 then return 4; end if;
	select count(*) into nCount from tmp_pcmn where pcm_val=credit::account_type;
	if nCount = 0 then return 4; end if;

end if;
select into l_tva_id nextval('s_tva') ;
insert into tva_rate(tva_id,tva_label,tva_rate,tva_comment,tva_poste,tva_both_side)
	values (l_tva_id,p_tva_label,p_tva_rate,p_tva_comment,p_tva_poste,p_tva_both_side);
return 0;
end;
$_$;


ALTER FUNCTION comptaproc.tva_insert(text, numeric, text, text, integer) OWNER TO prisma;

--
-- Name: tva_modify(integer, text, numeric, text, text, integer); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.tva_modify(integer, text, numeric, text, text, integer) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
declare
	p_tva_id alias for $1;
	p_tva_label alias for $2;
	p_tva_rate alias for $3;
	p_tva_comment alias for $4;
	p_tva_poste alias for $5;
	p_tva_both_side alias for $6;
	debit text;
	credit text;
	nCount integer;
begin
if length(trim(p_tva_label)) = 0 then
	return 3;
end if;

if length(trim(p_tva_poste)) != 0 then
	if position (',' in p_tva_poste) = 0 then return 4; end if;
	debit  = split_part(p_tva_poste,',',1);
	credit	= split_part(p_tva_poste,',',2);
	select count(*) into nCount from tmp_pcmn where pcm_val=debit::account_type;
	if nCount = 0 then return 4; end if;
	select count(*) into nCount from tmp_pcmn where pcm_val=credit::account_type;
	if nCount = 0 then return 4; end if;

end if;
update tva_rate set tva_label=p_tva_label,tva_rate=p_tva_rate,tva_comment=p_tva_comment,tva_poste=p_tva_poste,tva_both_side=p_tva_both_side
	where tva_id=p_tva_id;
return 0;
end;
$_$;


ALTER FUNCTION comptaproc.tva_modify(integer, text, numeric, text, text, integer) OWNER TO prisma;

--
-- Name: update_quick_code(integer, text); Type: FUNCTION; Schema: comptaproc; Owner: prisma
--

CREATE FUNCTION comptaproc.update_quick_code(njft_id integer, tav_text text) RETURNS integer
    LANGUAGE plpgsql
    AS $_$
	declare
	ns integer;
	nExist integer;
	tText text;
	tBase text;
	old_qcode varchar;
	num_rows_jrnx integer;
	num_rows_predef integer;
	begin
	-- get current value
	select ad_value into old_qcode from fiche_detail where jft_id=njft_id;
	-- av_text didn't change so no update
	if tav_text = upper( trim(old_qcode)) then
		raise notice 'nothing to change % %' , tav_text,old_qcode;
		return 0;
	end if;

	tText := trim(lower(tav_text));
	tText := replace(tText,' ','');
        -- valid alpha is [ . : - _ ]
	tText := translate(tText,E' $€µ£%+/\\!(){}(),;&|"#''^<>*','');
	tText := translate(tText,E'éèêëàâäïîüûùöôç','eeeeaaaiiuuuooc');
	tText := upper(tText);
	if length ( tText) = 0 or tText is null then
		return 0;
	end if;

	ns := njft_id;
	tBase := tText;
	loop
		-- av_text already used ?
		select count(*) into nExist
			from fiche_detail
		where
			ad_id=23 and ad_value=tText
			and jft_id <> njft_id;

		if nExist = 0 then
			exit;
		end if;
		if tText = tBase||ns then
			-- take the next sequence
			select nextval('s_jnt_fic_att_value') into ns;
		end if;
		tText  :=tBase||ns;

	end loop;
	update fiche_detail set ad_value = tText where jft_id=njft_id;

	-- update also the contact
	update fiche_detail set ad_value = tText
		where jft_id in
			( select jft_id
				from fiche_detail
			where ad_id=25 and ad_value=old_qcode);


	return ns;
	end;
$_$;


ALTER FUNCTION comptaproc.update_quick_code(njft_id integer, tav_text text) OWNER TO prisma;

--
-- Name: bud_card_ins_upd(); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.bud_card_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$declare
 sCode text;
begin

sCode:=trim(upper(NEW.bc_code));
sCode:=replace(sCode,' ','_');
sCode:=substr(sCode,1,10);
NEW.bc_code:=sCode;
return NEW;
end;$$;


ALTER FUNCTION public.bud_card_ins_upd() OWNER TO prisma;

--
-- Name: bud_detail_ins_upd(); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.bud_detail_ins_upd() RETURNS trigger
    LANGUAGE plpgsql
    AS $$declare
mline bud_detail%ROWTYPE;
begin
mline:=NEW;
if mline.po_id = -1 then
   mline.po_id:=NULL;
end if;
return mline;
end;$$;


ALTER FUNCTION public.bud_detail_ins_upd() OWNER TO prisma;

--
-- Name: correct_quant_purchase(); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.correct_quant_purchase() RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
	r_invalid quant_purchase;
	s_QuickCode text;
	b_j_debit bool;
	r_new record;
	r_jrnx record;
begin

for r_invalid in select * from quant_purchase where qp_valid='A'
loop

select j_qcode into s_QuickCode from vw_poste_qcode where f_id=r_invalid.qp_fiche;
raise notice 'qp_id % Quick code is %',r_invalid.qp_id,s_QuickCode;

select j_debit,j_grpt,j_jrn_def,j_montant into r_jrnx from jrnx where j_id=r_invalid.j_id;
if NOT FOUND then
	raise notice 'error not found jrnx %',r_invalid.j_id;
	update quant_purchase set qp_valid='Y' where qp_id=r_invalid.qp_id;
	continue;
end if;
raise notice 'j_debit % , j_grpt % ,j_jrn_def  % qp_price %',r_jrnx.j_debit,r_jrnx.j_grpt,r_jrnx.j_jrn_def ,r_invalid.qp_price;

select jr_internal,j_id,j_montant into r_new
	from jrnx join jrn on (j_grpt=jr_grpt_id)
	where 
	j_jrn_def=r_jrnx.j_jrn_def
	and j_id not in (select j_id from  quant_purchase)
	and j_qcode=s_QuickCode
	and j_montant=r_jrnx.j_montant
	and j_debit != r_jrnx.j_debit;

if NOT FOUND then
	raise notice 'error not found %', r_invalid.j_id;
	update quant_purchase set qp_valid='Y' where qp_id=r_invalid.qp_id;
	continue;     
end if;
raise notice 'j_id % found amount %',r_new.j_id,r_new.j_montant;

insert into quant_purchase (qp_internal,j_id,qp_fiche,qp_quantite,qp_price,qp_vat,qp_nd_amount,qp_nd_tva_recup,qp_valid,qp_dep_priv,qp_supplier,qp_vat_code)
values (r_new.jr_internal,r_invalid.j_id,r_invalid.qp_fiche,(r_invalid.qp_quantite * (-1)),r_invalid.qp_price * (-1),r_invalid.qp_vat*(-1),r_invalid.qp_nd_amount*(-1),r_invalid.qp_nd_tva_recup*(-1) ,'Y',r_invalid.qp_dep_priv*(-1),r_invalid.qp_supplier,r_invalid.qp_vat_code);

update quant_purchase set qp_valid='Y' where qp_id=r_invalid.qp_id;
end loop;
return;
end;
$$;


ALTER FUNCTION public.correct_quant_purchase() OWNER TO prisma;

--
-- Name: correct_quant_sale(); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.correct_quant_sale() RETURNS void
    LANGUAGE plpgsql
    AS $$
declare
	r_invalid quant_sold;
	s_QuickCode text;
	b_j_debit bool;
	r_new record;
	r_jrnx record;
begin

for r_invalid in select * from quant_sold where qs_valid='A'
loop

select j_qcode into s_QuickCode from vw_poste_qcode where f_id=r_invalid.qs_fiche;
raise notice 'qp_id % Quick code is %',r_invalid.qs_id,s_QuickCode;

select j_debit,j_grpt,j_jrn_def,j_montant into r_jrnx from jrnx where j_id=r_invalid.j_id;
if NOT FOUND then
	update quant_sold set qs_valid='Y' where qs_id=r_invalid.qs_id;
	raise notice 'error not found jrnx %',r_invalid.j_id;
	continue;
end if;
raise notice 'j_debit % , j_grpt % ,j_jrn_def  % qs_price %',r_jrnx.j_debit,r_jrnx.j_grpt,r_jrnx.j_jrn_def ,r_invalid.qs_price;

select jr_internal,j_id,j_montant into r_new
	from jrnx join jrn on (j_grpt=jr_grpt_id)
	where 
	j_jrn_def=r_jrnx.j_jrn_def
	and j_id not in (select j_id from  quant_sold)
	and j_qcode=s_QuickCode
	and j_montant=r_jrnx.j_montant
	and j_debit != r_jrnx.j_debit;

if NOT FOUND then
   update quant_sold set qs_valid='Y' where qs_id=r_invalid.qs_id;
	raise notice 'error not found %', r_invalid.j_id;
	continue;
end if;
raise notice 'j_id % found amount %',r_new.j_id,r_new.j_montant;


 insert into quant_sold (qs_internal,j_id,qs_fiche,qs_quantite,qs_price,qs_vat,qs_valid,qs_client,qs_vat_code)
 values (r_new.jr_internal,r_invalid.j_id,r_invalid.qs_fiche,(r_invalid.qs_quantite * (-1)),r_invalid.qs_price * (-1),r_invalid.qs_vat*(-1),'Y',r_invalid.qs_client,r_invalid.qs_vat_code);
 update quant_sold set qs_valid='Y' where qs_id=r_invalid.qs_id;
end loop;
return;
end;
$$;


ALTER FUNCTION public.correct_quant_sale() OWNER TO prisma;

--
-- Name: modify_menu_system(numeric); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.modify_menu_system(n_profile numeric) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare 
r_duplicate profile_menu%ROWTYPE;
str_duplicate text;
n_lowest_id numeric; -- lowest pm_id : update the dependency in profile_menu
n_highest_id numeric; -- highest pm_id insert into profile_menu

begin

for str_duplicate in   
	select me_code 
	from profile_menu 
	where 
	p_id=n_profile and 
	p_type_display <> 'P' and
	pm_id_dep is null
	group by me_code 
	having count(*) > 1 
loop
	raise info 'str_duplicate %',str_duplicate;
	for r_duplicate in select * 
		from profile_menu 
		where 
		p_id=n_profile and
		me_code_dep=str_duplicate
	loop
		raise info 'r_duplicate %',r_duplicate;
		-- get the lowest 
		select a.pm_id into n_lowest_id from profile_menu a join profile_menu b on (a.me_code=b.me_code and a.p_id = b.p_id)
		where
		a.me_code=str_duplicate
		and a.p_id=n_profile
		and a.pm_id < b.pm_id;
		raise info 'lowest is %',n_lowest_id;
		-- get the highest
		select a.pm_id into n_highest_id from profile_menu a join profile_menu b on (a.me_code=b.me_code and a.p_id = b.p_id)
		where
		a.me_code=str_duplicate
		and a.p_id=n_profile
		and a.pm_id > b.pm_id;
		raise info 'highest is %',n_highest_id;

		-- update the first one
		update profile_menu set pm_id_dep = n_lowest_id where pm_id=r_duplicate.pm_id;
		-- insert a new one
		insert into profile_menu (me_code,
			me_code_dep,
			p_id,
			p_order,
			p_type_display,
			pm_default,
			pm_id_dep)
		values (r_duplicate.me_code,
			r_duplicate.me_code_dep,
			r_duplicate.p_id,
			r_duplicate.p_order,
			r_duplicate.p_type_display,
			r_duplicate.pm_default,
			n_highest_id);
		
	end loop;	

end loop;	
end;
$$;


ALTER FUNCTION public.modify_menu_system(n_profile numeric) OWNER TO prisma;

--
-- Name: upgrade_repo(integer); Type: FUNCTION; Schema: public; Owner: prisma
--

CREATE FUNCTION public.upgrade_repo(p_version integer) RETURNS void
    LANGUAGE plpgsql
    AS $$
declare 
        is_mono integer;
begin
        select count (*) into is_mono from information_schema.tables where table_name='repo_version';
        if is_mono = 1 then
                update repo_version set val=p_version;
        else
                update version set val=p_version;
        end if;
end;
$$;


ALTER FUNCTION public.upgrade_repo(p_version integer) OWNER TO prisma;

SET default_tablespace = '';

SET default_with_oids = true;

--
-- Name: action; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.action (
    ac_id integer NOT NULL,
    ac_description text NOT NULL,
    ac_module text,
    ac_code character varying(30)
);


ALTER TABLE public.action OWNER TO prisma;

--
-- Name: TABLE action; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.action IS 'The different privileges';


--
-- Name: COLUMN action.ac_code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action.ac_code IS 'this code will be used in the code with the function User::check_action ';


SET default_with_oids = false;

--
-- Name: action_detail; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.action_detail (
    ad_id integer NOT NULL,
    f_id bigint,
    ad_text text,
    ad_pu numeric(20,4) DEFAULT 0,
    ad_quant numeric(20,4) DEFAULT 0,
    ad_tva_id integer DEFAULT 0,
    ad_tva_amount numeric(20,4) DEFAULT 0,
    ad_total_amount numeric(20,4) DEFAULT 0,
    ag_id integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.action_detail OWNER TO prisma;

--
-- Name: TABLE action_detail; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.action_detail IS 'Detail of action_gestion, see class Action_Detail';


--
-- Name: COLUMN action_detail.f_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_detail.f_id IS 'the concerned	card';


--
-- Name: COLUMN action_detail.ad_text; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_detail.ad_text IS ' Description ';


--
-- Name: COLUMN action_detail.ad_pu; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_detail.ad_pu IS ' price per unit ';


--
-- Name: COLUMN action_detail.ad_quant; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_detail.ad_quant IS 'quantity ';


--
-- Name: COLUMN action_detail.ad_tva_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_detail.ad_tva_id IS ' tva_id ';


--
-- Name: COLUMN action_detail.ad_tva_amount; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_detail.ad_tva_amount IS ' tva_amount ';


--
-- Name: COLUMN action_detail.ad_total_amount; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_detail.ad_total_amount IS ' total amount';


--
-- Name: action_detail_ad_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.action_detail_ad_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_detail_ad_id_seq OWNER TO prisma;

--
-- Name: action_detail_ad_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.action_detail_ad_id_seq OWNED BY public.action_detail.ad_id;


--
-- Name: action_gestion_ag_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.action_gestion_ag_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_gestion_ag_id_seq OWNER TO prisma;

SET default_with_oids = true;

--
-- Name: action_gestion; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.action_gestion (
    ag_id integer DEFAULT nextval('public.action_gestion_ag_id_seq'::regclass) NOT NULL,
    ag_type integer,
    f_id_dest integer,
    ag_title text,
    ag_timestamp timestamp without time zone DEFAULT now(),
    ag_ref text,
    ag_hour text,
    ag_priority integer DEFAULT 2,
    ag_dest bigint DEFAULT '-1'::integer NOT NULL,
    ag_owner text,
    ag_contact bigint,
    ag_state integer,
    ag_remind_date date
);


ALTER TABLE public.action_gestion OWNER TO prisma;

--
-- Name: TABLE action_gestion; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.action_gestion IS 'Contains the details for the follow-up of customer, supplier, administration';


--
-- Name: COLUMN action_gestion.ag_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_type IS ' type of action: see document_type ';


--
-- Name: COLUMN action_gestion.f_id_dest; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.f_id_dest IS ' third party ';


--
-- Name: COLUMN action_gestion.ag_title; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_title IS ' title ';


--
-- Name: COLUMN action_gestion.ag_timestamp; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_timestamp IS ' ';


--
-- Name: COLUMN action_gestion.ag_ref; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_ref IS 'its reference ';


--
-- Name: COLUMN action_gestion.ag_priority; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_priority IS 'Low, medium, important ';


--
-- Name: COLUMN action_gestion.ag_dest; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_dest IS ' is the profile which has to take care of this action ';


--
-- Name: COLUMN action_gestion.ag_owner; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_owner IS ' is the owner of this action ';


--
-- Name: COLUMN action_gestion.ag_contact; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_contact IS ' contact of the third part ';


--
-- Name: COLUMN action_gestion.ag_state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion.ag_state IS 'state of the action same as document_state ';


SET default_with_oids = false;

--
-- Name: action_gestion_comment; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.action_gestion_comment (
    agc_id bigint NOT NULL,
    ag_id bigint,
    agc_date timestamp with time zone DEFAULT now(),
    agc_comment text,
    tech_user text
);


ALTER TABLE public.action_gestion_comment OWNER TO prisma;

--
-- Name: COLUMN action_gestion_comment.agc_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_comment.agc_id IS 'PK';


--
-- Name: COLUMN action_gestion_comment.ag_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_comment.ag_id IS 'FK to action_gestion';


--
-- Name: COLUMN action_gestion_comment.agc_comment; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_comment.agc_comment IS 'comment';


--
-- Name: COLUMN action_gestion_comment.tech_user; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_comment.tech_user IS 'user_login';


--
-- Name: action_gestion_comment_agc_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.action_gestion_comment_agc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_gestion_comment_agc_id_seq OWNER TO prisma;

--
-- Name: action_gestion_comment_agc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.action_gestion_comment_agc_id_seq OWNED BY public.action_gestion_comment.agc_id;


--
-- Name: action_gestion_operation; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.action_gestion_operation (
    ago_id bigint NOT NULL,
    ag_id bigint,
    jr_id bigint
);


ALTER TABLE public.action_gestion_operation OWNER TO prisma;

--
-- Name: COLUMN action_gestion_operation.ago_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_operation.ago_id IS 'pk';


--
-- Name: COLUMN action_gestion_operation.ag_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_operation.ag_id IS 'fk to action_gestion';


--
-- Name: COLUMN action_gestion_operation.jr_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_operation.jr_id IS 'fk to jrn';


--
-- Name: action_gestion_operation_ago_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.action_gestion_operation_ago_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_gestion_operation_ago_id_seq OWNER TO prisma;

--
-- Name: action_gestion_operation_ago_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.action_gestion_operation_ago_id_seq OWNED BY public.action_gestion_operation.ago_id;


--
-- Name: action_gestion_related; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.action_gestion_related (
    aga_id bigint NOT NULL,
    aga_least bigint NOT NULL,
    aga_greatest bigint NOT NULL,
    aga_type bigint
);


ALTER TABLE public.action_gestion_related OWNER TO prisma;

--
-- Name: COLUMN action_gestion_related.aga_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_related.aga_id IS 'pk';


--
-- Name: COLUMN action_gestion_related.aga_least; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_related.aga_least IS 'fk to action_gestion, smallest ag_id';


--
-- Name: COLUMN action_gestion_related.aga_greatest; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_related.aga_greatest IS 'fk to action_gestion greatest ag_id';


--
-- Name: COLUMN action_gestion_related.aga_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_gestion_related.aga_type IS 'Type de liens';


--
-- Name: action_gestion_related_aga_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.action_gestion_related_aga_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_gestion_related_aga_id_seq OWNER TO prisma;

--
-- Name: action_gestion_related_aga_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.action_gestion_related_aga_id_seq OWNED BY public.action_gestion_related.aga_id;


--
-- Name: action_person; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.action_person (
    ap_id integer NOT NULL,
    ag_id integer NOT NULL,
    f_id integer NOT NULL
);


ALTER TABLE public.action_person OWNER TO prisma;

--
-- Name: TABLE action_person; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.action_person IS 'Person involved in the action';


--
-- Name: COLUMN action_person.ap_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_person.ap_id IS 'pk';


--
-- Name: COLUMN action_person.ag_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.action_person.ag_id IS 'fk to fiche';


--
-- Name: action_person_ap_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.action_person_ap_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_person_ap_id_seq OWNER TO prisma;

--
-- Name: action_person_ap_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.action_person_ap_id_seq OWNED BY public.action_person.ap_id;


--
-- Name: action_tags; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.action_tags (
    at_id integer NOT NULL,
    t_id integer,
    ag_id integer
);


ALTER TABLE public.action_tags OWNER TO prisma;

--
-- Name: action_tags_at_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.action_tags_at_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.action_tags_at_id_seq OWNER TO prisma;

--
-- Name: action_tags_at_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.action_tags_at_id_seq OWNED BY public.action_tags.at_id;


SET default_with_oids = true;

--
-- Name: attr_def; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.attr_def (
    ad_id integer DEFAULT nextval(('s_attr_def'::text)::regclass) NOT NULL,
    ad_text text,
    ad_type text,
    ad_size text NOT NULL,
    ad_extra text
);


ALTER TABLE public.attr_def OWNER TO prisma;

--
-- Name: TABLE attr_def; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.attr_def IS 'The available attributs for the cards';


--
-- Name: attr_min; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.attr_min (
    frd_id integer NOT NULL,
    ad_id integer NOT NULL
);


ALTER TABLE public.attr_min OWNER TO prisma;

--
-- Name: TABLE attr_min; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.attr_min IS 'The value of  attributs for the cards';


--
-- Name: bilan_b_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.bilan_b_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bilan_b_id_seq OWNER TO prisma;

SET default_with_oids = false;

--
-- Name: bilan; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.bilan (
    b_id integer DEFAULT nextval('public.bilan_b_id_seq'::regclass) NOT NULL,
    b_name text NOT NULL,
    b_file_template text NOT NULL,
    b_file_form text,
    b_type text NOT NULL
);


ALTER TABLE public.bilan OWNER TO prisma;

--
-- Name: TABLE bilan; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.bilan IS 'contains the template and the data for generating different documents  ';


--
-- Name: COLUMN bilan.b_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bilan.b_id IS 'primary key';


--
-- Name: COLUMN bilan.b_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bilan.b_name IS 'Name of the document';


--
-- Name: COLUMN bilan.b_file_template; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bilan.b_file_template IS 'path of the template (document/...)';


--
-- Name: COLUMN bilan.b_file_form; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bilan.b_file_form IS 'path of the file with forms';


--
-- Name: COLUMN bilan.b_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.bilan.b_type IS 'type = ODS, RTF...';


--
-- Name: bookmark; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.bookmark (
    b_id integer NOT NULL,
    b_order integer DEFAULT 1,
    b_action text,
    login text
);


ALTER TABLE public.bookmark OWNER TO prisma;

--
-- Name: TABLE bookmark; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.bookmark IS 'Bookmark of the connected user';


--
-- Name: bookmark_b_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.bookmark_b_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bookmark_b_id_seq OWNER TO prisma;

--
-- Name: bookmark_b_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.bookmark_b_id_seq OWNED BY public.bookmark.b_id;


--
-- Name: bud_card_bc_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.bud_card_bc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bud_card_bc_id_seq OWNER TO prisma;

--
-- Name: bud_detail_bd_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.bud_detail_bd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bud_detail_bd_id_seq OWNER TO prisma;

--
-- Name: bud_detail_periode_bdp_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.bud_detail_periode_bdp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.bud_detail_periode_bdp_id_seq OWNER TO prisma;

SET default_with_oids = true;

--
-- Name: centralized; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.centralized (
    c_id integer DEFAULT nextval(('s_centralized'::text)::regclass) NOT NULL,
    c_j_id integer,
    c_date date NOT NULL,
    c_internal text NOT NULL,
    c_montant numeric(20,4) NOT NULL,
    c_debit boolean DEFAULT true,
    c_jrn_def integer NOT NULL,
    c_poste public.account_type,
    c_description text,
    c_grp integer NOT NULL,
    c_comment text,
    c_rapt text,
    c_periode integer,
    c_order integer
);


ALTER TABLE public.centralized OWNER TO prisma;

--
-- Name: TABLE centralized; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.centralized IS 'The centralized journal';


SET default_with_oids = false;

--
-- Name: del_action; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.del_action (
    del_id integer NOT NULL,
    del_name text NOT NULL,
    del_time timestamp without time zone
);


ALTER TABLE public.del_action OWNER TO prisma;

--
-- Name: del_action_del_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.del_action_del_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.del_action_del_id_seq OWNER TO prisma;

--
-- Name: del_action_del_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.del_action_del_id_seq OWNED BY public.del_action.del_id;


--
-- Name: del_jrn; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.del_jrn (
    jr_id integer NOT NULL,
    jr_def_id integer,
    jr_montant numeric(20,4),
    jr_comment text,
    jr_date date,
    jr_grpt_id integer,
    jr_internal text,
    jr_tech_date timestamp without time zone,
    jr_tech_per integer,
    jrn_ech date,
    jr_ech date,
    jr_rapt text,
    jr_valid boolean,
    jr_opid integer,
    jr_c_opid integer,
    jr_pj oid,
    jr_pj_name text,
    jr_pj_type text,
    del_jrn_date timestamp without time zone,
    jr_pj_number text,
    dj_id integer NOT NULL
);


ALTER TABLE public.del_jrn OWNER TO prisma;

--
-- Name: del_jrn_dj_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.del_jrn_dj_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.del_jrn_dj_id_seq OWNER TO prisma;

--
-- Name: del_jrn_dj_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.del_jrn_dj_id_seq OWNED BY public.del_jrn.dj_id;


--
-- Name: del_jrnx; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.del_jrnx (
    j_id integer NOT NULL,
    j_date date,
    j_montant numeric(20,4),
    j_poste public.account_type,
    j_grpt integer,
    j_rapt text,
    j_jrn_def integer,
    j_debit boolean,
    j_text text,
    j_centralized boolean,
    j_internal text,
    j_tech_user text,
    j_tech_date timestamp without time zone,
    j_tech_per integer,
    j_qcode text,
    djx_id integer NOT NULL,
    f_id bigint
);


ALTER TABLE public.del_jrnx OWNER TO prisma;

--
-- Name: del_jrnx_djx_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.del_jrnx_djx_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.del_jrnx_djx_id_seq OWNER TO prisma;

--
-- Name: del_jrnx_djx_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.del_jrnx_djx_id_seq OWNED BY public.del_jrnx.djx_id;


--
-- Name: document_d_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.document_d_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_d_id_seq OWNER TO prisma;

SET default_with_oids = true;

--
-- Name: document; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.document (
    d_id integer DEFAULT nextval('public.document_d_id_seq'::regclass) NOT NULL,
    ag_id integer NOT NULL,
    d_lob oid,
    d_number bigint NOT NULL,
    d_filename text,
    d_mimetype text,
    d_description text
);


ALTER TABLE public.document OWNER TO prisma;

--
-- Name: TABLE document; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.document IS 'This table contains all the documents : summary and lob files';


--
-- Name: document_modele_md_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.document_modele_md_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_modele_md_id_seq OWNER TO prisma;

--
-- Name: document_modele; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.document_modele (
    md_id integer DEFAULT nextval('public.document_modele_md_id_seq'::regclass) NOT NULL,
    md_name text NOT NULL,
    md_lob oid,
    md_type integer NOT NULL,
    md_filename text,
    md_mimetype text,
    md_affect character varying(3) NOT NULL
);


ALTER TABLE public.document_modele OWNER TO prisma;

--
-- Name: TABLE document_modele; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.document_modele IS ' contains all the template for the  documents';


--
-- Name: document_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.document_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_seq OWNER TO prisma;

--
-- Name: SEQUENCE document_seq; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON SEQUENCE public.document_seq IS 'Sequence for the sequence bound to the document modele';


--
-- Name: document_state_s_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.document_state_s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_state_s_id_seq OWNER TO prisma;

--
-- Name: document_state; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.document_state (
    s_id integer DEFAULT nextval('public.document_state_s_id_seq'::regclass) NOT NULL,
    s_value character varying(50) NOT NULL,
    s_status character(1)
);


ALTER TABLE public.document_state OWNER TO prisma;

--
-- Name: TABLE document_state; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.document_state IS 'State of the document';


--
-- Name: document_type_dt_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.document_type_dt_id_seq
    START WITH 25
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.document_type_dt_id_seq OWNER TO prisma;

--
-- Name: document_type; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.document_type (
    dt_id integer DEFAULT nextval('public.document_type_dt_id_seq'::regclass) NOT NULL,
    dt_value character varying(80),
    dt_prefix text
);


ALTER TABLE public.document_type OWNER TO prisma;

--
-- Name: TABLE document_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.document_type IS 'Type of document : meeting, invoice,...';


--
-- Name: COLUMN document_type.dt_prefix; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.document_type.dt_prefix IS 'Prefix for ag_ref';


SET default_with_oids = false;

--
-- Name: extension; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.extension (
    ex_id integer NOT NULL,
    ex_name character varying(30) NOT NULL,
    ex_code character varying(15) NOT NULL,
    ex_desc character varying(250),
    ex_file character varying NOT NULL,
    ex_enable "char" DEFAULT 'Y'::"char" NOT NULL
);


ALTER TABLE public.extension OWNER TO prisma;

--
-- Name: TABLE extension; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.extension IS 'Content the needed information for the extension';


--
-- Name: COLUMN extension.ex_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.extension.ex_id IS 'Primary key';


--
-- Name: COLUMN extension.ex_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.extension.ex_name IS 'code of the extension ';


--
-- Name: COLUMN extension.ex_code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.extension.ex_code IS 'code of the extension ';


--
-- Name: COLUMN extension.ex_desc; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.extension.ex_desc IS 'Description of the extension ';


--
-- Name: COLUMN extension.ex_file; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.extension.ex_file IS 'path to the extension to include';


--
-- Name: COLUMN extension.ex_enable; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.extension.ex_enable IS 'Y : enabled N : disabled ';


--
-- Name: extension_ex_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.extension_ex_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.extension_ex_id_seq OWNER TO prisma;

--
-- Name: extension_ex_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.extension_ex_id_seq OWNED BY public.extension.ex_id;


SET default_with_oids = true;

--
-- Name: fiche; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.fiche (
    f_id integer DEFAULT nextval(('s_fiche'::text)::regclass) NOT NULL,
    fd_id integer
);


ALTER TABLE public.fiche OWNER TO prisma;

--
-- Name: TABLE fiche; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.fiche IS 'Cards';


--
-- Name: fiche_def; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.fiche_def (
    fd_id integer DEFAULT nextval(('s_fdef'::text)::regclass) NOT NULL,
    fd_class_base text,
    fd_label text NOT NULL,
    fd_create_account boolean DEFAULT false,
    frd_id integer NOT NULL,
    fd_description text
);


ALTER TABLE public.fiche_def OWNER TO prisma;

--
-- Name: TABLE fiche_def; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.fiche_def IS 'Cards definition';


--
-- Name: fiche_def_ref; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.fiche_def_ref (
    frd_id integer DEFAULT nextval(('s_fiche_def_ref'::text)::regclass) NOT NULL,
    frd_text text,
    frd_class_base public.account_type
);


ALTER TABLE public.fiche_def_ref OWNER TO prisma;

--
-- Name: TABLE fiche_def_ref; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.fiche_def_ref IS 'Family Cards definition';


--
-- Name: fiche_detail; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.fiche_detail (
    jft_id integer DEFAULT nextval(('s_jnt_fic_att_value'::text)::regclass) NOT NULL,
    f_id integer,
    ad_id integer,
    ad_value text
);


ALTER TABLE public.fiche_detail OWNER TO prisma;

--
-- Name: TABLE fiche_detail; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.fiche_detail IS 'join between the card and the attribut definition';


SET default_with_oids = false;

--
-- Name: forecast; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.forecast (
    f_id integer NOT NULL,
    f_name text NOT NULL,
    f_start_date bigint,
    f_end_date bigint
);


ALTER TABLE public.forecast OWNER TO prisma;

--
-- Name: TABLE forecast; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.forecast IS 'contains the name of the forecast';


--
-- Name: forecast_cat; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.forecast_cat (
    fc_id integer NOT NULL,
    fc_desc text NOT NULL,
    f_id bigint,
    fc_order integer DEFAULT 0 NOT NULL
);


ALTER TABLE public.forecast_cat OWNER TO prisma;

--
-- Name: COLUMN forecast_cat.fc_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_cat.fc_id IS 'primary key';


--
-- Name: COLUMN forecast_cat.fc_desc; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_cat.fc_desc IS 'text of the category';


--
-- Name: COLUMN forecast_cat.f_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_cat.f_id IS 'Foreign key, it is the parent from the table forecast';


--
-- Name: COLUMN forecast_cat.fc_order; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_cat.fc_order IS 'Order of the category, used when displaid';


--
-- Name: forecast_cat_fc_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.forecast_cat_fc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forecast_cat_fc_id_seq OWNER TO prisma;

--
-- Name: forecast_cat_fc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.forecast_cat_fc_id_seq OWNED BY public.forecast_cat.fc_id;


--
-- Name: forecast_f_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.forecast_f_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forecast_f_id_seq OWNER TO prisma;

--
-- Name: forecast_f_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.forecast_f_id_seq OWNED BY public.forecast.f_id;


--
-- Name: forecast_item; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.forecast_item (
    fi_id integer NOT NULL,
    fi_text text,
    fi_account text,
    fi_card integer,
    fi_order integer,
    fc_id integer,
    fi_amount numeric(20,4) DEFAULT 0,
    fi_debit "char" DEFAULT 'd'::"char" NOT NULL,
    fi_pid integer
);


ALTER TABLE public.forecast_item OWNER TO prisma;

--
-- Name: COLUMN forecast_item.fi_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_item.fi_id IS 'Primary key';


--
-- Name: COLUMN forecast_item.fi_text; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_item.fi_text IS 'Label of the i	tem';


--
-- Name: COLUMN forecast_item.fi_account; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_item.fi_account IS 'Accountancy entry';


--
-- Name: COLUMN forecast_item.fi_card; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_item.fi_card IS 'Card (fiche.f_id)';


--
-- Name: COLUMN forecast_item.fi_order; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_item.fi_order IS 'Order of showing (not used)';


--
-- Name: COLUMN forecast_item.fi_amount; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_item.fi_amount IS 'Amount';


--
-- Name: COLUMN forecast_item.fi_debit; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_item.fi_debit IS 'possible values are D or C';


--
-- Name: COLUMN forecast_item.fi_pid; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.forecast_item.fi_pid IS '0 for every month, or the value parm_periode.p_id ';


--
-- Name: forecast_item_fi_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.forecast_item_fi_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.forecast_item_fi_id_seq OWNER TO prisma;

--
-- Name: forecast_item_fi_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.forecast_item_fi_id_seq OWNED BY public.forecast_item.fi_id;


SET default_with_oids = true;

--
-- Name: form; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.form (
    fo_id integer DEFAULT nextval(('s_form'::text)::regclass) NOT NULL,
    fo_fr_id integer,
    fo_pos integer,
    fo_label text,
    fo_formula text
);


ALTER TABLE public.form OWNER TO prisma;

--
-- Name: TABLE form; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.form IS 'Forms content';


--
-- Name: formdef; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.formdef (
    fr_id integer DEFAULT nextval(('s_formdef'::text)::regclass) NOT NULL,
    fr_label text
);


ALTER TABLE public.formdef OWNER TO prisma;

SET default_with_oids = false;

--
-- Name: groupe_analytique; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.groupe_analytique (
    ga_id character varying(10) NOT NULL,
    pa_id integer,
    ga_description text
);


ALTER TABLE public.groupe_analytique OWNER TO prisma;

--
-- Name: historique_analytique_ha_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.historique_analytique_ha_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.historique_analytique_ha_id_seq OWNER TO prisma;

--
-- Name: info_def; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.info_def (
    id_type text NOT NULL,
    id_description text
);


ALTER TABLE public.info_def OWNER TO prisma;

--
-- Name: TABLE info_def; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.info_def IS 'Contains the types of additionnal info we can add to a operation';


--
-- Name: s_jnt_id; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jnt_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jnt_id OWNER TO prisma;

SET default_with_oids = true;

--
-- Name: jnt_fic_attr; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jnt_fic_attr (
    fd_id integer,
    ad_id integer,
    jnt_id bigint DEFAULT nextval('public.s_jnt_id'::regclass) NOT NULL,
    jnt_order integer NOT NULL
);


ALTER TABLE public.jnt_fic_attr OWNER TO prisma;

--
-- Name: TABLE jnt_fic_attr; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.jnt_fic_attr IS 'join between the family card and the attribut definition';


SET default_with_oids = false;

--
-- Name: jnt_letter; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jnt_letter (
    jl_id integer NOT NULL
);


ALTER TABLE public.jnt_letter OWNER TO prisma;

--
-- Name: jnt_letter_jl_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.jnt_letter_jl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jnt_letter_jl_id_seq OWNER TO prisma;

--
-- Name: jnt_letter_jl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.jnt_letter_jl_id_seq OWNED BY public.jnt_letter.jl_id;


SET default_with_oids = true;

--
-- Name: jrn; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jrn (
    jr_id integer DEFAULT nextval(('s_jrn'::text)::regclass) NOT NULL,
    jr_def_id integer NOT NULL,
    jr_montant numeric(20,4) NOT NULL,
    jr_comment text,
    jr_date date,
    jr_grpt_id integer NOT NULL,
    jr_internal text,
    jr_tech_date timestamp without time zone DEFAULT now() NOT NULL,
    jr_tech_per integer NOT NULL,
    jrn_ech date,
    jr_ech date,
    jr_rapt text,
    jr_valid boolean DEFAULT true,
    jr_opid integer,
    jr_c_opid integer,
    jr_pj oid,
    jr_pj_name text,
    jr_pj_type text,
    jr_pj_number text,
    jr_mt text,
    jr_date_paid date,
    jr_optype character varying(3) DEFAULT 'NOR'::character varying
);


ALTER TABLE public.jrn OWNER TO prisma;

--
-- Name: TABLE jrn; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.jrn IS 'Journal: content one line for a group of accountancy writing';


--
-- Name: COLUMN jrn.jr_optype; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.jrn.jr_optype IS 'Type of operation , NOR = NORMAL , OPE opening , EXT extourne, CLO closing';


--
-- Name: jrn_def; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jrn_def (
    jrn_def_id integer DEFAULT nextval(('s_jrn_def'::text)::regclass) NOT NULL,
    jrn_def_name text NOT NULL,
    jrn_def_class_deb text,
    jrn_def_class_cred text,
    jrn_def_fiche_deb text,
    jrn_def_fiche_cred text,
    jrn_deb_max_line integer DEFAULT 1,
    jrn_cred_max_line integer DEFAULT 1,
    jrn_def_ech boolean DEFAULT false,
    jrn_def_ech_lib text,
    jrn_def_type character(3) NOT NULL,
    jrn_def_code text NOT NULL,
    jrn_def_pj_pref text,
    jrn_def_bank bigint,
    jrn_def_num_op integer,
    jrn_def_description text,
    jrn_enable integer DEFAULT 1
);


ALTER TABLE public.jrn_def OWNER TO prisma;

--
-- Name: TABLE jrn_def; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.jrn_def IS 'Definition of a journal, his properties';


--
-- Name: COLUMN jrn_def.jrn_enable; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.jrn_def.jrn_enable IS 'Set to 1 if the ledger is enable ';


SET default_with_oids = false;

--
-- Name: jrn_info; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jrn_info (
    ji_id integer NOT NULL,
    jr_id integer NOT NULL,
    id_type text NOT NULL,
    ji_value text
);


ALTER TABLE public.jrn_info OWNER TO prisma;

--
-- Name: jrn_info_ji_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.jrn_info_ji_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jrn_info_ji_id_seq OWNER TO prisma;

--
-- Name: jrn_info_ji_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.jrn_info_ji_id_seq OWNED BY public.jrn_info.ji_id;


--
-- Name: jrn_note; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jrn_note (
    n_id integer NOT NULL,
    n_text text,
    jr_id bigint NOT NULL
);


ALTER TABLE public.jrn_note OWNER TO prisma;

--
-- Name: TABLE jrn_note; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.jrn_note IS 'Note about operation';


--
-- Name: jrn_note_n_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.jrn_note_n_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jrn_note_n_id_seq OWNER TO prisma;

--
-- Name: jrn_note_n_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.jrn_note_n_id_seq OWNED BY public.jrn_note.n_id;


--
-- Name: jrn_periode_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.jrn_periode_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.jrn_periode_id_seq OWNER TO prisma;

--
-- Name: jrn_periode; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jrn_periode (
    jrn_def_id integer NOT NULL,
    p_id integer NOT NULL,
    status text,
    id bigint DEFAULT nextval('public.jrn_periode_id_seq'::regclass) NOT NULL
);


ALTER TABLE public.jrn_periode OWNER TO prisma;

SET default_with_oids = true;

--
-- Name: jrn_rapt; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jrn_rapt (
    jra_id integer DEFAULT nextval(('s_jrn_rapt'::text)::regclass) NOT NULL,
    jr_id integer NOT NULL,
    jra_concerned integer NOT NULL
);


ALTER TABLE public.jrn_rapt OWNER TO prisma;

--
-- Name: TABLE jrn_rapt; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.jrn_rapt IS 'Rapprochement between operation';


--
-- Name: jrn_type; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jrn_type (
    jrn_type_id character(3) NOT NULL,
    jrn_desc text
);


ALTER TABLE public.jrn_type OWNER TO prisma;

--
-- Name: TABLE jrn_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.jrn_type IS 'Type of journal (Sell, Buy, Financial...)';


--
-- Name: jrnx; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.jrnx (
    j_id integer DEFAULT nextval(('s_jrn_op'::text)::regclass) NOT NULL,
    j_date date DEFAULT now(),
    j_montant numeric(20,4) DEFAULT 0,
    j_poste public.account_type NOT NULL,
    j_grpt integer NOT NULL,
    j_rapt text,
    j_jrn_def integer NOT NULL,
    j_debit boolean DEFAULT true,
    j_text text,
    j_centralized boolean DEFAULT false,
    j_internal text,
    j_tech_user text NOT NULL,
    j_tech_date timestamp without time zone DEFAULT now() NOT NULL,
    j_tech_per integer NOT NULL,
    j_qcode text,
    f_id bigint
);


ALTER TABLE public.jrnx OWNER TO prisma;

--
-- Name: TABLE jrnx; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.jrnx IS 'Journal: content one line for each accountancy writing';


SET default_with_oids = false;

--
-- Name: key_distribution; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.key_distribution (
    kd_id integer NOT NULL,
    kd_name text,
    kd_description text
);


ALTER TABLE public.key_distribution OWNER TO prisma;

--
-- Name: TABLE key_distribution; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.key_distribution IS 'Distribution key for analytic';


--
-- Name: COLUMN key_distribution.kd_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution.kd_id IS 'PK';


--
-- Name: COLUMN key_distribution.kd_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution.kd_name IS 'Name of the key';


--
-- Name: COLUMN key_distribution.kd_description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution.kd_description IS 'Description of the key';


--
-- Name: key_distribution_activity; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.key_distribution_activity (
    ka_id integer NOT NULL,
    ke_id bigint NOT NULL,
    po_id bigint,
    pa_id bigint NOT NULL
);


ALTER TABLE public.key_distribution_activity OWNER TO prisma;

--
-- Name: TABLE key_distribution_activity; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.key_distribution_activity IS 'Contains the analytic account';


--
-- Name: COLUMN key_distribution_activity.ka_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_activity.ka_id IS 'pk';


--
-- Name: COLUMN key_distribution_activity.ke_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_activity.ke_id IS 'fk to key_distribution_detail';


--
-- Name: COLUMN key_distribution_activity.po_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_activity.po_id IS 'fk to poste_analytique';


--
-- Name: COLUMN key_distribution_activity.pa_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_activity.pa_id IS 'fk to plan_analytique';


--
-- Name: key_distribution_activity_ka_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.key_distribution_activity_ka_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_distribution_activity_ka_id_seq OWNER TO prisma;

--
-- Name: key_distribution_activity_ka_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.key_distribution_activity_ka_id_seq OWNED BY public.key_distribution_activity.ka_id;


--
-- Name: key_distribution_detail; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.key_distribution_detail (
    ke_id integer NOT NULL,
    kd_id bigint NOT NULL,
    ke_row integer NOT NULL,
    ke_percent numeric(20,4) NOT NULL
);


ALTER TABLE public.key_distribution_detail OWNER TO prisma;

--
-- Name: TABLE key_distribution_detail; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.key_distribution_detail IS 'Row of activity and percent';


--
-- Name: COLUMN key_distribution_detail.ke_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_detail.ke_id IS 'pk';


--
-- Name: COLUMN key_distribution_detail.kd_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_detail.kd_id IS 'fk to key_distribution';


--
-- Name: COLUMN key_distribution_detail.ke_row; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_detail.ke_row IS 'group order';


--
-- Name: key_distribution_detail_ke_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.key_distribution_detail_ke_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_distribution_detail_ke_id_seq OWNER TO prisma;

--
-- Name: key_distribution_detail_ke_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.key_distribution_detail_ke_id_seq OWNED BY public.key_distribution_detail.ke_id;


--
-- Name: key_distribution_kd_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.key_distribution_kd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_distribution_kd_id_seq OWNER TO prisma;

--
-- Name: key_distribution_kd_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.key_distribution_kd_id_seq OWNED BY public.key_distribution.kd_id;


--
-- Name: key_distribution_ledger; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.key_distribution_ledger (
    kl_id integer NOT NULL,
    kd_id bigint NOT NULL,
    jrn_def_id bigint NOT NULL
);


ALTER TABLE public.key_distribution_ledger OWNER TO prisma;

--
-- Name: TABLE key_distribution_ledger; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.key_distribution_ledger IS 'Legder where the distribution key can be used';


--
-- Name: COLUMN key_distribution_ledger.kl_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_ledger.kl_id IS 'pk';


--
-- Name: COLUMN key_distribution_ledger.kd_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_ledger.kd_id IS 'fk to key_distribution';


--
-- Name: COLUMN key_distribution_ledger.jrn_def_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.key_distribution_ledger.jrn_def_id IS 'fk to jrnd_def, ledger where this key is available';


--
-- Name: key_distribution_ledger_kl_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.key_distribution_ledger_kl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.key_distribution_ledger_kl_id_seq OWNER TO prisma;

--
-- Name: key_distribution_ledger_kl_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.key_distribution_ledger_kl_id_seq OWNED BY public.key_distribution_ledger.kl_id;


--
-- Name: letter_cred; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.letter_cred (
    lc_id integer NOT NULL,
    j_id bigint NOT NULL,
    jl_id bigint NOT NULL
);


ALTER TABLE public.letter_cred OWNER TO prisma;

--
-- Name: letter_cred_lc_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.letter_cred_lc_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.letter_cred_lc_id_seq OWNER TO prisma;

--
-- Name: letter_cred_lc_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.letter_cred_lc_id_seq OWNED BY public.letter_cred.lc_id;


--
-- Name: letter_deb; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.letter_deb (
    ld_id integer NOT NULL,
    j_id bigint NOT NULL,
    jl_id bigint NOT NULL
);


ALTER TABLE public.letter_deb OWNER TO prisma;

--
-- Name: letter_deb_ld_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.letter_deb_ld_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.letter_deb_ld_id_seq OWNER TO prisma;

--
-- Name: letter_deb_ld_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.letter_deb_ld_id_seq OWNED BY public.letter_deb.ld_id;


--
-- Name: link_action_type; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.link_action_type (
    l_id bigint NOT NULL,
    l_desc character varying
);


ALTER TABLE public.link_action_type OWNER TO prisma;

--
-- Name: link_action_type_l_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.link_action_type_l_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.link_action_type_l_id_seq OWNER TO prisma;

--
-- Name: link_action_type_l_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.link_action_type_l_id_seq OWNED BY public.link_action_type.l_id;


--
-- Name: menu_default; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.menu_default (
    md_id integer NOT NULL,
    md_code text NOT NULL,
    me_code text NOT NULL
);


ALTER TABLE public.menu_default OWNER TO prisma;

--
-- Name: menu_default_md_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.menu_default_md_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.menu_default_md_id_seq OWNER TO prisma;

--
-- Name: menu_default_md_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.menu_default_md_id_seq OWNED BY public.menu_default.md_id;


--
-- Name: menu_ref; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.menu_ref (
    me_code text NOT NULL,
    me_menu text,
    me_file text,
    me_url text,
    me_description text,
    me_parameter text,
    me_javascript text,
    me_type character varying(2),
    me_description_etendue text
);


ALTER TABLE public.menu_ref OWNER TO prisma;

--
-- Name: COLUMN menu_ref.me_code; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.menu_ref.me_code IS 'Menu Code ';


--
-- Name: COLUMN menu_ref.me_menu; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.menu_ref.me_menu IS 'Label to display';


--
-- Name: COLUMN menu_ref.me_file; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.menu_ref.me_file IS 'if not empty file to include';


--
-- Name: COLUMN menu_ref.me_url; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.menu_ref.me_url IS 'url ';


--
-- Name: COLUMN menu_ref.me_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.menu_ref.me_type IS 'ME for menu
PR for Printing
SP for special meaning (ex: return to line)
PL for plugin';


--
-- Name: mod_payment; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.mod_payment (
    mp_id integer NOT NULL,
    mp_lib text NOT NULL,
    mp_jrn_def_id integer NOT NULL,
    mp_fd_id bigint,
    mp_qcode text,
    jrn_def_id bigint
);


ALTER TABLE public.mod_payment OWNER TO prisma;

--
-- Name: TABLE mod_payment; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.mod_payment IS 'Contains the different media of payment and the corresponding ledger';


--
-- Name: COLUMN mod_payment.jrn_def_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.mod_payment.jrn_def_id IS 'Ledger using this payment method';


--
-- Name: mod_payment_mp_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.mod_payment_mp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.mod_payment_mp_id_seq OWNER TO prisma;

--
-- Name: mod_payment_mp_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.mod_payment_mp_id_seq OWNED BY public.mod_payment.mp_id;


--
-- Name: op_def_op_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.op_def_op_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.op_def_op_seq OWNER TO prisma;

--
-- Name: op_predef; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.op_predef (
    od_id integer DEFAULT nextval('public.op_def_op_seq'::regclass) NOT NULL,
    jrn_def_id integer NOT NULL,
    od_name text NOT NULL,
    od_item integer NOT NULL,
    od_jrn_type text NOT NULL,
    od_direct boolean NOT NULL,
    od_description text
);


ALTER TABLE public.op_predef OWNER TO prisma;

--
-- Name: TABLE op_predef; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.op_predef IS 'predefined operation';


--
-- Name: COLUMN op_predef.jrn_def_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.op_predef.jrn_def_id IS 'jrn_id';


--
-- Name: COLUMN op_predef.od_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.op_predef.od_name IS 'name of the operation';


--
-- Name: op_predef_detail_opd_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.op_predef_detail_opd_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.op_predef_detail_opd_id_seq OWNER TO prisma;

--
-- Name: op_predef_detail; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.op_predef_detail (
    opd_id integer DEFAULT nextval('public.op_predef_detail_opd_id_seq'::regclass) NOT NULL,
    od_id integer NOT NULL,
    opd_poste text NOT NULL,
    opd_amount numeric(20,4),
    opd_tva_id integer,
    opd_quantity numeric(20,4),
    opd_debit boolean NOT NULL,
    opd_tva_amount numeric(20,4),
    opd_comment text,
    opd_qc boolean
);


ALTER TABLE public.op_predef_detail OWNER TO prisma;

--
-- Name: TABLE op_predef_detail; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.op_predef_detail IS 'contains the detail of predefined operations';


--
-- Name: s_oa_group; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_oa_group
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_oa_group OWNER TO prisma;

--
-- Name: operation_analytique; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.operation_analytique (
    oa_id integer DEFAULT nextval('public.historique_analytique_ha_id_seq'::regclass) NOT NULL,
    po_id integer NOT NULL,
    oa_amount numeric(20,4) NOT NULL,
    oa_description text,
    oa_debit boolean DEFAULT true NOT NULL,
    j_id integer,
    oa_group integer DEFAULT nextval('public.s_oa_group'::regclass) NOT NULL,
    oa_date date NOT NULL,
    oa_row integer,
    oa_jrnx_id_source bigint,
    oa_positive character(1) DEFAULT 'Y'::bpchar NOT NULL,
    f_id bigint,
    CONSTRAINT operation_analytique_oa_amount_check CHECK ((oa_amount >= (0)::numeric))
);


ALTER TABLE public.operation_analytique OWNER TO prisma;

--
-- Name: TABLE operation_analytique; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.operation_analytique IS 'History of the analytic account';


--
-- Name: COLUMN operation_analytique.oa_jrnx_id_source; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.operation_analytique.oa_jrnx_id_source IS 'jrnx.j_id source of this amount, this amount is computed from an amount giving a ND VAT.Normally NULL  is there is no ND VAT.';


--
-- Name: COLUMN operation_analytique.oa_positive; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.operation_analytique.oa_positive IS 'Sign of the amount';


--
-- Name: COLUMN operation_analytique.f_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.operation_analytique.f_id IS 'FK to fiche.f_id , used only with ODS';


SET default_with_oids = true;

--
-- Name: parameter; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.parameter (
    pr_id text NOT NULL,
    pr_value text
);


ALTER TABLE public.parameter OWNER TO prisma;

--
-- Name: TABLE parameter; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.parameter IS 'parameter of the company';


--
-- Name: parm_code; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.parm_code (
    p_code text NOT NULL,
    p_value text,
    p_comment text
);


ALTER TABLE public.parm_code OWNER TO prisma;

--
-- Name: parm_money; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.parm_money (
    pm_id integer DEFAULT nextval(('s_currency'::text)::regclass),
    pm_code character(3) NOT NULL,
    pm_rate numeric(20,4)
);


ALTER TABLE public.parm_money OWNER TO prisma;

--
-- Name: TABLE parm_money; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.parm_money IS 'Currency conversion';


--
-- Name: parm_periode; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.parm_periode (
    p_id integer DEFAULT nextval(('s_periode'::text)::regclass) NOT NULL,
    p_start date NOT NULL,
    p_end date NOT NULL,
    p_exercice text DEFAULT to_char(now(), 'YYYY'::text) NOT NULL,
    p_closed boolean DEFAULT false,
    p_central boolean DEFAULT false,
    CONSTRAINT parm_periode_check CHECK ((p_end >= p_start))
);


ALTER TABLE public.parm_periode OWNER TO prisma;

--
-- Name: TABLE parm_periode; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.parm_periode IS 'Periode definition';


SET default_with_oids = false;

--
-- Name: parm_poste; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.parm_poste (
    p_value public.account_type NOT NULL,
    p_type text NOT NULL
);


ALTER TABLE public.parm_poste OWNER TO prisma;

--
-- Name: TABLE parm_poste; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.parm_poste IS 'Contains data for finding is the type of the account (asset)';


--
-- Name: plan_analytique_pa_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.plan_analytique_pa_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.plan_analytique_pa_id_seq OWNER TO prisma;

--
-- Name: plan_analytique; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.plan_analytique (
    pa_id integer DEFAULT nextval('public.plan_analytique_pa_id_seq'::regclass) NOT NULL,
    pa_name text DEFAULT 'Sans Nom'::text NOT NULL,
    pa_description text
);


ALTER TABLE public.plan_analytique OWNER TO prisma;

--
-- Name: TABLE plan_analytique; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.plan_analytique IS 'Plan Analytique (max 5)';


--
-- Name: poste_analytique_po_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.poste_analytique_po_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.poste_analytique_po_id_seq OWNER TO prisma;

--
-- Name: poste_analytique; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.poste_analytique (
    po_id integer DEFAULT nextval('public.poste_analytique_po_id_seq'::regclass) NOT NULL,
    po_name text NOT NULL,
    pa_id integer NOT NULL,
    po_amount numeric(20,4) DEFAULT 0.0 NOT NULL,
    po_description text,
    ga_id character varying(10)
);


ALTER TABLE public.poste_analytique OWNER TO prisma;

--
-- Name: TABLE poste_analytique; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.poste_analytique IS 'Poste Analytique';


--
-- Name: profile; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.profile (
    p_name text NOT NULL,
    p_id integer NOT NULL,
    p_desc text,
    with_calc boolean DEFAULT true,
    with_direct_form boolean DEFAULT true
);


ALTER TABLE public.profile OWNER TO prisma;

--
-- Name: TABLE profile; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.profile IS 'Available profile ';


--
-- Name: COLUMN profile.p_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile.p_name IS 'Name of the profile';


--
-- Name: COLUMN profile.p_desc; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile.p_desc IS 'description of the profile';


--
-- Name: COLUMN profile.with_calc; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile.with_calc IS 'show the calculator';


--
-- Name: COLUMN profile.with_direct_form; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile.with_direct_form IS 'show the direct form';


--
-- Name: profile_menu; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.profile_menu (
    pm_id integer NOT NULL,
    me_code text,
    me_code_dep text,
    p_id integer,
    p_order integer,
    p_type_display text NOT NULL,
    pm_default integer,
    pm_id_dep bigint
);


ALTER TABLE public.profile_menu OWNER TO prisma;

--
-- Name: TABLE profile_menu; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.profile_menu IS 'Join  between the profile and the menu ';


--
-- Name: COLUMN profile_menu.me_code_dep; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_menu.me_code_dep IS 'menu code dependency';


--
-- Name: COLUMN profile_menu.p_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_menu.p_id IS 'link to profile';


--
-- Name: COLUMN profile_menu.p_order; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_menu.p_order IS 'order of displaying menu';


--
-- Name: COLUMN profile_menu.p_type_display; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_menu.p_type_display IS 'M is a module
E is a menu
S is a select (for plugin)';


--
-- Name: COLUMN profile_menu.pm_default; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_menu.pm_default IS 'default menu';


--
-- Name: COLUMN profile_menu.pm_id_dep; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_menu.pm_id_dep IS 'parent of this menu item';


--
-- Name: profile_menu_pm_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.profile_menu_pm_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_menu_pm_id_seq OWNER TO prisma;

--
-- Name: profile_menu_pm_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.profile_menu_pm_id_seq OWNED BY public.profile_menu.pm_id;


--
-- Name: profile_menu_type; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.profile_menu_type (
    pm_type text NOT NULL,
    pm_desc text
);


ALTER TABLE public.profile_menu_type OWNER TO prisma;

--
-- Name: profile_p_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.profile_p_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_p_id_seq OWNER TO prisma;

--
-- Name: profile_p_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.profile_p_id_seq OWNED BY public.profile.p_id;


--
-- Name: profile_sec_repository; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.profile_sec_repository (
    ur_id bigint NOT NULL,
    p_id bigint,
    r_id bigint,
    ur_right character(1),
    CONSTRAINT user_sec_profile_ur_right_check CHECK ((ur_right = ANY (ARRAY['R'::bpchar, 'W'::bpchar])))
);


ALTER TABLE public.profile_sec_repository OWNER TO prisma;

--
-- Name: TABLE profile_sec_repository; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.profile_sec_repository IS 'Available profile for user';


--
-- Name: COLUMN profile_sec_repository.ur_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_sec_repository.ur_id IS 'pk';


--
-- Name: COLUMN profile_sec_repository.p_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_sec_repository.p_id IS 'fk to profile';


--
-- Name: COLUMN profile_sec_repository.r_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_sec_repository.r_id IS 'fk to stock_repository';


--
-- Name: COLUMN profile_sec_repository.ur_right; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_sec_repository.ur_right IS 'Type of right : R for readonly W for write';


--
-- Name: profile_sec_repository_ur_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.profile_sec_repository_ur_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_sec_repository_ur_id_seq OWNER TO prisma;

--
-- Name: profile_sec_repository_ur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.profile_sec_repository_ur_id_seq OWNED BY public.profile_sec_repository.ur_id;


--
-- Name: profile_user; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.profile_user (
    user_name text NOT NULL,
    pu_id integer NOT NULL,
    p_id integer
);


ALTER TABLE public.profile_user OWNER TO prisma;

--
-- Name: TABLE profile_user; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.profile_user IS 'Contains the available profile for users';


--
-- Name: COLUMN profile_user.user_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_user.user_name IS 'fk to available_user : login';


--
-- Name: COLUMN profile_user.p_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.profile_user.p_id IS 'fk to profile';


--
-- Name: profile_user_pu_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.profile_user_pu_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.profile_user_pu_id_seq OWNER TO prisma;

--
-- Name: profile_user_pu_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.profile_user_pu_id_seq OWNED BY public.profile_user.pu_id;


--
-- Name: quant_fin; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.quant_fin (
    qf_id bigint NOT NULL,
    qf_bank bigint,
    jr_id bigint,
    qf_other bigint,
    qf_amount numeric(20,4) DEFAULT 0
);


ALTER TABLE public.quant_fin OWNER TO prisma;

--
-- Name: TABLE quant_fin; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.quant_fin IS 'Simple operation for financial';


--
-- Name: quant_fin_qf_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.quant_fin_qf_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.quant_fin_qf_id_seq OWNER TO prisma;

--
-- Name: quant_fin_qf_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.quant_fin_qf_id_seq OWNED BY public.quant_fin.qf_id;


--
-- Name: quant_purchase; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.quant_purchase (
    qp_id integer DEFAULT nextval(('s_quantity'::text)::regclass) NOT NULL,
    qp_internal text,
    j_id integer NOT NULL,
    qp_fiche integer NOT NULL,
    qp_quantite numeric(20,4) NOT NULL,
    qp_price numeric(20,4),
    qp_vat numeric(20,4) DEFAULT 0.0,
    qp_vat_code integer,
    qp_nd_amount numeric(20,4) DEFAULT 0.0,
    qp_nd_tva numeric(20,4) DEFAULT 0.0,
    qp_nd_tva_recup numeric(20,4) DEFAULT 0.0,
    qp_supplier integer NOT NULL,
    qp_valid character(1) DEFAULT 'Y'::bpchar NOT NULL,
    qp_dep_priv numeric(20,4) DEFAULT 0.0,
    qp_vat_sided numeric(20,4) DEFAULT 0.0,
    qp_unit numeric(20,4) DEFAULT 0
);


ALTER TABLE public.quant_purchase OWNER TO prisma;

--
-- Name: COLUMN quant_purchase.qp_vat_sided; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.quant_purchase.qp_vat_sided IS 'amount of the VAT which avoid VAT, case of the VAT which add the same amount at the deb and cred';


SET default_with_oids = true;

--
-- Name: quant_sold; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.quant_sold (
    qs_id integer DEFAULT nextval(('s_quantity'::text)::regclass) NOT NULL,
    qs_internal text,
    qs_fiche integer NOT NULL,
    qs_quantite numeric(20,4) NOT NULL,
    qs_price numeric(20,4),
    qs_vat numeric(20,4),
    qs_vat_code integer,
    qs_client integer NOT NULL,
    qs_valid character(1) DEFAULT 'Y'::bpchar NOT NULL,
    j_id integer NOT NULL,
    qs_vat_sided numeric(20,4) DEFAULT 0.0,
    qs_unit numeric(20,4) DEFAULT 0
);


ALTER TABLE public.quant_sold OWNER TO prisma;

--
-- Name: TABLE quant_sold; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.quant_sold IS 'Contains about invoice for customer';


--
-- Name: s_attr_def; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_attr_def
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_attr_def OWNER TO prisma;

--
-- Name: s_cbc; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_cbc
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_cbc OWNER TO prisma;

--
-- Name: s_central; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_central
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_central OWNER TO prisma;

--
-- Name: s_central_order; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_central_order
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_central_order OWNER TO prisma;

--
-- Name: s_centralized; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_centralized
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_centralized OWNER TO prisma;

--
-- Name: s_currency; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_currency
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_currency OWNER TO prisma;

--
-- Name: s_fdef; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_fdef
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_fdef OWNER TO prisma;

--
-- Name: s_fiche; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_fiche
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_fiche OWNER TO prisma;

--
-- Name: s_fiche_def_ref; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_fiche_def_ref
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_fiche_def_ref OWNER TO prisma;

--
-- Name: s_form; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_form
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_form OWNER TO prisma;

--
-- Name: s_formdef; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_formdef
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_formdef OWNER TO prisma;

--
-- Name: s_grpt; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_grpt
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_grpt OWNER TO prisma;

--
-- Name: s_idef; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_idef
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_idef OWNER TO prisma;

--
-- Name: s_internal; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_internal
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_internal OWNER TO prisma;

--
-- Name: s_invoice; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_invoice
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_invoice OWNER TO prisma;

--
-- Name: s_isup; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_isup
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_isup OWNER TO prisma;

--
-- Name: s_jnt_fic_att_value; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jnt_fic_att_value
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jnt_fic_att_value OWNER TO prisma;

--
-- Name: s_jrn; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn OWNER TO prisma;

--
-- Name: s_jrn_1; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_1 OWNER TO prisma;

--
-- Name: s_jrn_2; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_2 OWNER TO prisma;

--
-- Name: s_jrn_3; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_3
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_3 OWNER TO prisma;

--
-- Name: s_jrn_4; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_4
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_4 OWNER TO prisma;

--
-- Name: s_jrn_def; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_def
    START WITH 5
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_def OWNER TO prisma;

--
-- Name: s_jrn_op; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_op
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_op OWNER TO prisma;

--
-- Name: s_jrn_pj1; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_pj1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_pj1 OWNER TO prisma;

--
-- Name: s_jrn_pj2; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_pj2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_pj2 OWNER TO prisma;

--
-- Name: s_jrn_pj3; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_pj3
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_pj3 OWNER TO prisma;

--
-- Name: s_jrn_pj4; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_pj4
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_pj4 OWNER TO prisma;

--
-- Name: s_jrn_rapt; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrn_rapt
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrn_rapt OWNER TO prisma;

--
-- Name: s_jrnaction; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrnaction
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrnaction OWNER TO prisma;

--
-- Name: s_jrnx; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_jrnx
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_jrnx OWNER TO prisma;

--
-- Name: s_periode; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_periode
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_periode OWNER TO prisma;

--
-- Name: s_quantity; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_quantity
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_quantity OWNER TO prisma;

--
-- Name: s_stock_goods; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_stock_goods
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_stock_goods OWNER TO prisma;

--
-- Name: s_tva; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_tva
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_tva OWNER TO prisma;

--
-- Name: s_user_act; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_user_act
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_user_act OWNER TO prisma;

--
-- Name: s_user_jrn; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.s_user_jrn
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.s_user_jrn OWNER TO prisma;

--
-- Name: seq_bud_hypothese_bh_id; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_bud_hypothese_bh_id
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_bud_hypothese_bh_id OWNER TO prisma;

--
-- Name: seq_doc_type_1; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_1
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_1 OWNER TO prisma;

--
-- Name: seq_doc_type_10; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_10
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_10 OWNER TO prisma;

--
-- Name: seq_doc_type_2; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_2
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_2 OWNER TO prisma;

--
-- Name: seq_doc_type_20; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_20
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_20 OWNER TO prisma;

--
-- Name: seq_doc_type_21; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_21
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_21 OWNER TO prisma;

--
-- Name: seq_doc_type_22; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_22
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_22 OWNER TO prisma;

--
-- Name: seq_doc_type_3; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_3
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_3 OWNER TO prisma;

--
-- Name: seq_doc_type_4; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_4
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_4 OWNER TO prisma;

--
-- Name: seq_doc_type_5; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_5
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_5 OWNER TO prisma;

--
-- Name: seq_doc_type_6; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_6
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_6 OWNER TO prisma;

--
-- Name: seq_doc_type_7; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_7
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_7 OWNER TO prisma;

--
-- Name: seq_doc_type_8; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_8
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_8 OWNER TO prisma;

--
-- Name: seq_doc_type_9; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.seq_doc_type_9
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.seq_doc_type_9 OWNER TO prisma;

SET default_with_oids = false;

--
-- Name: stock_change; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.stock_change (
    c_id bigint NOT NULL,
    c_comment text,
    c_date date,
    tech_user text,
    r_id bigint,
    tech_date time without time zone DEFAULT now() NOT NULL
);


ALTER TABLE public.stock_change OWNER TO prisma;

--
-- Name: stock_change_c_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.stock_change_c_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stock_change_c_id_seq OWNER TO prisma;

--
-- Name: stock_change_c_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.stock_change_c_id_seq OWNED BY public.stock_change.c_id;


SET default_with_oids = true;

--
-- Name: stock_goods; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.stock_goods (
    sg_id integer DEFAULT nextval(('s_stock_goods'::text)::regclass) NOT NULL,
    j_id integer,
    f_id integer,
    sg_code text,
    sg_quantity numeric(8,4) DEFAULT 0,
    sg_type character(1) DEFAULT 'c'::bpchar NOT NULL,
    sg_date date,
    sg_tech_date date DEFAULT now(),
    sg_tech_user text,
    sg_comment character varying(80),
    sg_exercice character varying(4),
    r_id bigint,
    c_id bigint,
    CONSTRAINT stock_goods_sg_type CHECK (((sg_type = 'c'::bpchar) OR (sg_type = 'd'::bpchar)))
);


ALTER TABLE public.stock_goods OWNER TO prisma;

--
-- Name: TABLE stock_goods; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.stock_goods IS 'About the goods';


SET default_with_oids = false;

--
-- Name: stock_repository; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.stock_repository (
    r_id bigint NOT NULL,
    r_name text,
    r_adress text,
    r_country text,
    r_city text,
    r_phone text
);


ALTER TABLE public.stock_repository OWNER TO prisma;

--
-- Name: TABLE stock_repository; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.stock_repository IS 'stock repository';


--
-- Name: COLUMN stock_repository.r_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.stock_repository.r_id IS 'pk';


--
-- Name: COLUMN stock_repository.r_name; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.stock_repository.r_name IS 'name of the stock';


--
-- Name: COLUMN stock_repository.r_adress; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.stock_repository.r_adress IS 'adress of the stock';


--
-- Name: COLUMN stock_repository.r_country; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.stock_repository.r_country IS 'country of the stock';


--
-- Name: COLUMN stock_repository.r_city; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.stock_repository.r_city IS 'City of the stock';


--
-- Name: COLUMN stock_repository.r_phone; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.stock_repository.r_phone IS 'Phone number';


--
-- Name: stock_repository_r_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.stock_repository_r_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.stock_repository_r_id_seq OWNER TO prisma;

--
-- Name: stock_repository_r_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.stock_repository_r_id_seq OWNED BY public.stock_repository.r_id;


--
-- Name: tags; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.tags (
    t_id integer NOT NULL,
    t_tag text NOT NULL,
    t_description text,
    t_actif character(1) DEFAULT 'Y'::bpchar,
    CONSTRAINT tags_check CHECK ((t_actif = ANY (ARRAY['N'::bpchar, 'Y'::bpchar])))
);


ALTER TABLE public.tags OWNER TO prisma;

--
-- Name: COLUMN tags.t_actif; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.tags.t_actif IS 'Y if the tag is activate and can be used ';


--
-- Name: tags_t_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.tags_t_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tags_t_id_seq OWNER TO prisma;

--
-- Name: tags_t_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.tags_t_id_seq OWNED BY public.tags.t_id;


--
-- Name: tmp_pcmn_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.tmp_pcmn_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tmp_pcmn_id_seq OWNER TO prisma;

SET default_with_oids = true;

--
-- Name: tmp_pcmn; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.tmp_pcmn (
    pcm_val public.account_type NOT NULL,
    pcm_lib text,
    pcm_val_parent public.account_type DEFAULT 0,
    pcm_type text,
    id bigint DEFAULT nextval('public.tmp_pcmn_id_seq'::regclass) NOT NULL,
    pcm_direct_use character varying(1) DEFAULT 'Y'::character varying NOT NULL,
    CONSTRAINT pcm_direct_use_ck CHECK (((pcm_direct_use)::text = ANY (ARRAY[('Y'::character varying)::text, ('N'::character varying)::text])))
);


ALTER TABLE public.tmp_pcmn OWNER TO prisma;

--
-- Name: TABLE tmp_pcmn; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.tmp_pcmn IS 'Plan comptable minimum normalisé';


--
-- Name: COLUMN tmp_pcmn.id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.tmp_pcmn.id IS 'allow to identify the row, it is unique and not null (pseudo pk)';


--
-- Name: COLUMN tmp_pcmn.pcm_direct_use; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.tmp_pcmn.pcm_direct_use IS 'Value are N or Y , N cannot be used directly , not even through a card';


SET default_with_oids = false;

--
-- Name: tmp_stockgood; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.tmp_stockgood (
    s_id bigint NOT NULL,
    s_date timestamp without time zone DEFAULT now()
);


ALTER TABLE public.tmp_stockgood OWNER TO prisma;

--
-- Name: tmp_stockgood_detail; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.tmp_stockgood_detail (
    d_id bigint NOT NULL,
    s_id bigint,
    sg_code text,
    s_qin numeric(20,4),
    s_qout numeric(20,4),
    r_id bigint,
    f_id bigint
);


ALTER TABLE public.tmp_stockgood_detail OWNER TO prisma;

--
-- Name: tmp_stockgood_detail_d_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.tmp_stockgood_detail_d_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tmp_stockgood_detail_d_id_seq OWNER TO prisma;

--
-- Name: tmp_stockgood_detail_d_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.tmp_stockgood_detail_d_id_seq OWNED BY public.tmp_stockgood_detail.d_id;


--
-- Name: tmp_stockgood_s_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.tmp_stockgood_s_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.tmp_stockgood_s_id_seq OWNER TO prisma;

--
-- Name: tmp_stockgood_s_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.tmp_stockgood_s_id_seq OWNED BY public.tmp_stockgood.s_id;


--
-- Name: todo_list_tl_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.todo_list_tl_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todo_list_tl_id_seq OWNER TO prisma;

--
-- Name: todo_list; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.todo_list (
    tl_id integer DEFAULT nextval('public.todo_list_tl_id_seq'::regclass) NOT NULL,
    tl_date date NOT NULL,
    tl_title text NOT NULL,
    tl_desc text,
    use_login text NOT NULL,
    is_public character(1) DEFAULT 'N'::bpchar NOT NULL,
    CONSTRAINT ck_is_public CHECK ((is_public = ANY (ARRAY['Y'::bpchar, 'N'::bpchar])))
);


ALTER TABLE public.todo_list OWNER TO prisma;

--
-- Name: TABLE todo_list; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.todo_list IS 'Todo list';


--
-- Name: COLUMN todo_list.is_public; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.todo_list.is_public IS 'Flag for the public parameter';


--
-- Name: todo_list_shared; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.todo_list_shared (
    id integer NOT NULL,
    todo_list_id integer NOT NULL,
    use_login text NOT NULL
);


ALTER TABLE public.todo_list_shared OWNER TO prisma;

--
-- Name: TABLE todo_list_shared; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.todo_list_shared IS 'Note of todo list shared with other users';


--
-- Name: COLUMN todo_list_shared.todo_list_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.todo_list_shared.todo_list_id IS 'fk to todo_list';


--
-- Name: COLUMN todo_list_shared.use_login; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.todo_list_shared.use_login IS 'user login';


--
-- Name: todo_list_shared_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.todo_list_shared_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.todo_list_shared_id_seq OWNER TO prisma;

--
-- Name: todo_list_shared_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.todo_list_shared_id_seq OWNED BY public.todo_list_shared.id;


--
-- Name: uos_pk_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.uos_pk_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.uos_pk_seq OWNER TO prisma;

--
-- Name: tool_uos; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.tool_uos (
    uos_value bigint DEFAULT nextval('public.uos_pk_seq'::regclass) NOT NULL
);


ALTER TABLE public.tool_uos OWNER TO prisma;

SET default_with_oids = true;

--
-- Name: tva_rate; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.tva_rate (
    tva_id integer DEFAULT nextval('public.s_tva'::regclass) NOT NULL,
    tva_label text NOT NULL,
    tva_rate numeric(8,4) DEFAULT 0.0 NOT NULL,
    tva_comment text,
    tva_poste text,
    tva_both_side integer DEFAULT 0
);


ALTER TABLE public.tva_rate OWNER TO prisma;

--
-- Name: TABLE tva_rate; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.tva_rate IS 'Rate of vat';


SET default_with_oids = false;

--
-- Name: user_active_security; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.user_active_security (
    id integer NOT NULL,
    us_login text NOT NULL,
    us_ledger character varying(1) NOT NULL,
    us_action character varying(1) NOT NULL,
    CONSTRAINT user_active_security_action_check CHECK (((us_action)::text = ANY (ARRAY[('Y'::character varying)::text, ('N'::character varying)::text]))),
    CONSTRAINT user_active_security_ledger_check CHECK (((us_ledger)::text = ANY (ARRAY[('Y'::character varying)::text, ('N'::character varying)::text])))
);


ALTER TABLE public.user_active_security OWNER TO prisma;

--
-- Name: COLUMN user_active_security.us_login; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_active_security.us_login IS 'user''s login';


--
-- Name: COLUMN user_active_security.us_ledger; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_active_security.us_ledger IS 'Flag Security for ledger';


--
-- Name: COLUMN user_active_security.us_action; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_active_security.us_action IS 'Security for action';


--
-- Name: user_active_security_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.user_active_security_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_active_security_id_seq OWNER TO prisma;

--
-- Name: user_active_security_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.user_active_security_id_seq OWNED BY public.user_active_security.id;


--
-- Name: user_filter; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.user_filter (
    id bigint NOT NULL,
    login text,
    nb_jrn integer,
    date_start character varying(10),
    date_end character varying(10),
    description text,
    amount_min numeric(20,4),
    amount_max numeric(20,4),
    qcode text,
    accounting text,
    r_jrn text,
    date_paid_start character varying(10),
    date_paid_end character varying(10),
    ledger_type character varying(5),
    all_ledger integer,
    filter_name text NOT NULL,
    unpaid character varying
);


ALTER TABLE public.user_filter OWNER TO prisma;

--
-- Name: user_filter_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.user_filter_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_filter_id_seq OWNER TO prisma;

--
-- Name: user_filter_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.user_filter_id_seq OWNED BY public.user_filter.id;


SET default_with_oids = true;

--
-- Name: user_local_pref; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.user_local_pref (
    user_id text NOT NULL,
    parameter_type text NOT NULL,
    parameter_value text
);


ALTER TABLE public.user_local_pref OWNER TO prisma;

--
-- Name: TABLE user_local_pref; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.user_local_pref IS 'The user''s local parameter ';


--
-- Name: COLUMN user_local_pref.user_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_local_pref.user_id IS 'user''s login ';


--
-- Name: COLUMN user_local_pref.parameter_type; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_local_pref.parameter_type IS 'the type of parameter ';


--
-- Name: COLUMN user_local_pref.parameter_value; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_local_pref.parameter_value IS 'the value of parameter ';


--
-- Name: user_sec_act; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.user_sec_act (
    ua_id integer DEFAULT nextval(('s_user_act'::text)::regclass) NOT NULL,
    ua_login text,
    ua_act_id integer
);


ALTER TABLE public.user_sec_act OWNER TO prisma;

SET default_with_oids = false;

--
-- Name: user_sec_action_profile; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.user_sec_action_profile (
    ua_id bigint NOT NULL,
    p_id bigint,
    p_granted bigint,
    ua_right character(1),
    CONSTRAINT user_sec_action_profile_ua_right_check CHECK ((ua_right = ANY (ARRAY['R'::bpchar, 'W'::bpchar])))
);


ALTER TABLE public.user_sec_action_profile OWNER TO prisma;

--
-- Name: TABLE user_sec_action_profile; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TABLE public.user_sec_action_profile IS 'Available profile for user';


--
-- Name: COLUMN user_sec_action_profile.ua_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_sec_action_profile.ua_id IS 'pk';


--
-- Name: COLUMN user_sec_action_profile.p_id; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_sec_action_profile.p_id IS 'fk to profile';


--
-- Name: COLUMN user_sec_action_profile.ua_right; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.user_sec_action_profile.ua_right IS 'Type of right : R for readonly W for write';


--
-- Name: user_sec_action_profile_ua_id_seq; Type: SEQUENCE; Schema: public; Owner: prisma
--

CREATE SEQUENCE public.user_sec_action_profile_ua_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.user_sec_action_profile_ua_id_seq OWNER TO prisma;

--
-- Name: user_sec_action_profile_ua_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: prisma
--

ALTER SEQUENCE public.user_sec_action_profile_ua_id_seq OWNED BY public.user_sec_action_profile.ua_id;


SET default_with_oids = true;

--
-- Name: user_sec_jrn; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.user_sec_jrn (
    uj_id integer DEFAULT nextval(('s_user_jrn'::text)::regclass) NOT NULL,
    uj_login text,
    uj_jrn_id integer,
    uj_priv text
);


ALTER TABLE public.user_sec_jrn OWNER TO prisma;

--
-- Name: v_all_menu; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_all_menu AS
 SELECT pm.me_code,
    pm.pm_id,
    pm.me_code_dep,
    pm.p_order,
    pm.p_type_display,
    p.p_name,
    p.p_desc,
    mr.me_menu,
    mr.me_file,
    mr.me_url,
    mr.me_parameter,
    mr.me_javascript,
    mr.me_type,
    pm.p_id,
    mr.me_description
   FROM ((public.profile_menu pm
     JOIN public.profile p ON ((p.p_id = pm.p_id)))
     JOIN public.menu_ref mr USING (me_code))
  ORDER BY pm.p_order;


ALTER TABLE public.v_all_menu OWNER TO prisma;

--
-- Name: vw_fiche_attr; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.vw_fiche_attr AS
 SELECT a.f_id,
    a.fd_id,
    a.ad_value AS vw_name,
    k.ad_value AS vw_first_name,
    b.ad_value AS vw_sell,
    c.ad_value AS vw_buy,
    d.ad_value AS tva_code,
    tva_rate.tva_id,
    tva_rate.tva_rate,
    tva_rate.tva_label,
    e.ad_value AS vw_addr,
    f.ad_value AS vw_cp,
    j.ad_value AS quick_code,
    h.ad_value AS vw_description,
    i.ad_value AS tva_num,
    fiche_def.frd_id,
    l.ad_value AS accounting
   FROM ((((((((((((( SELECT fiche.f_id,
            fiche.fd_id,
            fiche_detail.ad_value
           FROM (public.fiche
             LEFT JOIN public.fiche_detail USING (f_id))
          WHERE (fiche_detail.ad_id = 1)) a
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 6)) b ON ((a.f_id = b.f_id)))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 7)) c ON ((a.f_id = c.f_id)))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 2)) d ON ((a.f_id = d.f_id)))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 14)) e ON ((a.f_id = e.f_id)))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 15)) f ON ((a.f_id = f.f_id)))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 23)) j ON ((a.f_id = j.f_id)))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 9)) h ON ((a.f_id = h.f_id)))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 13)) i ON ((a.f_id = i.f_id)))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 32)) k ON ((a.f_id = k.f_id)))
     LEFT JOIN public.tva_rate ON ((d.ad_value = (tva_rate.tva_id)::text)))
     JOIN public.fiche_def USING (fd_id))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 5)) l ON ((a.f_id = l.f_id)));


ALTER TABLE public.vw_fiche_attr OWNER TO prisma;

--
-- Name: vw_fiche_name; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.vw_fiche_name AS
 SELECT fiche_detail.f_id,
    fiche_detail.ad_value AS name
   FROM public.fiche_detail
  WHERE (fiche_detail.ad_id = 1);


ALTER TABLE public.vw_fiche_name OWNER TO prisma;

--
-- Name: v_detail_purchase; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_detail_purchase AS
 WITH m AS (
         SELECT sum(quant_purchase_1.qp_price) AS htva,
            sum(quant_purchase_1.qp_vat) AS tot_vat,
            sum(quant_purchase_1.qp_vat_sided) AS tot_tva_np,
            jrn_1.jr_id
           FROM ((public.quant_purchase quant_purchase_1
             JOIN public.jrnx jrnx_1 USING (j_id))
             JOIN public.jrn jrn_1 ON ((jrnx_1.j_grpt = jrn_1.jr_grpt_id)))
          GROUP BY jrn_1.jr_id
        )
 SELECT jrn.jr_id,
    jrn.jr_date,
    jrn.jr_date_paid,
    jrn.jr_ech,
    jrn.jr_tech_per,
    jrn.jr_comment,
    jrn.jr_pj_number,
    jrn.jr_internal,
    jrn.jr_def_id,
    jrnx.j_poste,
    jrnx.j_text,
    jrnx.j_qcode,
    quant_purchase.qp_fiche AS item_card,
    a.name AS item_name,
    quant_purchase.qp_supplier,
    b.vw_name AS tiers_name,
    b.quick_code,
    tva_rate.tva_label,
    tva_rate.tva_comment,
    tva_rate.tva_both_side,
    quant_purchase.qp_vat_sided AS vat_sided,
    quant_purchase.qp_vat_code AS vat_code,
    quant_purchase.qp_vat AS vat,
    quant_purchase.qp_price AS price,
    quant_purchase.qp_quantite AS quantity,
    (quant_purchase.qp_price / quant_purchase.qp_quantite) AS price_per_unit,
    quant_purchase.qp_nd_amount AS non_ded_amount,
    quant_purchase.qp_nd_tva AS non_ded_tva,
    quant_purchase.qp_nd_tva_recup AS non_ded_tva_recup,
    m.htva,
    m.tot_vat,
    m.tot_tva_np
   FROM ((((((public.jrn
     JOIN public.jrnx ON ((jrn.jr_grpt_id = jrnx.j_grpt)))
     JOIN public.quant_purchase USING (j_id))
     JOIN public.vw_fiche_name a ON ((quant_purchase.qp_fiche = a.f_id)))
     JOIN public.vw_fiche_attr b ON ((quant_purchase.qp_supplier = b.f_id)))
     JOIN public.tva_rate ON ((quant_purchase.qp_vat_code = tva_rate.tva_id)))
     JOIN m ON ((m.jr_id = jrn.jr_id)));


ALTER TABLE public.v_detail_purchase OWNER TO prisma;

--
-- Name: v_detail_sale; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_detail_sale AS
 WITH m AS (
         SELECT sum(quant_sold_1.qs_price) AS htva,
            sum(quant_sold_1.qs_vat) AS tot_vat,
            sum(quant_sold_1.qs_vat_sided) AS tot_tva_np,
            jrn_1.jr_id
           FROM ((public.quant_sold quant_sold_1
             JOIN public.jrnx jrnx_1 USING (j_id))
             JOIN public.jrn jrn_1 ON ((jrnx_1.j_grpt = jrn_1.jr_grpt_id)))
          GROUP BY jrn_1.jr_id
        )
 SELECT jrn.jr_id,
    jrn.jr_date,
    jrn.jr_date_paid,
    jrn.jr_ech,
    jrn.jr_tech_per,
    jrn.jr_comment,
    jrn.jr_pj_number,
    jrn.jr_internal,
    jrn.jr_def_id,
    jrnx.j_poste,
    jrnx.j_text,
    jrnx.j_qcode,
    quant_sold.qs_fiche AS item_card,
    a.name AS item_name,
    quant_sold.qs_client,
    b.vw_name AS tiers_name,
    b.quick_code,
    tva_rate.tva_label,
    tva_rate.tva_comment,
    tva_rate.tva_both_side,
    quant_sold.qs_vat_sided AS vat_sided,
    quant_sold.qs_vat_code AS vat_code,
    quant_sold.qs_vat AS vat,
    quant_sold.qs_price AS price,
    quant_sold.qs_quantite AS quantity,
    (quant_sold.qs_price / quant_sold.qs_quantite) AS price_per_unit,
    m.htva,
    m.tot_vat,
    m.tot_tva_np
   FROM ((((((public.jrn
     JOIN public.jrnx ON ((jrn.jr_grpt_id = jrnx.j_grpt)))
     JOIN public.quant_sold USING (j_id))
     JOIN public.vw_fiche_name a ON ((quant_sold.qs_fiche = a.f_id)))
     JOIN public.vw_fiche_attr b ON ((quant_sold.qs_client = b.f_id)))
     JOIN public.tva_rate ON ((quant_sold.qs_vat_code = tva_rate.tva_id)))
     JOIN m ON ((m.jr_id = jrn.jr_id)));


ALTER TABLE public.v_detail_sale OWNER TO prisma;

--
-- Name: v_menu_dependency; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_menu_dependency AS
 WITH t_menu AS (
         SELECT pm.pm_id,
            mr.me_menu,
            pm.me_code,
            pm.me_code_dep,
            pm.p_type_display,
            mr.me_file,
            mr.me_javascript,
            mr.me_description,
            mr.me_description_etendue,
            p.p_id
           FROM ((public.profile_menu pm
             JOIN public.profile p ON ((p.p_id = pm.p_id)))
             JOIN public.menu_ref mr USING (me_code))
        )
 SELECT DISTINCT ((COALESCE((v3.me_code || '/'::text), ''::text) || COALESCE(v2.me_code, ''::text)) ||
        CASE
            WHEN (v2.me_code IS NULL) THEN COALESCE(v1.me_code, ''::text)
            WHEN (v2.me_code IS NOT NULL) THEN COALESCE(('/'::text || v1.me_code), ''::text)
            ELSE NULL::text
        END) AS code,
    v1.pm_id,
    v1.me_code,
    v1.me_description,
    v1.me_description_etendue,
    v1.me_file,
    ('> '::text || v1.me_menu) AS v1menu,
        CASE
            WHEN (v2.pm_id IS NOT NULL) THEN v2.pm_id
            WHEN (v3.pm_id IS NOT NULL) THEN v3.pm_id
            ELSE NULL::integer
        END AS higher_dep,
        CASE
            WHEN (COALESCE(v3.me_menu, ''::text) <> ''::text) THEN (' > '::text || v2.me_menu)
            ELSE v2.me_menu
        END AS v2menu,
    v3.me_menu AS v3menu,
    v3.p_type_display,
    COALESCE(v1.me_javascript, COALESCE(v2.me_javascript, v3.me_javascript)) AS javascript,
    v1.p_id,
    v2.p_id AS v2pid,
    v3.p_id AS v3pid
   FROM ((t_menu v1
     LEFT JOIN t_menu v2 ON ((v1.me_code_dep = v2.me_code)))
     LEFT JOIN t_menu v3 ON ((v2.me_code_dep = v3.me_code)))
  WHERE ((COALESCE(v2.p_id, v1.p_id) = v1.p_id) AND (COALESCE(v3.p_id, v1.p_id) = v1.p_id) AND (v1.p_type_display <> 'P'::text))
  ORDER BY v1.pm_id;


ALTER TABLE public.v_menu_dependency OWNER TO prisma;

--
-- Name: v_menu_description; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_menu_description AS
 WITH t_menu AS (
         SELECT pm.pm_id,
            pm.pm_id_dep,
            pm.p_id,
            mr.me_menu,
            pm.me_code,
            pm.me_code_dep,
            pm.p_type_display,
            pu.user_name,
            mr.me_file,
            mr.me_javascript,
            mr.me_description,
            mr.me_description_etendue
           FROM (((public.profile_menu pm
             JOIN public.profile_user pu ON ((pu.p_id = pm.p_id)))
             JOIN public.profile p ON ((p.p_id = pm.p_id)))
             JOIN public.menu_ref mr USING (me_code))
        )
 SELECT DISTINCT ((COALESCE((v3.me_code || '/'::text), ''::text) || COALESCE(v2.me_code, ''::text)) ||
        CASE
            WHEN (v2.me_code IS NULL) THEN COALESCE(v1.me_code, ''::text)
            WHEN (v2.me_code IS NOT NULL) THEN COALESCE(('/'::text || v1.me_code), ''::text)
            ELSE NULL::text
        END) AS code,
    v1.me_code,
    v1.me_description,
    v1.me_description_etendue,
    v1.me_file,
    v1.user_name,
    ('> '::text || v1.me_menu) AS v1menu,
        CASE
            WHEN (COALESCE(v3.me_menu, ''::text) <> ''::text) THEN (' > '::text || v2.me_menu)
            ELSE v2.me_menu
        END AS v2menu,
    v3.me_menu AS v3menu,
    v3.p_type_display,
    COALESCE(v1.me_javascript, COALESCE(v2.me_javascript, v3.me_javascript)) AS javascript,
    v1.pm_id,
    v1.pm_id_dep,
    v1.p_id
   FROM ((t_menu v1
     LEFT JOIN t_menu v2 ON ((v1.me_code_dep = v2.me_code)))
     LEFT JOIN t_menu v3 ON ((v2.me_code_dep = v3.me_code)))
  WHERE ((v1.p_type_display <> 'P'::text) AND ((COALESCE(v1.me_file, ''::text) <> ''::text) OR (COALESCE(v1.me_javascript, ''::text) <> ''::text)));


ALTER TABLE public.v_menu_description OWNER TO prisma;

--
-- Name: VIEW v_menu_description; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON VIEW public.v_menu_description IS 'Description des menus';


--
-- Name: v_menu_description_favori; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_menu_description_favori AS
 WITH t_menu AS (
         SELECT mr.me_menu,
            pm.me_code,
            pm.me_code_dep,
            pm.p_type_display,
            pu.user_name,
            mr.me_file,
            mr.me_javascript,
            mr.me_description,
            mr.me_description_etendue
           FROM (((public.profile_menu pm
             JOIN public.profile_user pu ON ((pu.p_id = pm.p_id)))
             JOIN public.profile p ON ((p.p_id = pm.p_id)))
             JOIN public.menu_ref mr USING (me_code))
        )
 SELECT DISTINCT ((COALESCE((v3.me_code || '/'::text), ''::text) || COALESCE(v2.me_code, ''::text)) ||
        CASE
            WHEN (v2.me_code IS NULL) THEN COALESCE(v1.me_code, ''::text)
            WHEN (v2.me_code IS NOT NULL) THEN COALESCE(('/'::text || v1.me_code), ''::text)
            ELSE NULL::text
        END) AS code,
    v1.me_code,
    v1.me_description,
    v1.me_description_etendue,
    v1.me_file,
    v1.user_name,
    ('> '::text || v1.me_menu) AS v1menu,
        CASE
            WHEN (COALESCE(v3.me_menu, ''::text) <> ''::text) THEN (' > '::text || v2.me_menu)
            ELSE v2.me_menu
        END AS v2menu,
    v3.me_menu AS v3menu,
    v3.p_type_display,
    COALESCE(v1.me_javascript, COALESCE(v2.me_javascript, v3.me_javascript)) AS javascript
   FROM ((t_menu v1
     LEFT JOIN t_menu v2 ON ((v1.me_code_dep = v2.me_code)))
     LEFT JOIN t_menu v3 ON ((v2.me_code_dep = v3.me_code)))
  WHERE (v1.p_type_display <> 'P'::text);


ALTER TABLE public.v_menu_description_favori OWNER TO prisma;

--
-- Name: v_menu_profile; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_menu_profile AS
 WITH t_menu AS (
         SELECT pm.pm_id,
            pm.pm_id_dep,
            pm.me_code,
            pm.me_code_dep,
            pm.p_type_display,
            pm.p_id
           FROM (public.profile_menu pm
             JOIN public.profile p ON ((p.p_id = pm.p_id)))
        )
 SELECT DISTINCT ((COALESCE((v3.me_code || '/'::text), ''::text) || COALESCE(v2.me_code, ''::text)) ||
        CASE
            WHEN (v2.me_code IS NULL) THEN COALESCE(v1.me_code, ''::text)
            WHEN (v2.me_code IS NOT NULL) THEN COALESCE(('/'::text || v1.me_code), ''::text)
            ELSE NULL::text
        END) AS code,
    v3.p_type_display,
    COALESCE(v3.pm_id, 0) AS pm_id_v3,
    COALESCE(v2.pm_id, 0) AS pm_id_v2,
    v1.pm_id AS pm_id_v1,
    v1.p_id
   FROM ((t_menu v1
     LEFT JOIN t_menu v2 ON ((v1.pm_id_dep = v2.pm_id)))
     LEFT JOIN t_menu v3 ON ((v2.pm_id_dep = v3.pm_id)))
  WHERE (v1.p_type_display <> 'P'::text);


ALTER TABLE public.v_menu_profile OWNER TO prisma;

--
-- Name: VIEW v_menu_profile; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON VIEW public.v_menu_profile IS 'Give the profile and the menu + dependencies';


--
-- Name: v_quant_detail; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_quant_detail AS
 WITH quant AS (
         SELECT quant_purchase.j_id,
            quant_purchase.qp_fiche AS fiche_id,
            quant_purchase.qp_supplier AS tiers,
            quant_purchase.qp_vat AS vat_amount,
            quant_purchase.qp_price AS price,
            quant_purchase.qp_vat_code AS vat_code,
            quant_purchase.qp_dep_priv AS dep_priv,
            quant_purchase.qp_nd_tva AS nd_tva,
            quant_purchase.qp_nd_tva_recup AS nd_tva_recup,
            quant_purchase.qp_nd_amount AS nd_amount,
            quant_purchase.qp_vat_sided AS vat_sided
           FROM public.quant_purchase
        UNION ALL
         SELECT quant_sold.j_id,
            quant_sold.qs_fiche,
            quant_sold.qs_client,
            quant_sold.qs_vat,
            quant_sold.qs_price,
            quant_sold.qs_vat_code,
            0,
            0,
            0,
            0,
            quant_sold.qs_vat_sided
           FROM public.quant_sold
        )
 SELECT jrn.jr_id,
    quant.tiers,
    jrn_def.jrn_def_name,
    jrn_def.jrn_def_type,
    vw_fiche_name.name,
    jrn.jr_comment,
    jrn.jr_montant,
    sum(quant.price) AS price,
    quant.vat_code,
    sum(quant.vat_amount) AS vat_amount,
    sum(quant.dep_priv) AS dep_priv,
    sum(quant.nd_tva) AS nd_tva,
    sum(quant.nd_tva_recup) AS nd_tva_recup,
    sum(quant.nd_amount) AS nd_amount,
    quant.vat_sided,
    tva_rate.tva_label
   FROM (((((public.jrn
     JOIN public.jrnx ON ((jrnx.j_grpt = jrn.jr_grpt_id)))
     JOIN quant USING (j_id))
     LEFT JOIN public.vw_fiche_name ON ((quant.tiers = vw_fiche_name.f_id)))
     JOIN public.jrn_def ON ((jrn_def.jrn_def_id = jrn.jr_def_id)))
     JOIN public.tva_rate ON ((tva_rate.tva_id = quant.vat_code)))
  GROUP BY jrn.jr_id, quant.tiers, jrn.jr_comment, jrn.jr_montant, quant.vat_code, quant.vat_sided, vw_fiche_name.name, jrn_def.jrn_def_name, jrn_def.jrn_def_type, tva_rate.tva_label;


ALTER TABLE public.v_quant_detail OWNER TO prisma;

--
-- Name: v_tva_rate; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.v_tva_rate AS
 SELECT tva_rate.tva_id,
    tva_rate.tva_rate,
    tva_rate.tva_label,
    tva_rate.tva_comment,
    split_part(tva_rate.tva_poste, ','::text, 1) AS tva_purchase,
    split_part(tva_rate.tva_poste, ','::text, 2) AS tva_sale,
    tva_rate.tva_both_side
   FROM public.tva_rate;


ALTER TABLE public.v_tva_rate OWNER TO prisma;

--
-- Name: VIEW v_tva_rate; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON VIEW public.v_tva_rate IS 'Show this table to be easily used by  Tva_Rate_MTable';


--
-- Name: COLUMN v_tva_rate.tva_purchase; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.v_tva_rate.tva_purchase IS ' VAT used for purchase';


--
-- Name: COLUMN v_tva_rate.tva_sale; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.v_tva_rate.tva_sale IS ' VAT used for sale';


--
-- Name: COLUMN v_tva_rate.tva_both_side; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON COLUMN public.v_tva_rate.tva_both_side IS 'if 1 ,  VAT avoided ';


--
-- Name: version; Type: TABLE; Schema: public; Owner: prisma
--

CREATE TABLE public.version (
    val integer NOT NULL,
    v_description text,
    v_date timestamp without time zone DEFAULT now()
);


ALTER TABLE public.version OWNER TO prisma;

--
-- Name: vw_client; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.vw_client AS
 SELECT fiche.f_id,
    a1.ad_value AS name,
    a.ad_value AS quick_code,
    b.ad_value AS tva_num,
    c.ad_value AS poste_comptable,
    d.ad_value AS rue,
    e.ad_value AS code_postal,
    f.ad_value AS pays,
    g.ad_value AS telephone,
    h.ad_value AS email
   FROM (((((((((((public.fiche
     JOIN public.fiche_def USING (fd_id))
     JOIN public.fiche_def_ref USING (frd_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 1)) a1 USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 13)) b USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 23)) a USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 5)) c USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 14)) d USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 15)) e USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 16)) f USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 17)) g USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 18)) h USING (f_id))
  WHERE (fiche_def_ref.frd_id = 9);


ALTER TABLE public.vw_client OWNER TO prisma;

--
-- Name: vw_fiche_def; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.vw_fiche_def AS
 SELECT jnt_fic_attr.fd_id,
    jnt_fic_attr.ad_id,
    attr_def.ad_text,
    fiche_def.fd_class_base,
    fiche_def.fd_label,
    fiche_def.fd_create_account,
    fiche_def.frd_id
   FROM ((public.fiche_def
     JOIN public.jnt_fic_attr USING (fd_id))
     JOIN public.attr_def ON ((attr_def.ad_id = jnt_fic_attr.ad_id)));


ALTER TABLE public.vw_fiche_def OWNER TO prisma;

--
-- Name: VIEW vw_fiche_def; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON VIEW public.vw_fiche_def IS 'all the attributs for	card family';


--
-- Name: vw_fiche_min; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.vw_fiche_min AS
 SELECT attr_min.frd_id,
    attr_min.ad_id,
    attr_def.ad_text,
    fiche_def_ref.frd_text,
    fiche_def_ref.frd_class_base
   FROM ((public.attr_min
     JOIN public.attr_def USING (ad_id))
     JOIN public.fiche_def_ref USING (frd_id));


ALTER TABLE public.vw_fiche_min OWNER TO prisma;

--
-- Name: vw_poste_qcode; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.vw_poste_qcode AS
 SELECT c.f_id,
    a.ad_value AS j_poste,
    b.ad_value AS j_qcode
   FROM ((public.fiche c
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 5)) a USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.f_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 23)) b USING (f_id));


ALTER TABLE public.vw_poste_qcode OWNER TO prisma;

--
-- Name: vw_supplier; Type: VIEW; Schema: public; Owner: prisma
--

CREATE VIEW public.vw_supplier AS
 SELECT fiche.f_id,
    a1.ad_value AS name,
    a.ad_value AS quick_code,
    b.ad_value AS tva_num,
    c.ad_value AS poste_comptable,
    d.ad_value AS rue,
    e.ad_value AS code_postal,
    f.ad_value AS pays,
    g.ad_value AS telephone,
    h.ad_value AS email
   FROM (((((((((((public.fiche
     JOIN public.fiche_def USING (fd_id))
     JOIN public.fiche_def_ref USING (frd_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 1)) a1 USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 13)) b USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 23)) a USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 5)) c USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 14)) d USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 15)) e USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 16)) f USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 17)) g USING (f_id))
     LEFT JOIN ( SELECT fiche_detail.jft_id,
            fiche_detail.f_id,
            fiche_detail.ad_id,
            fiche_detail.ad_value
           FROM public.fiche_detail
          WHERE (fiche_detail.ad_id = 18)) h USING (f_id))
  WHERE (fiche_def_ref.frd_id = 8);


ALTER TABLE public.vw_supplier OWNER TO prisma;

--
-- Name: action_detail ad_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_detail ALTER COLUMN ad_id SET DEFAULT nextval('public.action_detail_ad_id_seq'::regclass);


--
-- Name: action_gestion_comment agc_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_comment ALTER COLUMN agc_id SET DEFAULT nextval('public.action_gestion_comment_agc_id_seq'::regclass);


--
-- Name: action_gestion_operation ago_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_operation ALTER COLUMN ago_id SET DEFAULT nextval('public.action_gestion_operation_ago_id_seq'::regclass);


--
-- Name: action_gestion_related aga_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_related ALTER COLUMN aga_id SET DEFAULT nextval('public.action_gestion_related_aga_id_seq'::regclass);


--
-- Name: action_person ap_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_person ALTER COLUMN ap_id SET DEFAULT nextval('public.action_person_ap_id_seq'::regclass);


--
-- Name: action_tags at_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_tags ALTER COLUMN at_id SET DEFAULT nextval('public.action_tags_at_id_seq'::regclass);


--
-- Name: bookmark b_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bookmark ALTER COLUMN b_id SET DEFAULT nextval('public.bookmark_b_id_seq'::regclass);


--
-- Name: del_action del_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.del_action ALTER COLUMN del_id SET DEFAULT nextval('public.del_action_del_id_seq'::regclass);


--
-- Name: del_jrn dj_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.del_jrn ALTER COLUMN dj_id SET DEFAULT nextval('public.del_jrn_dj_id_seq'::regclass);


--
-- Name: del_jrnx djx_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.del_jrnx ALTER COLUMN djx_id SET DEFAULT nextval('public.del_jrnx_djx_id_seq'::regclass);


--
-- Name: extension ex_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.extension ALTER COLUMN ex_id SET DEFAULT nextval('public.extension_ex_id_seq'::regclass);


--
-- Name: forecast f_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast ALTER COLUMN f_id SET DEFAULT nextval('public.forecast_f_id_seq'::regclass);


--
-- Name: forecast_cat fc_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast_cat ALTER COLUMN fc_id SET DEFAULT nextval('public.forecast_cat_fc_id_seq'::regclass);


--
-- Name: forecast_item fi_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast_item ALTER COLUMN fi_id SET DEFAULT nextval('public.forecast_item_fi_id_seq'::regclass);


--
-- Name: jnt_letter jl_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_letter ALTER COLUMN jl_id SET DEFAULT nextval('public.jnt_letter_jl_id_seq'::regclass);


--
-- Name: jrn_info ji_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_info ALTER COLUMN ji_id SET DEFAULT nextval('public.jrn_info_ji_id_seq'::regclass);


--
-- Name: jrn_note n_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_note ALTER COLUMN n_id SET DEFAULT nextval('public.jrn_note_n_id_seq'::regclass);


--
-- Name: key_distribution kd_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution ALTER COLUMN kd_id SET DEFAULT nextval('public.key_distribution_kd_id_seq'::regclass);


--
-- Name: key_distribution_activity ka_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_activity ALTER COLUMN ka_id SET DEFAULT nextval('public.key_distribution_activity_ka_id_seq'::regclass);


--
-- Name: key_distribution_detail ke_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_detail ALTER COLUMN ke_id SET DEFAULT nextval('public.key_distribution_detail_ke_id_seq'::regclass);


--
-- Name: key_distribution_ledger kl_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_ledger ALTER COLUMN kl_id SET DEFAULT nextval('public.key_distribution_ledger_kl_id_seq'::regclass);


--
-- Name: letter_cred lc_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_cred ALTER COLUMN lc_id SET DEFAULT nextval('public.letter_cred_lc_id_seq'::regclass);


--
-- Name: letter_deb ld_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_deb ALTER COLUMN ld_id SET DEFAULT nextval('public.letter_deb_ld_id_seq'::regclass);


--
-- Name: link_action_type l_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.link_action_type ALTER COLUMN l_id SET DEFAULT nextval('public.link_action_type_l_id_seq'::regclass);


--
-- Name: menu_default md_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.menu_default ALTER COLUMN md_id SET DEFAULT nextval('public.menu_default_md_id_seq'::regclass);


--
-- Name: mod_payment mp_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mod_payment ALTER COLUMN mp_id SET DEFAULT nextval('public.mod_payment_mp_id_seq'::regclass);


--
-- Name: profile p_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile ALTER COLUMN p_id SET DEFAULT nextval('public.profile_p_id_seq'::regclass);


--
-- Name: profile_menu pm_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_menu ALTER COLUMN pm_id SET DEFAULT nextval('public.profile_menu_pm_id_seq'::regclass);


--
-- Name: profile_sec_repository ur_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_sec_repository ALTER COLUMN ur_id SET DEFAULT nextval('public.profile_sec_repository_ur_id_seq'::regclass);


--
-- Name: profile_user pu_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_user ALTER COLUMN pu_id SET DEFAULT nextval('public.profile_user_pu_id_seq'::regclass);


--
-- Name: quant_fin qf_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_fin ALTER COLUMN qf_id SET DEFAULT nextval('public.quant_fin_qf_id_seq'::regclass);


--
-- Name: stock_change c_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_change ALTER COLUMN c_id SET DEFAULT nextval('public.stock_change_c_id_seq'::regclass);


--
-- Name: stock_repository r_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_repository ALTER COLUMN r_id SET DEFAULT nextval('public.stock_repository_r_id_seq'::regclass);


--
-- Name: tags t_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tags ALTER COLUMN t_id SET DEFAULT nextval('public.tags_t_id_seq'::regclass);


--
-- Name: tmp_stockgood s_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tmp_stockgood ALTER COLUMN s_id SET DEFAULT nextval('public.tmp_stockgood_s_id_seq'::regclass);


--
-- Name: tmp_stockgood_detail d_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tmp_stockgood_detail ALTER COLUMN d_id SET DEFAULT nextval('public.tmp_stockgood_detail_d_id_seq'::regclass);


--
-- Name: todo_list_shared id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.todo_list_shared ALTER COLUMN id SET DEFAULT nextval('public.todo_list_shared_id_seq'::regclass);


--
-- Name: user_active_security id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_active_security ALTER COLUMN id SET DEFAULT nextval('public.user_active_security_id_seq'::regclass);


--
-- Name: user_filter id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_filter ALTER COLUMN id SET DEFAULT nextval('public.user_filter_id_seq'::regclass);


--
-- Name: user_sec_action_profile ua_id; Type: DEFAULT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_action_profile ALTER COLUMN ua_id SET DEFAULT nextval('public.user_sec_action_profile_ua_id_seq'::regclass);


--
-- Name: action_gestion_operation action_comment_operation_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_operation
    ADD CONSTRAINT action_comment_operation_pkey PRIMARY KEY (ago_id);


--
-- Name: action_detail action_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_detail
    ADD CONSTRAINT action_detail_pkey PRIMARY KEY (ad_id);


--
-- Name: action_gestion_comment action_gestion_comment_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_comment
    ADD CONSTRAINT action_gestion_comment_pkey PRIMARY KEY (agc_id);


--
-- Name: action_gestion action_gestion_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion
    ADD CONSTRAINT action_gestion_pkey PRIMARY KEY (ag_id);


--
-- Name: action_gestion_related action_gestion_related_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_related
    ADD CONSTRAINT action_gestion_related_pkey PRIMARY KEY (aga_id);


--
-- Name: action_person action_person_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_person
    ADD CONSTRAINT action_person_pkey PRIMARY KEY (ap_id);


--
-- Name: action action_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action
    ADD CONSTRAINT action_pkey PRIMARY KEY (ac_id);


--
-- Name: action_tags action_tags_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_tags
    ADD CONSTRAINT action_tags_pkey PRIMARY KEY (at_id);


--
-- Name: attr_def attr_def_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.attr_def
    ADD CONSTRAINT attr_def_pkey PRIMARY KEY (ad_id);


--
-- Name: bilan bilan_b_name_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bilan
    ADD CONSTRAINT bilan_b_name_key UNIQUE (b_name);


--
-- Name: bilan bilan_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bilan
    ADD CONSTRAINT bilan_pkey PRIMARY KEY (b_id);


--
-- Name: bookmark bookmark_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.bookmark
    ADD CONSTRAINT bookmark_pkey PRIMARY KEY (b_id);


--
-- Name: centralized centralized_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.centralized
    ADD CONSTRAINT centralized_pkey PRIMARY KEY (c_id);


--
-- Name: del_action del_action_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.del_action
    ADD CONSTRAINT del_action_pkey PRIMARY KEY (del_id);


--
-- Name: del_jrn dj_id; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.del_jrn
    ADD CONSTRAINT dj_id PRIMARY KEY (dj_id);


--
-- Name: del_jrnx djx_id; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.del_jrnx
    ADD CONSTRAINT djx_id PRIMARY KEY (djx_id);


--
-- Name: document_modele document_modele_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.document_modele
    ADD CONSTRAINT document_modele_pkey PRIMARY KEY (md_id);


--
-- Name: document document_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.document
    ADD CONSTRAINT document_pkey PRIMARY KEY (d_id);


--
-- Name: document_state document_state_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.document_state
    ADD CONSTRAINT document_state_pkey PRIMARY KEY (s_id);


--
-- Name: document_type document_type_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.document_type
    ADD CONSTRAINT document_type_pkey PRIMARY KEY (dt_id);


--
-- Name: fiche_def fiche_def_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fiche_def
    ADD CONSTRAINT fiche_def_pkey PRIMARY KEY (fd_id);


--
-- Name: fiche_def_ref fiche_def_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fiche_def_ref
    ADD CONSTRAINT fiche_def_ref_pkey PRIMARY KEY (frd_id);


--
-- Name: fiche fiche_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fiche
    ADD CONSTRAINT fiche_pkey PRIMARY KEY (f_id);


--
-- Name: forecast_cat forecast_cat_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast_cat
    ADD CONSTRAINT forecast_cat_pk PRIMARY KEY (fc_id);


--
-- Name: forecast_item forecast_item_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast_item
    ADD CONSTRAINT forecast_item_pkey PRIMARY KEY (fi_id);


--
-- Name: forecast forecast_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast
    ADD CONSTRAINT forecast_pk PRIMARY KEY (f_id);


--
-- Name: form form_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.form
    ADD CONSTRAINT form_pkey PRIMARY KEY (fo_id);


--
-- Name: formdef formdef_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.formdef
    ADD CONSTRAINT formdef_pkey PRIMARY KEY (fr_id);


--
-- Name: attr_min frd_ad_attr_min_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.attr_min
    ADD CONSTRAINT frd_ad_attr_min_pk PRIMARY KEY (frd_id, ad_id);


--
-- Name: operation_analytique historique_analytique_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.operation_analytique
    ADD CONSTRAINT historique_analytique_pkey PRIMARY KEY (oa_id);


--
-- Name: tmp_pcmn id_ux; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tmp_pcmn
    ADD CONSTRAINT id_ux UNIQUE (id);


--
-- Name: extension idx_ex_code; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.extension
    ADD CONSTRAINT idx_ex_code UNIQUE (ex_code);


--
-- Name: info_def info_def_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.info_def
    ADD CONSTRAINT info_def_pkey PRIMARY KEY (id_type);


--
-- Name: fiche_detail jnt_fic_att_value_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fiche_detail
    ADD CONSTRAINT jnt_fic_att_value_pkey PRIMARY KEY (jft_id);


--
-- Name: jnt_letter jnt_letter_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_letter
    ADD CONSTRAINT jnt_letter_pk PRIMARY KEY (jl_id);


--
-- Name: jrn_def jrn_def_jrn_def_name_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_def
    ADD CONSTRAINT jrn_def_jrn_def_name_key UNIQUE (jrn_def_name);


--
-- Name: jrn_def jrn_def_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_def
    ADD CONSTRAINT jrn_def_pkey PRIMARY KEY (jrn_def_id);


--
-- Name: jrn_info jrn_info_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_info
    ADD CONSTRAINT jrn_info_pkey PRIMARY KEY (ji_id);


--
-- Name: jrn_periode jrn_periode_periode_ledger; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_periode
    ADD CONSTRAINT jrn_periode_periode_ledger UNIQUE (jrn_def_id, p_id);


--
-- Name: jrn_periode jrn_periode_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_periode
    ADD CONSTRAINT jrn_periode_pk PRIMARY KEY (id);


--
-- Name: jrn jrn_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn
    ADD CONSTRAINT jrn_pkey PRIMARY KEY (jr_id, jr_def_id);


--
-- Name: jrn_rapt jrn_rapt_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_rapt
    ADD CONSTRAINT jrn_rapt_pkey PRIMARY KEY (jra_id);


--
-- Name: jrn_type jrn_type_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_type
    ADD CONSTRAINT jrn_type_pkey PRIMARY KEY (jrn_type_id);


--
-- Name: jrn_note jrnx_note_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_note
    ADD CONSTRAINT jrnx_note_pkey PRIMARY KEY (n_id);


--
-- Name: jrnx jrnx_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrnx
    ADD CONSTRAINT jrnx_pkey PRIMARY KEY (j_id);


--
-- Name: key_distribution_activity key_distribution_activity_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_activity
    ADD CONSTRAINT key_distribution_activity_pkey PRIMARY KEY (ka_id);


--
-- Name: key_distribution_detail key_distribution_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_detail
    ADD CONSTRAINT key_distribution_detail_pkey PRIMARY KEY (ke_id);


--
-- Name: key_distribution_ledger key_distribution_ledger_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_ledger
    ADD CONSTRAINT key_distribution_ledger_pkey PRIMARY KEY (kl_id);


--
-- Name: key_distribution key_distribution_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution
    ADD CONSTRAINT key_distribution_pkey PRIMARY KEY (kd_id);


--
-- Name: letter_cred letter_cred_j_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_cred
    ADD CONSTRAINT letter_cred_j_id_key UNIQUE (j_id);


--
-- Name: letter_cred letter_cred_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_cred
    ADD CONSTRAINT letter_cred_pk PRIMARY KEY (lc_id);


--
-- Name: letter_deb letter_deb_j_id_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_deb
    ADD CONSTRAINT letter_deb_j_id_key UNIQUE (j_id);


--
-- Name: letter_deb letter_deb_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_deb
    ADD CONSTRAINT letter_deb_pk PRIMARY KEY (ld_id);


--
-- Name: link_action_type link_action_type_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.link_action_type
    ADD CONSTRAINT link_action_type_pkey PRIMARY KEY (l_id);


--
-- Name: menu_default menu_default_md_code_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.menu_default
    ADD CONSTRAINT menu_default_md_code_key UNIQUE (md_code);


--
-- Name: menu_default menu_default_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.menu_default
    ADD CONSTRAINT menu_default_pkey PRIMARY KEY (md_id);


--
-- Name: menu_ref menu_ref_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.menu_ref
    ADD CONSTRAINT menu_ref_pkey PRIMARY KEY (me_code);


--
-- Name: mod_payment mod_payment_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mod_payment
    ADD CONSTRAINT mod_payment_pkey PRIMARY KEY (mp_id);


--
-- Name: op_predef op_def_op_name_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.op_predef
    ADD CONSTRAINT op_def_op_name_key UNIQUE (od_name, jrn_def_id);


--
-- Name: op_predef op_def_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.op_predef
    ADD CONSTRAINT op_def_pkey PRIMARY KEY (od_id);


--
-- Name: op_predef_detail op_predef_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.op_predef_detail
    ADD CONSTRAINT op_predef_detail_pkey PRIMARY KEY (opd_id);


--
-- Name: parameter parameter_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.parameter
    ADD CONSTRAINT parameter_pkey PRIMARY KEY (pr_id);


--
-- Name: parm_code parm_code_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.parm_code
    ADD CONSTRAINT parm_code_pkey PRIMARY KEY (p_code);


--
-- Name: parm_money parm_money_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.parm_money
    ADD CONSTRAINT parm_money_pkey PRIMARY KEY (pm_code);


--
-- Name: parm_periode parm_periode_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.parm_periode
    ADD CONSTRAINT parm_periode_pkey PRIMARY KEY (p_id);


--
-- Name: parm_poste parm_poste_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.parm_poste
    ADD CONSTRAINT parm_poste_pkey PRIMARY KEY (p_value);


--
-- Name: extension pk_extension; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.extension
    ADD CONSTRAINT pk_extension PRIMARY KEY (ex_id);


--
-- Name: groupe_analytique pk_ga_id; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.groupe_analytique
    ADD CONSTRAINT pk_ga_id PRIMARY KEY (ga_id);


--
-- Name: jnt_fic_attr pk_jnt_fic_attr; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_fic_attr
    ADD CONSTRAINT pk_jnt_fic_attr PRIMARY KEY (jnt_id);


--
-- Name: user_local_pref pk_user_local_pref; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_local_pref
    ADD CONSTRAINT pk_user_local_pref PRIMARY KEY (user_id, parameter_type);


--
-- Name: plan_analytique plan_analytique_pa_name_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.plan_analytique
    ADD CONSTRAINT plan_analytique_pa_name_key UNIQUE (pa_name);


--
-- Name: plan_analytique plan_analytique_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.plan_analytique
    ADD CONSTRAINT plan_analytique_pkey PRIMARY KEY (pa_id);


--
-- Name: poste_analytique poste_analytique_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.poste_analytique
    ADD CONSTRAINT poste_analytique_pkey PRIMARY KEY (po_id);


--
-- Name: profile_menu profile_menu_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_menu
    ADD CONSTRAINT profile_menu_pkey PRIMARY KEY (pm_id);


--
-- Name: profile_menu_type profile_menu_type_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_menu_type
    ADD CONSTRAINT profile_menu_type_pkey PRIMARY KEY (pm_type);


--
-- Name: profile profile_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile
    ADD CONSTRAINT profile_pkey PRIMARY KEY (p_id);


--
-- Name: profile_sec_repository profile_sec_repository_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_sec_repository
    ADD CONSTRAINT profile_sec_repository_pkey PRIMARY KEY (ur_id);


--
-- Name: profile_sec_repository profile_sec_repository_r_id_p_id_u; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_sec_repository
    ADD CONSTRAINT profile_sec_repository_r_id_p_id_u UNIQUE (r_id, p_id);


--
-- Name: profile_user profile_user_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_user
    ADD CONSTRAINT profile_user_pkey PRIMARY KEY (pu_id);


--
-- Name: profile_user profile_user_user_name_key; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_user
    ADD CONSTRAINT profile_user_user_name_key UNIQUE (user_name, p_id);


--
-- Name: quant_purchase qp_id_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_purchase
    ADD CONSTRAINT qp_id_pk PRIMARY KEY (qp_id);


--
-- Name: quant_sold qs_id_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_sold
    ADD CONSTRAINT qs_id_pk PRIMARY KEY (qs_id);


--
-- Name: quant_fin quant_fin_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_fin
    ADD CONSTRAINT quant_fin_pk PRIMARY KEY (qf_id);


--
-- Name: stock_change stock_change_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_change
    ADD CONSTRAINT stock_change_pkey PRIMARY KEY (c_id);


--
-- Name: stock_goods stock_goods_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_goods
    ADD CONSTRAINT stock_goods_pkey PRIMARY KEY (sg_id);


--
-- Name: stock_repository stock_repository_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_repository
    ADD CONSTRAINT stock_repository_pkey PRIMARY KEY (r_id);


--
-- Name: tags tags_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tags
    ADD CONSTRAINT tags_pkey PRIMARY KEY (t_id);


--
-- Name: tmp_pcmn tmp_pcmn_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tmp_pcmn
    ADD CONSTRAINT tmp_pcmn_pkey PRIMARY KEY (pcm_val);


--
-- Name: tmp_stockgood_detail tmp_stockgood_detail_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tmp_stockgood_detail
    ADD CONSTRAINT tmp_stockgood_detail_pkey PRIMARY KEY (d_id);


--
-- Name: tmp_stockgood tmp_stockgood_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tmp_stockgood
    ADD CONSTRAINT tmp_stockgood_pkey PRIMARY KEY (s_id);


--
-- Name: todo_list todo_list_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.todo_list
    ADD CONSTRAINT todo_list_pkey PRIMARY KEY (tl_id);


--
-- Name: todo_list_shared todo_list_shared_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.todo_list_shared
    ADD CONSTRAINT todo_list_shared_pkey PRIMARY KEY (id);


--
-- Name: tool_uos tool_uos_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tool_uos
    ADD CONSTRAINT tool_uos_pkey PRIMARY KEY (uos_value);


--
-- Name: tva_rate tva_id_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tva_rate
    ADD CONSTRAINT tva_id_pk PRIMARY KEY (tva_id);


--
-- Name: user_sec_jrn uniq_user_ledger; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_jrn
    ADD CONSTRAINT uniq_user_ledger UNIQUE (uj_login, uj_jrn_id);


--
-- Name: CONSTRAINT uniq_user_ledger ON user_sec_jrn; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON CONSTRAINT uniq_user_ledger ON public.user_sec_jrn IS 'Create an unique combination user / ledger';


--
-- Name: todo_list_shared unique_todo_list_id_login; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.todo_list_shared
    ADD CONSTRAINT unique_todo_list_id_login UNIQUE (todo_list_id, use_login);


--
-- Name: user_active_security user_active_security_pk; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_active_security
    ADD CONSTRAINT user_active_security_pk PRIMARY KEY (id);


--
-- Name: user_filter user_filter_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_filter
    ADD CONSTRAINT user_filter_pkey PRIMARY KEY (id);


--
-- Name: user_sec_act user_sec_act_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_act
    ADD CONSTRAINT user_sec_act_pkey PRIMARY KEY (ua_id);


--
-- Name: user_sec_action_profile user_sec_action_profile_p_id_p_granted_u; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_action_profile
    ADD CONSTRAINT user_sec_action_profile_p_id_p_granted_u UNIQUE (p_id, p_granted);


--
-- Name: user_sec_action_profile user_sec_action_profile_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_action_profile
    ADD CONSTRAINT user_sec_action_profile_pkey PRIMARY KEY (ua_id);


--
-- Name: user_sec_jrn user_sec_jrn_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_jrn
    ADD CONSTRAINT user_sec_jrn_pkey PRIMARY KEY (uj_id);


--
-- Name: action_gestion_related ux_aga_least_aga_greatest; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_related
    ADD CONSTRAINT ux_aga_least_aga_greatest UNIQUE (aga_least, aga_greatest);


--
-- Name: jrn ux_internal; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn
    ADD CONSTRAINT ux_internal UNIQUE (jr_internal);


--
-- Name: version version_pkey; Type: CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.version
    ADD CONSTRAINT version_pkey PRIMARY KEY (val);


--
-- Name: fd_id_ad_id_x; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX fd_id_ad_id_x ON public.jnt_fic_attr USING btree (fd_id, ad_id);


--
-- Name: fiche_detail_f_id_ad_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX fiche_detail_f_id_ad_id ON public.fiche_detail USING btree (f_id, ad_id);


--
-- Name: fk_action_person_action_gestion; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fk_action_person_action_gestion ON public.action_person USING btree (ag_id);


--
-- Name: fk_action_person_fiche; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fk_action_person_fiche ON public.action_person USING btree (f_id);


--
-- Name: fk_stock_good_repository_r_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fk_stock_good_repository_r_id ON public.stock_goods USING btree (r_id);


--
-- Name: fk_stock_goods_f_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fk_stock_goods_f_id ON public.stock_goods USING btree (f_id);


--
-- Name: fk_stock_goods_j_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fk_stock_goods_j_id ON public.stock_goods USING btree (j_id);


--
-- Name: fki_f_end_date; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_f_end_date ON public.forecast USING btree (f_end_date);


--
-- Name: fki_f_start_date; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_f_start_date ON public.forecast USING btree (f_start_date);


--
-- Name: fki_jrn_jr_grpt_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_jrn_jr_grpt_id ON public.jrn USING btree (jr_grpt_id);


--
-- Name: fki_jrnx_f_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_jrnx_f_id ON public.jrnx USING btree (f_id);


--
-- Name: fki_jrnx_j_grpt; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_jrnx_j_grpt ON public.jrnx USING btree (j_grpt);


--
-- Name: fki_profile_menu_me_code; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_profile_menu_me_code ON public.profile_menu USING btree (me_code);


--
-- Name: fki_profile_menu_profile; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_profile_menu_profile ON public.profile_menu USING btree (p_id);


--
-- Name: fki_profile_menu_type_fkey; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX fki_profile_menu_type_fkey ON public.profile_menu USING btree (p_type_display);


--
-- Name: idx_qs_internal; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX idx_qs_internal ON public.quant_sold USING btree (qs_internal);


--
-- Name: jnt_fic_att_value_fd_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX jnt_fic_att_value_fd_id_idx ON public.fiche_detail USING btree (f_id);


--
-- Name: jnt_fic_attr_fd_id_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX jnt_fic_attr_fd_id_idx ON public.jnt_fic_attr USING btree (fd_id);


--
-- Name: jrnx_j_qcode_ix; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX jrnx_j_qcode_ix ON public.jrnx USING btree (j_qcode);


--
-- Name: k_ag_ref; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX k_ag_ref ON public.action_gestion USING btree (ag_ref);


--
-- Name: link_action_type_fki; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX link_action_type_fki ON public.action_gestion_related USING btree (aga_type);


--
-- Name: qcode_idx; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX qcode_idx ON public.fiche_detail USING btree (ad_value) WHERE (ad_id = 23);


--
-- Name: qf_jr_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX qf_jr_id ON public.quant_fin USING btree (jr_id);


--
-- Name: qp_j_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX qp_j_id ON public.quant_purchase USING btree (j_id);


--
-- Name: qs_j_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX qs_j_id ON public.quant_sold USING btree (j_id);


--
-- Name: quant_purchase_jrn_fki; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX quant_purchase_jrn_fki ON public.quant_purchase USING btree (qp_internal);


--
-- Name: quant_sold_jrn_fki; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX quant_sold_jrn_fki ON public.quant_sold USING btree (qs_internal);


--
-- Name: uj_login_uj_jrn_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX uj_login_uj_jrn_id ON public.user_sec_jrn USING btree (uj_login, uj_jrn_id);


--
-- Name: ux_po_name; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX ux_po_name ON public.poste_analytique USING btree (po_name);


--
-- Name: x_jrn_jr_id; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX x_jrn_jr_id ON public.jrn USING btree (jr_id);


--
-- Name: x_mt; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX x_mt ON public.jrn USING btree (jr_mt);


--
-- Name: x_periode; Type: INDEX; Schema: public; Owner: prisma
--

CREATE UNIQUE INDEX x_periode ON public.parm_periode USING btree (p_start, p_end);


--
-- Name: x_poste; Type: INDEX; Schema: public; Owner: prisma
--

CREATE INDEX x_poste ON public.jrnx USING btree (j_poste);


--
-- Name: action_gestion action_gestion_t_insert_update; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER action_gestion_t_insert_update BEFORE INSERT OR UPDATE ON public.action_gestion FOR EACH ROW EXECUTE PROCEDURE comptaproc.action_gestion_ins_upd();


--
-- Name: TRIGGER action_gestion_t_insert_update ON action_gestion; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TRIGGER action_gestion_t_insert_update ON public.action_gestion IS 'Truncate the column ag_title to 70 char';


--
-- Name: document_modele document_modele_validate; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER document_modele_validate BEFORE INSERT OR UPDATE ON public.document_modele FOR EACH ROW EXECUTE PROCEDURE comptaproc.t_document_modele_validate();


--
-- Name: document document_validate; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER document_validate BEFORE INSERT OR UPDATE ON public.document FOR EACH ROW EXECUTE PROCEDURE comptaproc.t_document_validate();


--
-- Name: fiche_def fiche_def_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER fiche_def_ins_upd BEFORE INSERT OR UPDATE ON public.fiche_def FOR EACH ROW EXECUTE PROCEDURE comptaproc.fiche_def_ins_upd();


--
-- Name: fiche_detail fiche_detail_upd_trg; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER fiche_detail_upd_trg AFTER UPDATE ON public.fiche_detail FOR EACH ROW EXECUTE PROCEDURE comptaproc.fiche_detail_qcode_upd();


--
-- Name: info_def info_def_ins_upd_t; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER info_def_ins_upd_t BEFORE INSERT OR UPDATE ON public.info_def FOR EACH ROW EXECUTE PROCEDURE comptaproc.info_def_ins_upd();


--
-- Name: jrn_def jrn_def_description_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER jrn_def_description_ins_upd BEFORE INSERT OR UPDATE ON public.jrn_def FOR EACH ROW EXECUTE PROCEDURE comptaproc.t_jrn_def_description();


--
-- Name: op_predef opd_limit_description; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER opd_limit_description BEFORE INSERT OR UPDATE ON public.op_predef FOR EACH ROW EXECUTE PROCEDURE comptaproc.opd_limit_description();


--
-- Name: parm_periode parm_periode_check_periode_trg; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER parm_periode_check_periode_trg BEFORE INSERT OR UPDATE ON public.parm_periode FOR EACH ROW EXECUTE PROCEDURE comptaproc.check_periode();


--
-- Name: profile_user profile_user_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER profile_user_ins_upd BEFORE INSERT OR UPDATE ON public.profile_user FOR EACH ROW EXECUTE PROCEDURE comptaproc.trg_profile_user_ins_upd();


--
-- Name: TRIGGER profile_user_ins_upd ON profile_user; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TRIGGER profile_user_ins_upd ON public.profile_user IS 'Force the column user_name to lowercase';


--
-- Name: quant_purchase quant_sold_ins_upd_tr; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER quant_sold_ins_upd_tr AFTER INSERT OR UPDATE ON public.quant_purchase FOR EACH ROW EXECUTE PROCEDURE comptaproc.quant_purchase_ins_upd();


--
-- Name: quant_sold quant_sold_ins_upd_tr; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER quant_sold_ins_upd_tr AFTER INSERT OR UPDATE ON public.quant_sold FOR EACH ROW EXECUTE PROCEDURE comptaproc.quant_sold_ins_upd();


--
-- Name: fiche remove_action_gestion; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER remove_action_gestion AFTER DELETE ON public.fiche FOR EACH ROW EXECUTE PROCEDURE comptaproc.card_after_delete();


--
-- Name: jrn t_check_balance; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_check_balance AFTER INSERT OR UPDATE ON public.jrn FOR EACH ROW EXECUTE PROCEDURE comptaproc.proc_check_balance();


--
-- Name: jrn t_check_jrn; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_check_jrn BEFORE INSERT OR DELETE OR UPDATE ON public.jrn FOR EACH ROW EXECUTE PROCEDURE comptaproc.jrn_check_periode();


--
-- Name: groupe_analytique t_group_analytic_del; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_group_analytic_del BEFORE DELETE ON public.groupe_analytique FOR EACH ROW EXECUTE PROCEDURE comptaproc.group_analytique_del();


--
-- Name: groupe_analytique t_group_analytic_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_group_analytic_ins_upd BEFORE INSERT OR UPDATE ON public.groupe_analytique FOR EACH ROW EXECUTE PROCEDURE comptaproc.group_analytic_ins_upd();


--
-- Name: jnt_fic_attr t_jnt_fic_attr_ins; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_jnt_fic_attr_ins AFTER INSERT ON public.jnt_fic_attr FOR EACH ROW EXECUTE PROCEDURE comptaproc.jnt_fic_attr_ins();


--
-- Name: jrn_def t_jrn_def_add_periode; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_jrn_def_add_periode AFTER INSERT ON public.jrn_def FOR EACH ROW EXECUTE PROCEDURE comptaproc.jrn_def_add();


--
-- Name: jrn_def t_jrn_def_delete; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_jrn_def_delete BEFORE DELETE ON public.jrn_def FOR EACH ROW EXECUTE PROCEDURE comptaproc.jrn_def_delete();


--
-- Name: jrn t_jrn_del; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_jrn_del BEFORE DELETE ON public.jrn FOR EACH ROW EXECUTE PROCEDURE comptaproc.jrn_del();


--
-- Name: jrnx t_jrnx_del; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_jrnx_del BEFORE DELETE ON public.jrnx FOR EACH ROW EXECUTE PROCEDURE comptaproc.jrnx_del();


--
-- Name: jrnx t_jrnx_ins; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_jrnx_ins BEFORE INSERT ON public.jrnx FOR EACH ROW EXECUTE PROCEDURE comptaproc.jrnx_ins();


--
-- Name: TRIGGER t_jrnx_ins ON jrnx; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TRIGGER t_jrnx_ins ON public.jrnx IS 'check that the qcode used by the card exists and format it : uppercase and trim the space';


--
-- Name: jrnx t_jrnx_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_jrnx_upd BEFORE UPDATE ON public.jrnx FOR EACH ROW EXECUTE PROCEDURE comptaproc.jrnx_ins();


--
-- Name: jrnx t_letter_del; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_letter_del AFTER DELETE ON public.jrnx FOR EACH ROW EXECUTE PROCEDURE comptaproc.jrnx_letter_del();


--
-- Name: TRIGGER t_letter_del ON jrnx; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TRIGGER t_letter_del ON public.jrnx IS 'Delete the lettering for this row';


--
-- Name: plan_analytique t_plan_analytique_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_plan_analytique_ins_upd BEFORE INSERT OR UPDATE ON public.plan_analytique FOR EACH ROW EXECUTE PROCEDURE comptaproc.plan_analytic_ins_upd();


--
-- Name: poste_analytique t_poste_analytique_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_poste_analytique_ins_upd BEFORE INSERT OR UPDATE ON public.poste_analytique FOR EACH ROW EXECUTE PROCEDURE comptaproc.poste_analytique_ins_upd();


--
-- Name: tmp_pcmn t_tmp_pcm_alphanum_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_tmp_pcm_alphanum_ins_upd BEFORE INSERT OR UPDATE ON public.tmp_pcmn FOR EACH ROW EXECUTE PROCEDURE comptaproc.tmp_pcmn_alphanum_ins_upd();


--
-- Name: tmp_pcmn t_tmp_pcmn_ins; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER t_tmp_pcmn_ins BEFORE INSERT ON public.tmp_pcmn FOR EACH ROW EXECUTE PROCEDURE comptaproc.tmp_pcmn_ins();


--
-- Name: todo_list todo_list_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER todo_list_ins_upd BEFORE INSERT OR UPDATE ON public.todo_list FOR EACH ROW EXECUTE PROCEDURE comptaproc.trg_todo_list_ins_upd();


--
-- Name: TRIGGER todo_list_ins_upd ON todo_list; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TRIGGER todo_list_ins_upd ON public.todo_list IS 'Force the column use_login to lowercase';


--
-- Name: todo_list_shared todo_list_shared_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER todo_list_shared_ins_upd BEFORE INSERT OR UPDATE ON public.todo_list_shared FOR EACH ROW EXECUTE PROCEDURE comptaproc.trg_todo_list_shared_ins_upd();


--
-- Name: TRIGGER todo_list_shared_ins_upd ON todo_list_shared; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TRIGGER todo_list_shared_ins_upd ON public.todo_list_shared IS 'Force the column ua_login to lowercase';


--
-- Name: action_gestion_related trg_action_gestion_related; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER trg_action_gestion_related BEFORE INSERT OR UPDATE ON public.action_gestion_related FOR EACH ROW EXECUTE PROCEDURE comptaproc.action_gestion_related_ins_up();


--
-- Name: fiche_def trg_category_card_before_delete; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER trg_category_card_before_delete BEFORE DELETE ON public.fiche_def FOR EACH ROW EXECUTE PROCEDURE comptaproc.category_card_before_delete();


--
-- Name: extension trg_extension_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER trg_extension_ins_upd BEFORE INSERT OR UPDATE ON public.extension FOR EACH ROW EXECUTE PROCEDURE comptaproc.extension_ins_upd();


--
-- Name: document_type trigger_document_type_i; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER trigger_document_type_i AFTER INSERT ON public.document_type FOR EACH ROW EXECUTE PROCEDURE comptaproc.t_document_type_insert();


--
-- Name: jrn_def trigger_jrn_def_sequence_i; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER trigger_jrn_def_sequence_i AFTER INSERT ON public.jrn_def FOR EACH ROW EXECUTE PROCEDURE comptaproc.t_jrn_def_sequence();


--
-- Name: user_sec_act user_sec_act_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER user_sec_act_ins_upd BEFORE INSERT OR UPDATE ON public.user_sec_act FOR EACH ROW EXECUTE PROCEDURE comptaproc.trg_user_sec_act_ins_upd();


--
-- Name: TRIGGER user_sec_act_ins_upd ON user_sec_act; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TRIGGER user_sec_act_ins_upd ON public.user_sec_act IS 'Force the column ua_login to lowercase';


--
-- Name: user_sec_jrn user_sec_jrn_after_ins_upd; Type: TRIGGER; Schema: public; Owner: prisma
--

CREATE TRIGGER user_sec_jrn_after_ins_upd BEFORE INSERT OR UPDATE ON public.user_sec_jrn FOR EACH ROW EXECUTE PROCEDURE comptaproc.trg_user_sec_jrn_ins_upd();


--
-- Name: TRIGGER user_sec_jrn_after_ins_upd ON user_sec_jrn; Type: COMMENT; Schema: public; Owner: prisma
--

COMMENT ON TRIGGER user_sec_jrn_after_ins_upd ON public.user_sec_jrn IS 'Force the column uj_login to lowercase';


--
-- Name: centralized $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.centralized
    ADD CONSTRAINT "$1" FOREIGN KEY (c_jrn_def) REFERENCES public.jrn_def(jrn_def_id);


--
-- Name: user_sec_act $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_act
    ADD CONSTRAINT "$1" FOREIGN KEY (ua_act_id) REFERENCES public.action(ac_id);


--
-- Name: fiche_def $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fiche_def
    ADD CONSTRAINT "$1" FOREIGN KEY (frd_id) REFERENCES public.fiche_def_ref(frd_id);


--
-- Name: attr_min $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.attr_min
    ADD CONSTRAINT "$1" FOREIGN KEY (frd_id) REFERENCES public.fiche_def_ref(frd_id);


--
-- Name: fiche $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fiche
    ADD CONSTRAINT "$1" FOREIGN KEY (fd_id) REFERENCES public.fiche_def(fd_id);


--
-- Name: fiche_detail $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fiche_detail
    ADD CONSTRAINT "$1" FOREIGN KEY (f_id) REFERENCES public.fiche(f_id);


--
-- Name: jnt_fic_attr $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_fic_attr
    ADD CONSTRAINT "$1" FOREIGN KEY (fd_id) REFERENCES public.fiche_def(fd_id);


--
-- Name: jrn $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn
    ADD CONSTRAINT "$1" FOREIGN KEY (jr_def_id) REFERENCES public.jrn_def(jrn_def_id);


--
-- Name: jrn_def $1; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_def
    ADD CONSTRAINT "$1" FOREIGN KEY (jrn_def_type) REFERENCES public.jrn_type(jrn_type_id);


--
-- Name: jrnx $2; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrnx
    ADD CONSTRAINT "$2" FOREIGN KEY (j_jrn_def) REFERENCES public.jrn_def(jrn_def_id);


--
-- Name: attr_min $2; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.attr_min
    ADD CONSTRAINT "$2" FOREIGN KEY (ad_id) REFERENCES public.attr_def(ad_id);


--
-- Name: action_gestion_operation action_comment_operation_ag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_operation
    ADD CONSTRAINT action_comment_operation_ag_id_fkey FOREIGN KEY (ag_id) REFERENCES public.action_gestion(ag_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_gestion_operation action_comment_operation_jr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_operation
    ADD CONSTRAINT action_comment_operation_jr_id_fkey FOREIGN KEY (jr_id) REFERENCES public.jrn(jr_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_detail action_detail_ag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_detail
    ADD CONSTRAINT action_detail_ag_id_fkey FOREIGN KEY (ag_id) REFERENCES public.action_gestion(ag_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_person action_gestion_ag_id_fk2; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_person
    ADD CONSTRAINT action_gestion_ag_id_fk2 FOREIGN KEY (ag_id) REFERENCES public.action_gestion(ag_id);


--
-- Name: action_gestion_comment action_gestion_comment_ag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_comment
    ADD CONSTRAINT action_gestion_comment_ag_id_fkey FOREIGN KEY (ag_id) REFERENCES public.action_gestion(ag_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_gestion_related action_gestion_related_aga_greatest_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_related
    ADD CONSTRAINT action_gestion_related_aga_greatest_fkey FOREIGN KEY (aga_greatest) REFERENCES public.action_gestion(ag_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_gestion_related action_gestion_related_aga_least_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_related
    ADD CONSTRAINT action_gestion_related_aga_least_fkey FOREIGN KEY (aga_least) REFERENCES public.action_gestion(ag_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_gestion_related action_gestion_related_aga_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion_related
    ADD CONSTRAINT action_gestion_related_aga_type_fkey FOREIGN KEY (aga_type) REFERENCES public.link_action_type(l_id);


--
-- Name: action_person action_person_ag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_person
    ADD CONSTRAINT action_person_ag_id_fkey FOREIGN KEY (ag_id) REFERENCES public.action_gestion(ag_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_person action_person_f_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_person
    ADD CONSTRAINT action_person_f_id_fkey FOREIGN KEY (f_id) REFERENCES public.fiche(f_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_tags action_tags_ag_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_tags
    ADD CONSTRAINT action_tags_ag_id_fkey FOREIGN KEY (ag_id) REFERENCES public.action_gestion(ag_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_tags action_tags_t_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_tags
    ADD CONSTRAINT action_tags_t_id_fkey FOREIGN KEY (t_id) REFERENCES public.tags(t_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: forecast_item card; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast_item
    ADD CONSTRAINT card FOREIGN KEY (fi_card) REFERENCES public.fiche(f_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: fiche_detail fiche_detail_attr_def_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.fiche_detail
    ADD CONSTRAINT fiche_detail_attr_def_fk FOREIGN KEY (ad_id) REFERENCES public.attr_def(ad_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_person fiche_f_id_fk2; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_person
    ADD CONSTRAINT fiche_f_id_fk2 FOREIGN KEY (f_id) REFERENCES public.fiche(f_id);


--
-- Name: action_gestion fiche_f_id_fk3; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion
    ADD CONSTRAINT fiche_f_id_fk3 FOREIGN KEY (f_id_dest) REFERENCES public.fiche(f_id);


--
-- Name: action_gestion fk_action_gestion_document_type; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion
    ADD CONSTRAINT fk_action_gestion_document_type FOREIGN KEY (ag_type) REFERENCES public.document_type(dt_id);


--
-- Name: quant_fin fk_card; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_fin
    ADD CONSTRAINT fk_card FOREIGN KEY (qf_bank) REFERENCES public.fiche(f_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quant_fin fk_card_other; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_fin
    ADD CONSTRAINT fk_card_other FOREIGN KEY (qf_other) REFERENCES public.fiche(f_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: forecast_item fk_forecast; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast_item
    ADD CONSTRAINT fk_forecast FOREIGN KEY (fc_id) REFERENCES public.forecast_cat(fc_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jrn_info fk_info_def; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_info
    ADD CONSTRAINT fk_info_def FOREIGN KEY (id_type) REFERENCES public.info_def(id_type) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jrn_info fk_jrn; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_info
    ADD CONSTRAINT fk_jrn FOREIGN KEY (jr_id) REFERENCES public.jrn(jr_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quant_fin fk_jrn; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_fin
    ADD CONSTRAINT fk_jrn FOREIGN KEY (jr_id) REFERENCES public.jrn(jr_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: groupe_analytique fk_pa_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.groupe_analytique
    ADD CONSTRAINT fk_pa_id FOREIGN KEY (pa_id) REFERENCES public.plan_analytique(pa_id) ON DELETE CASCADE;


--
-- Name: jrnx fk_pcmn_val; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrnx
    ADD CONSTRAINT fk_pcmn_val FOREIGN KEY (j_poste) REFERENCES public.tmp_pcmn(pcm_val);


--
-- Name: centralized fk_pcmn_val; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.centralized
    ADD CONSTRAINT fk_pcmn_val FOREIGN KEY (c_poste) REFERENCES public.tmp_pcmn(pcm_val);


--
-- Name: stock_goods fk_stock_good_f_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_goods
    ADD CONSTRAINT fk_stock_good_f_id FOREIGN KEY (f_id) REFERENCES public.fiche(f_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: todo_list_shared fk_todo_list_shared_todo_list; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.todo_list_shared
    ADD CONSTRAINT fk_todo_list_shared_todo_list FOREIGN KEY (todo_list_id) REFERENCES public.todo_list(tl_id);


--
-- Name: forecast_cat forecast_child; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast_cat
    ADD CONSTRAINT forecast_child FOREIGN KEY (f_id) REFERENCES public.forecast(f_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: forecast forecast_f_end_date_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast
    ADD CONSTRAINT forecast_f_end_date_fkey FOREIGN KEY (f_end_date) REFERENCES public.parm_periode(p_id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: forecast forecast_f_start_date_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.forecast
    ADD CONSTRAINT forecast_f_start_date_fkey FOREIGN KEY (f_start_date) REFERENCES public.parm_periode(p_id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: form formdef_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.form
    ADD CONSTRAINT formdef_fk FOREIGN KEY (fo_fr_id) REFERENCES public.formdef(fr_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: letter_cred jnt_cred_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_cred
    ADD CONSTRAINT jnt_cred_fk FOREIGN KEY (jl_id) REFERENCES public.jnt_letter(jl_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: letter_deb jnt_deb_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_deb
    ADD CONSTRAINT jnt_deb_fk FOREIGN KEY (jl_id) REFERENCES public.jnt_letter(jl_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jnt_fic_attr jnt_fic_attr_attr_def_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jnt_fic_attr
    ADD CONSTRAINT jnt_fic_attr_attr_def_fk FOREIGN KEY (ad_id) REFERENCES public.attr_def(ad_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: op_predef jrn_def_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.op_predef
    ADD CONSTRAINT jrn_def_id_fk FOREIGN KEY (jrn_def_id) REFERENCES public.jrn_def(jrn_def_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jrn_periode jrn_per_jrn_def_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_periode
    ADD CONSTRAINT jrn_per_jrn_def_id FOREIGN KEY (jrn_def_id) REFERENCES public.jrn_def(jrn_def_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jrn_periode jrn_periode_p_id; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_periode
    ADD CONSTRAINT jrn_periode_p_id FOREIGN KEY (p_id) REFERENCES public.parm_periode(p_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jrn_rapt jrn_rapt_jr_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_rapt
    ADD CONSTRAINT jrn_rapt_jr_id_fkey FOREIGN KEY (jr_id) REFERENCES public.jrn(jr_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jrn_rapt jrn_rapt_jra_concerned_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_rapt
    ADD CONSTRAINT jrn_rapt_jra_concerned_fkey FOREIGN KEY (jra_concerned) REFERENCES public.jrn(jr_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: jrnx jrnx_f_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrnx
    ADD CONSTRAINT jrnx_f_id_fkey FOREIGN KEY (f_id) REFERENCES public.fiche(f_id) ON UPDATE CASCADE;


--
-- Name: jrn_note jrnx_note_j_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.jrn_note
    ADD CONSTRAINT jrnx_note_j_id_fkey FOREIGN KEY (jr_id) REFERENCES public.jrn(jr_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: key_distribution_activity key_distribution_activity_ke_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_activity
    ADD CONSTRAINT key_distribution_activity_ke_id_fkey FOREIGN KEY (ke_id) REFERENCES public.key_distribution_detail(ke_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: key_distribution_activity key_distribution_activity_pa_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_activity
    ADD CONSTRAINT key_distribution_activity_pa_id_fkey FOREIGN KEY (pa_id) REFERENCES public.plan_analytique(pa_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: key_distribution_activity key_distribution_activity_po_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_activity
    ADD CONSTRAINT key_distribution_activity_po_id_fkey FOREIGN KEY (po_id) REFERENCES public.poste_analytique(po_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: key_distribution_detail key_distribution_detail_kd_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_detail
    ADD CONSTRAINT key_distribution_detail_kd_id_fkey FOREIGN KEY (kd_id) REFERENCES public.key_distribution(kd_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: key_distribution_ledger key_distribution_ledger_jrn_def_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_ledger
    ADD CONSTRAINT key_distribution_ledger_jrn_def_id_fkey FOREIGN KEY (jrn_def_id) REFERENCES public.jrn_def(jrn_def_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: key_distribution_ledger key_distribution_ledger_kd_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.key_distribution_ledger
    ADD CONSTRAINT key_distribution_ledger_kd_id_fkey FOREIGN KEY (kd_id) REFERENCES public.key_distribution(kd_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: letter_cred letter_cred_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_cred
    ADD CONSTRAINT letter_cred_fk FOREIGN KEY (j_id) REFERENCES public.jrnx(j_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: letter_deb letter_deb_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.letter_deb
    ADD CONSTRAINT letter_deb_fk FOREIGN KEY (j_id) REFERENCES public.jrnx(j_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: document_modele md_type; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.document_modele
    ADD CONSTRAINT md_type FOREIGN KEY (md_type) REFERENCES public.document_type(dt_id);


--
-- Name: mod_payment mod_payment_jrn_def_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mod_payment
    ADD CONSTRAINT mod_payment_jrn_def_id_fk FOREIGN KEY (jrn_def_id) REFERENCES public.jrn_def(jrn_def_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: mod_payment mod_payment_mp_fd_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mod_payment
    ADD CONSTRAINT mod_payment_mp_fd_id_fkey FOREIGN KEY (mp_fd_id) REFERENCES public.fiche_def(fd_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: mod_payment mod_payment_mp_jrn_def_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.mod_payment
    ADD CONSTRAINT mod_payment_mp_jrn_def_id_fkey FOREIGN KEY (mp_jrn_def_id) REFERENCES public.jrn_def(jrn_def_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: operation_analytique operation_analytique_fiche_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.operation_analytique
    ADD CONSTRAINT operation_analytique_fiche_id_fk FOREIGN KEY (f_id) REFERENCES public.fiche(f_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: operation_analytique operation_analytique_j_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.operation_analytique
    ADD CONSTRAINT operation_analytique_j_id_fkey FOREIGN KEY (j_id) REFERENCES public.jrnx(j_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: operation_analytique operation_analytique_po_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.operation_analytique
    ADD CONSTRAINT operation_analytique_po_id_fkey FOREIGN KEY (po_id) REFERENCES public.poste_analytique(po_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: poste_analytique poste_analytique_pa_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.poste_analytique
    ADD CONSTRAINT poste_analytique_pa_id_fkey FOREIGN KEY (pa_id) REFERENCES public.plan_analytique(pa_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: action_gestion profile_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.action_gestion
    ADD CONSTRAINT profile_fkey FOREIGN KEY (ag_dest) REFERENCES public.profile(p_id) ON UPDATE SET NULL ON DELETE SET NULL;


--
-- Name: profile_menu profile_menu_me_code_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_menu
    ADD CONSTRAINT profile_menu_me_code_fkey FOREIGN KEY (me_code) REFERENCES public.menu_ref(me_code) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: profile_menu profile_menu_p_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_menu
    ADD CONSTRAINT profile_menu_p_id_fkey FOREIGN KEY (p_id) REFERENCES public.profile(p_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: profile_menu profile_menu_type_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_menu
    ADD CONSTRAINT profile_menu_type_fkey FOREIGN KEY (p_type_display) REFERENCES public.profile_menu_type(pm_type);


--
-- Name: profile_sec_repository profile_sec_repository_p_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_sec_repository
    ADD CONSTRAINT profile_sec_repository_p_id_fkey FOREIGN KEY (p_id) REFERENCES public.profile(p_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: profile_sec_repository profile_sec_repository_r_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_sec_repository
    ADD CONSTRAINT profile_sec_repository_r_id_fkey FOREIGN KEY (r_id) REFERENCES public.stock_repository(r_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: profile_user profile_user_p_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.profile_user
    ADD CONSTRAINT profile_user_p_id_fkey FOREIGN KEY (p_id) REFERENCES public.profile(p_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quant_purchase qp_vat_code_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_purchase
    ADD CONSTRAINT qp_vat_code_fk FOREIGN KEY (qp_vat_code) REFERENCES public.tva_rate(tva_id);


--
-- Name: quant_sold qs_vat_code_fk; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_sold
    ADD CONSTRAINT qs_vat_code_fk FOREIGN KEY (qs_vat_code) REFERENCES public.tva_rate(tva_id);


--
-- Name: quant_purchase quant_purchase_j_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_purchase
    ADD CONSTRAINT quant_purchase_j_id_fkey FOREIGN KEY (j_id) REFERENCES public.jrnx(j_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quant_purchase quant_purchase_qp_internal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_purchase
    ADD CONSTRAINT quant_purchase_qp_internal_fkey FOREIGN KEY (qp_internal) REFERENCES public.jrn(jr_internal) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: quant_sold quant_sold_j_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_sold
    ADD CONSTRAINT quant_sold_j_id_fkey FOREIGN KEY (j_id) REFERENCES public.jrnx(j_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: quant_sold quant_sold_qs_internal_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.quant_sold
    ADD CONSTRAINT quant_sold_qs_internal_fkey FOREIGN KEY (qs_internal) REFERENCES public.jrn(jr_internal) ON UPDATE CASCADE ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED;


--
-- Name: stock_change stock_change_r_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_change
    ADD CONSTRAINT stock_change_r_id_fkey FOREIGN KEY (r_id) REFERENCES public.stock_repository(r_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: stock_goods stock_goods_c_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_goods
    ADD CONSTRAINT stock_goods_c_id_fkey FOREIGN KEY (c_id) REFERENCES public.stock_change(c_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: stock_goods stock_goods_j_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.stock_goods
    ADD CONSTRAINT stock_goods_j_id_fkey FOREIGN KEY (j_id) REFERENCES public.jrnx(j_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: tmp_stockgood_detail tmp_stockgood_detail_s_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.tmp_stockgood_detail
    ADD CONSTRAINT tmp_stockgood_detail_s_id_fkey FOREIGN KEY (s_id) REFERENCES public.tmp_stockgood(s_id) ON DELETE CASCADE;


--
-- Name: user_sec_jrn uj_priv_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_jrn
    ADD CONSTRAINT uj_priv_id_fkey FOREIGN KEY (uj_jrn_id) REFERENCES public.jrn_def(jrn_def_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_sec_action_profile user_sec_action_profile_p_granted_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_action_profile
    ADD CONSTRAINT user_sec_action_profile_p_granted_fkey FOREIGN KEY (p_granted) REFERENCES public.profile(p_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- Name: user_sec_action_profile user_sec_action_profile_p_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: prisma
--

ALTER TABLE ONLY public.user_sec_action_profile
    ADD CONSTRAINT user_sec_action_profile_p_id_fkey FOREIGN KEY (p_id) REFERENCES public.profile(p_id) ON UPDATE CASCADE ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

