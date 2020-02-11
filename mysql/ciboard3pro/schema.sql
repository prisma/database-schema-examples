DROP TABLE IF EXISTS `cb_attendance`;

CREATE TABLE `cb_attendance` (
	`att_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`att_point`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '출석체크로 얻게 된 포인트 점수',
	`att_memo`	varchar(255)	NULL	COMMENT '출석체크시 인사말',
	`att_continuity`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '연속 출석 일수',
	`att_ranking`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '출석일별순위',
	`att_date`	date	NULL	COMMENT '출석 체크한 날',
	`att_datetime`	datetime	NULL	COMMENT '출석 체크한 시간',
	`Field`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `cb_autologin`;

CREATE TABLE `cb_autologin` (
	`aul_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK',
	`aul_key`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '고유 키값, 쿠키로 저장됩니다',
	`aul_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '자동로그인 설정한 회원의 IP',
	`aul_datetime`	datetime	NULL	COMMENT '자동로그인 한 시간',
	`Field`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `cb_banner`;

CREATE TABLE `cb_banner` (
	`ban_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK',
	`bng_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 그룹명',
	`ban_start_date`	date	NULL	COMMENT '배너 시작일',
	`ban_end_date`	date	NULL	COMMENT '배너 종료일',
	`ban_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 설명, 배너 이미지에 마우스를 오버하면 설명이 나타납니다',
	`ban_url`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 클릭시 이동할 페이지 주소',
	`ban_target`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 클릭시 링크 새창여부',
	`ban_device`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 노출 디바이스',
	`ban_width`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '배너 가로 길이',
	`ban_height`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '배너 세로 길이',
	`ban_hit`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '배너 클릭 회수',
	`ban_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '배너 정렬 순서',
	`ban_image`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 이미지 경로',
	`ban_activated`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '배너 활성 여부',
	`ban_datetime`	datetime	NULL	COMMENT '배너 올린 일시',
	`ban_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '배너 올린 IP'
);

DROP TABLE IF EXISTS `cb_banner_click_log`;

CREATE TABLE `cb_banner_click_log` (
	`bcl_id`	int(11)	NOT NULL	COMMENT 'PK',
	`ban_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '배너를 클릭한 회원 PK',
	`bcl_datetime`	datetime	NULL	COMMENT '배너를 클릭한 일시',
	`bcl_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '배너를 클릭한 IP',
	`bcl_referer`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너가 노출된 주소',
	`bcl_url`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 클릭시 이동한 주소',
	`bcl_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 클릭한 유저의 user agent'
);

DROP TABLE IF EXISTS `cb_banner_group`;

CREATE TABLE `cb_banner_group` (
	`bng_id`	int(11)	NOT NULL	COMMENT 'PK',
	`bng_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '배너 그룹명'
);

DROP TABLE IF EXISTS `cb_blame`;

CREATE TABLE `cb_blame` (
	`bla_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '신고를 한 회원의 PK',
	`brd_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 ( board table ) 의 PK',
	`bgr_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'ok',
	`target_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '신고한 게시물 (post table)이나 댓글 (comment table) 의 PK',
	`target_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '1 이면 게시물, 2 이면 댓글',
	`target_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '신고를 당한 회원, 즉 신고당한 게시물이나 댓글을 쓴 회원의 PK',
	`bla_datetime`	datetime	NULL	COMMENT '신고를 한 일시',
	`bla_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '신고를 한 IP'
);

DROP TABLE IF EXISTS `cb_board`;

CREATE TABLE `cb_board` (
	`brd_id`	int(11)	NOT NULL	COMMENT 'PK',
	`bgr_id`	int(11)	NOT NULL	COMMENT 'PK',
	`brd_idv`	int(11)	NOT NULL	COMMENT '게시판 그룹 테이블 ( board_group table ) 의 PK',
	`brd_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '게시판 주소',
	`brd_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '게시판명',
	`brd_mobile_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '모바일 게시판명',
	`brd_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 정렬순서',
	`brd_search`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '게시판 검색 여부'
);

DROP TABLE IF EXISTS `cb_board_admin`;

CREATE TABLE `cb_board_admin` (
	`bam_id`	int(11)	NOT NULL	COMMENT 'PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 ( board table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	COMMENT '회원 테이블 ( member table ) 의 PK'
);

DROP TABLE IF EXISTS `cb_board_category`;

CREATE TABLE `cb_board_category` (
	`bca_id`	VARCHAR(255)	NOT NULL	COMMENT 'PK',
	`brd_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 ( board table ) 의 PK',
	`bca_key`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT 'category 테이블의 키값, like 검색을 쉽게 하기 위한 키값',
	`bca_value`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '카테고리명',
	`bca_parent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '부모 카테고리의 bca_key 가 저장됨',
	`bca_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '카테고리 정렬 순서'
);

DROP TABLE IF EXISTS `cb_board_group`;

CREATE TABLE `cb_board_group` (
	`bgr_id`	int(11)	NOT NULL	COMMENT 'PK',
	`bgr_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '게시판 그룹 주소에 쓰일 key 값, 여기에 저장된 값이 주소 부분에 사용됩니다',
	`bgr_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '게시판 그룹명',
	`bgr_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 그룹 정렬 순서'
);

DROP TABLE IF EXISTS `cb_board_group_admin`;

CREATE TABLE `cb_board_group_admin` (
	`bga_id`	int(11)	NOT NULL,
	`bgr_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 그룹 테이블 ( board_group table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK'
);

DROP TABLE IF EXISTS `cb_board_group_meta`;

CREATE TABLE `cb_board_group_meta` (
	`bgr_id`	int(11)	NOT NULL	COMMENT '게시판 그룹 테이블 ( board_group table ) 의 PK',
	`bgm_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '게시판그룹 환경설정 키값',
	`bgm_value`	text	NULL	COMMENT '게시판그룹 환경설정 내용'
);

DROP TABLE IF EXISTS `cb_board_meta`;

CREATE TABLE `cb_board_meta` (
	`brd_id`	int(11)	NOT NULL	COMMENT '게시판 테이블 ( board table ) 의 PK',
	`bmt_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '게시판 환경설정 키값',
	`bmt_value`	text	NULL	COMMENT '게시판 환경설정 내용'
);

DROP TABLE IF EXISTS `cb_cmall_cart`;

CREATE TABLE `cb_cmall_cart` (
	`cct_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`cit_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '컨텐츠몰 상품 테이블 ( cmall_item table ) 의 PK',
	`cde_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '컨텐츠몰 아이템 상품 옵션 테이블 ( cmall_item_detail table ) 의 PK',
	`cct_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '옵션 선택 수량',
	`cct_cart`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '장바구니인지 여부',
	`cct_order`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '정렬 순서',
	`cct_datetime`	datetime	NULL	COMMENT '장바구니에 담은 시간',
	`cct_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '장바구니에 담은 때의 IP'
);

DROP TABLE IF EXISTS `cb_cmall_category`;

CREATE TABLE `cb_cmall_category` (
	`cca_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cca_value`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '카테고리명',
	`cca_parent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상위 카테고리의 PK',
	`cca_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '카테고리 정렬 순서'
);

DROP TABLE IF EXISTS `cb_cmall_category_rel`;

CREATE TABLE `cb_cmall_category_rel` (
	`ccr_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cca_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK',
	`cit_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK'
);

DROP TABLE IF EXISTS `cb_cmall_demo_click_log`;

CREATE TABLE `cb_cmall_demo_click_log` (
	`cdc_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cit_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '컨텐츠몰 상품 테이블 ( cmall_item table ) 의 PK',
	`cdc_type`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '어드민데모인지, 사용자데모인지 구분자',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`cdc_datetime`	datetime	NULL	COMMENT '데모 링크 클릭 일시',
	`cdc_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '데모 링크 클릭한 IP',
	`cdc_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '링크 클릭한 유저의 user agent'
);

DROP TABLE IF EXISTS `cb_cmall_download_log`;

CREATE TABLE `cb_cmall_download_log` (
	`cdo_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cit_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '컨텐츠몰 상품 테이블 ( cmall_item table ) 의 PK',
	`cde_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '컨텐츠몰 아이템 상품 옵션 테이블 ( cmall_item_detail table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`cdo_datetime`	datetime	NULL	COMMENT '상품 다운로드 일시',
	`cdo_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '상품 다운로드한 IP',
	`cdo_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '다운로드한 유저의 user agent',
	`cit_id2`	int(11)	NOT NULL	COMMENT 'PK'
);

DROP TABLE IF EXISTS `cb_cmall_item`;

CREATE TABLE `cb_cmall_item` (
	`cit_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cit_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '상품 고유의 주소',
	`cit_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품명',
	`cit_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 정렬순서',
	`cit_type1`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '추천 상품인지 여부',
	`cit_type2`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '인기 상품인지 여부',
	`cit_type3`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '신상품 상품인지 여부',
	`cit_type4`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '할인 상품인지 여부',
	`cit_status`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '할인 상품인지 여부 "상품 출력 여부',
	`cit_summary`	text	NULL	COMMENT '상품에 대한 간단한 설명',
	`cit_content`	mediumtext	NULL	COMMENT '상품 상세 설명',
	`cit_mobile_content`	mediumtext	NULL	COMMENT '"모바일용 상품 상세 설명',
	`cit_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '상품 설명 내용이 HTML 타입인지 여부',
	`cit_price`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 가격',
	`cit_file_1`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_2`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_3`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_4`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_5`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_6`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_7`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_8`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_9`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`cit_file_10`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품소개이미지, 총 10개의 이미지까지 업로드 가능',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품을 올린 회원 PK',
	`cit_hit`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 클릭수',
	`cit_datetime`	datetime	NULL	COMMENT '상품 입력 시간',
	`cit_updated_datetime`	datetime	NULL	COMMENT '상품 최종 수정 시간',
	`cit_sell_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 판매 개수',
	`cit_wish_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '찜한 목록에 담긴 개수',
	`cit_download_days`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 다운로드 가능 기간',
	`cit_review_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 리뷰 개수',
	`cit_review_average`	decimal(2,1)	NOT NULL	DEFAULT '0.0'	COMMENT '상품 리뷰 평균 점수',
	`cit_qna_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 질문 개수'
);

DROP TABLE IF EXISTS `cb_cmall_item_detail`;

CREATE TABLE `cb_cmall_item_detail` (
	`cde_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cit_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '컨텐츠몰 상품 테이블 ( cmall_item table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	COMMENT '상품을 업로드 한 회원의 PK',
	`cde_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품 옵션 제목',
	`cde_price`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 옵션 추가가격',
	`cde_originname`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '파일 업로드시 원래 파일명',
	`cde_filename`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '파일 업로드시 서버에 저장된 파일명',
	`cde_download`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 다운로드 회수',
	`cde_filesize`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '업로드된 파일 사이즈',
	`cde_type`	varchar(10)	NOT NULL	DEFAULT ''	COMMENT '업로드된 파일 확장자',
	`cde_is_image`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '업로드된 파일이 이미지인지 여부',
	`cde_datetime`	datetime	NULL	COMMENT '상품 옵션 업로드 시간',
	`cde_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '상품 옵션 업로드한 IP',
	`cde_status`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '옵션이 현재 판매가능한지 여부'
);

DROP TABLE IF EXISTS `cb_cmall_item_history`;

CREATE TABLE `cb_cmall_item_history` (
	`chi_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cit_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 내용을 변경한 회원의 PK',
	`chi_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '변경한 제목',
	`chi_content`	mediumtext	NULL	COMMENT '변경한 내용',
	`chi_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '변경한 내용이 HTML 타입인지 여부',
	`chi_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '변경한 IP',
	`chi_datetime`	datetime	NULL	COMMENT '변경 일시'
);

DROP TABLE IF EXISTS `cb_cmall_item_meta`;

CREATE TABLE `cb_cmall_item_meta` (
	`cit_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK',
	`cim_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '상품 환경설정 키값',
	`cim_value`	text	NULL	COMMENT '상품 환경설정 내용'
);

DROP TABLE IF EXISTS `cb_cmall_order`;

CREATE TABLE `cb_cmall_order` (
	`cor_id`	bigint(20)	NOT NULL	COMMENT 'PK, 주문번호',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '주문한 회원의 PK',
	`mem_nickname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '주문한 회원의 닉네임',
	`mem_realname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '주문한 회원의 실명',
	`mem_email`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '주문한 회원의 이메일',
	`mem_phone`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '주문한 회원의 연락처',
	`cor_memo`	text	NULL	COMMENT '메모',
	`cor_total_money`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '총 주문금액',
	`cor_deposit`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '예치금 사용으로 결제한 금액',
	`cor_cash_request`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '현금 결제 요청금액',
	`cor_cash`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '실제 현금으로 결제한 금액',
	`cor_content`	text	NULL	COMMENT '하고싶은 말',
	`cor_pay_type`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '결제 수단',
	`cor_pg`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '결제를 한 PG 사',
	`cor_tno`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT 'PG 사로부터 받은 tno',
	`cor_app_no`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT 'PG 사로부터 받은 app_no',
	`cor_bank_info`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '결제한 은행 정보',
	`cor_admin_memo`	text	NULL	COMMENT '관리자 메모',
	`cor_datetime`	datetime	NULL	COMMENT '결제 시간',
	`cor_approve_datetime`	datetime	NULL	COMMENT '승인 시간',
	`cor_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '결제한 IP',
	`cor_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '결제한 회원의 useragent',
	`cor_status`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '승인 여부',
	`cor_vbank_expire`	datetime	NULL,
	`is_test`	char(1)	NOT NULL	DEFAULT '',
	`status`	varchar(255)	NOT NULL	DEFAULT '',
	`cor_refund_price`	int(11)	NOT NULL	DEFAULT '0',
	`cor_order_history`	text	NULL
);

DROP TABLE IF EXISTS `cb_cmall_order_detail`;

CREATE TABLE `cb_cmall_order_detail` (
	`cod_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cor_id`	bigint(20)	NOT NULL	DEFAULT '0'	COMMENT '주문 테이블 ( cmall_order table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '주문한 회원의 PK',
	`cit_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '주문한 상품이 저장된 컨텐츠몰 상품 테이블 ( cmall_item table ) 의 PK',
	`cde_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '"옵션 정보가 저장되어 있는  컨텐츠몰 아이템 상품 옵션 테이블 ( cmall_item_detail table ) 의 PK"',
	`cod_download_days`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '다운로드 가능기간',
	`cod_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '주문수량',
	`cod_status`	varchar(50)	NOT NULL	DEFAULT ''
);

DROP TABLE IF EXISTS `cb_cmall_qna`;

CREATE TABLE `cb_cmall_qna` (
	`cqa_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cit_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '컨텐츠몰 상품 테이블 ( cmall_item table ) 의 PK',
	`cqa_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '질문 제목',
	`cqa_content`	mediumtext	NULL	COMMENT '질문 내용',
	`cqa_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '질문 내용의 HTML 타입',
	`cqa_reply_content`	mediumtext	NULL	COMMENT '답변 내용',
	`cqa_reply_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '답변 내용의 HTML 타입',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '질문자 회원 PK',
	`cqa_secret`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '비밀글 여부',
	`cqa_receive_email`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '답변시 이메일 수신 여부',
	`cqa_receive_sms`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '답변시 문자 수신 여부',
	`cqa_datetime`	datetime	NULL	COMMENT '질문 일시',
	`cqa_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '질문한 IP',
	`cqa_reply_datetime`	datetime	NULL	COMMENT '답변 일시',
	`cqa_reply_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '답변한 회원 PK',
	`cqa_reply_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '답변한 IP'
);

DROP TABLE IF EXISTS `cb_cmall_review`;

CREATE TABLE `cb_cmall_review` (
	`cre_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cit_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '컨텐츠몰 상품 테이블 ( cmall_item table ) 의 PK',
	`cre_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '상품 후기 제목',
	`cre_content`	mediumtext	NULL	COMMENT '상품 후기 내용',
	`cre_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '상품 후기 내용의 HTML 타입',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상품 후기 작성자 회원 PK',
	`cre_score`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '평점',
	`cre_datetime`	datetime	NULL	COMMENT '상품 후기 등록 일시',
	`cre_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '상품 후기 등록 IP',
	`cre_status`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '승인 여부',
	`Field`	VARCHAR(255)	NULL
);

DROP TABLE IF EXISTS `cb_cmall_wishlist`;

CREATE TABLE `cb_cmall_wishlist` (
	`cwi_id`	int(11)	NOT NULL	COMMENT 'PK',
	`cit_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '보관한 상품( cmall_item table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '보관함에 저장한 회원의 PK',
	`cwi_datetime`	datetime	NULL	COMMENT '보관 일시',
	`cwi_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '보관 IP'
);

DROP TABLE IF EXISTS `cb_comment`;

CREATE TABLE `cb_comment` (
	`cmt_id`	int(11)	NOT NULL	COMMENT 'PK',
	`post_id`	int(11)	NOT NULL	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`brd_id`	int(11)	NOT NULL	COMMENT '게시판 테이블 ( board table ) 의 PK',
	`brd_id2`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id2`	int(11)	NOT NULL	COMMENT 'PK',
	`cmt_num`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '댓글 정렬을 위한 필드',
	`cmt_reply`	varchar(20)	NOT NULL	DEFAULT ''	COMMENT '답변 댓글 여부',
	`cmt_html`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '댓글 내용의 HTML 타입',
	`cmt_secret`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '비밀글 여부',
	`cmt_content`	text	NULL	COMMENT '댓글 내용',
	`mem_id`	int(11)	NOT NULL	COMMENT '댓글 입력한 회원의 PK',
	`cmt_password`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '비회원이 입력한 경우 패스워드',
	`cmt_userid`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '댓글 입력한 회원의 회원아이디',
	`cmt_username`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '댓글 입력한 회원의 실명',
	`cmt_nickname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '댓글 입력한 회원의 닉네임',
	`cmt_email`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '댓글 입력한 회원의 이메일',
	`cmt_homepage`	text	NULL	COMMENT '댓글 입력한 회원의 홈페이지 주소',
	`cmt_datetime`	datetime	NULL	COMMENT '댓글 입력 일시',
	`cmt_updated_datetime`	datetime	NULL	COMMENT '댓글 최근 수정 일시',
	`cmt_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '댓글 등록한 IP',
	`cmt_like`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '추천 회수',
	`cmt_dislike`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '비추천 회수',
	`cmt_blame`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '신고 회수',
	`cmt_device`	varchar(10)	NOT NULL	DEFAULT ''	COMMENT 'desktop , mobile 구분',
	`cmt_del`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '댓글 삭제 여부'
);

DROP TABLE IF EXISTS `cb_comment_meta`;

CREATE TABLE `cb_comment_meta` (
	`cmt_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '댓글 PK',
	`brd_id2`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id2`	int(11)	NOT NULL	COMMENT 'PK',
	`cme_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '댓글 환경설정 키값',
	`cme_value`	text	NULL	COMMENT '댓글 환경설정 내용'
);

DROP TABLE IF EXISTS `cb_config`;

CREATE TABLE `cb_config` (
	`cfg_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '환경설정 키값',
	`cfg_value`	text	NULL	COMMENT '환경설정 내용'
);

DROP TABLE IF EXISTS `cb_currentvisitor`;

CREATE TABLE `cb_currentvisitor` (
	`cur_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '접속한 IP',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '접속한 유저가 회원인 경우 회원 PK',
	`cur_mem_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '접속한 유저가 회원인 경우 회원닉네임',
	`cur_datetime`	datetime	NULL	COMMENT '최종 접속 시간',
	`cur_page`	text	NULL	COMMENT '접속 페이지명',
	`cur_url`	text	NULL	COMMENT '접속 페이지주소',
	`cur_referer`	text	NULL	COMMENT '이전 페이지주소',
	`cur_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '접속한 유저의 user agent'
);

DROP TABLE IF EXISTS `cb_deposit`;

CREATE TABLE `cb_deposit` (
	`dep_id`	bigint(20)	NOT NULL,
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`mem_nickname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 닉네임',
	`mem_realname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 실명',
	`mem_email`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 이메일',
	`mem_phone`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 연락처',
	`dep_from_type`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '현금을 예치금으로 변환하였을 경우, 현금 이라는 내용이 저장됨',
	`dep_to_type`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '현금을 예치금으로 변환하였을 경우, 예치금 이라는 내용이 저장됨',
	`dep_deposit_request`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '예치금 요청액',
	`dep_deposit`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '실제 예치금액',
	`dep_deposit_sum`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '현재 회원의 예치금 합계',
	`dep_cash_request`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '현금 요청액',
	`dep_cash`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '실제 현금 결제 금액',
	`dep_point`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '포인트로 예치금 구매시, 또는 예치금으로 포인트 구매시, 해당 포인트 점수',
	`dep_content`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '예치금 내용',
	`dep_pay_type`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '결제 수단',
	`dep_pg`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT 'PG 사',
	`dep_tno`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT 'PG 사 에서 제공받은 tno',
	`dep_app_no`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT 'PG 사 에서 제공받은 app_no',
	`dep_bank_info`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '결제 은행',
	`dep_admin_memo`	text	NULL	COMMENT '관리자용 메모',
	`dep_datetime`	datetime	NULL	COMMENT '결제 일시',
	`dep_deposit_datetime`	datetime	NULL	COMMENT '실제 충전 일시',
	`dep_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '회원의 IP',
	`dep_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원의 user agent',
	`dep_status`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '예치금 승인 여부',
	`dep_vbank_expire`	datetime	NULL,
	`is_test`	char(1)	NOT NULL	DEFAULT '',
	`status`	varchar(255)	NOT NULL	DEFAULT '',
	`dep_refund_price`	int(11)	NOT NULL	DEFAULT '0',
	`dep_order_history`	text	NULL
);

DROP TABLE IF EXISTS `cb_document`;

CREATE TABLE `cb_document` (
	`doc_id`	int(11)	NOT NULL	COMMENT 'PK',
	`doc_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '문서 주소',
	`doc_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '문서 제목',
	`doc_content`	mediumtext	NULL	COMMENT '문서 내용',
	`doc_mobile_content`	mediumtext	NULL	COMMENT '"문서 모바일 내용, 일반 내용과 다를 경우에만 입력합니다.',
	`doc_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '문서 내용의 HTML 타입',
	`doc_layout`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '문서의 레이아웃 디렉토리',
	`doc_mobile_layout`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '문서의 모바일 레이아웃 디렉토리',
	`doc_sidebar`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '문서의 레이아웃에 사이드바 사용여부',
	`doc_mobile_sidebar`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '문서의 모바일 레이아웃에 사이드바 사용여부',
	`doc_skin`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '문서의 스킨 디렉토리',
	`doc_mobile_skin`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '문서의 모바일 스킨 디렉토리',
	`doc_hit`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '문서 조회수',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '문서 작성한 회원의 PK',
	`doc_datetime`	datetime	NULL	COMMENT '문서 작성 일시',
	`doc_updated_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '문서 최종 업데이트한 회원 PK',
	`doc_updated_datetime`	datetime	NULL	COMMENT '문서 최종 업데이트한 일시'
);

DROP TABLE IF EXISTS `cb_editor_image`;

CREATE TABLE `cb_editor_image` (
	`eim_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '이미지 업로드한 회원 PK',
	`eim_originname`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '이미지 업로드시 원래 파일명',
	`eim_filename`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '이미지 업로드시 서버에 저장된 파일명',
	`eim_filesize`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '파일 크기',
	`eim_width`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '이미지 가로 길이',
	`eim_height`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '이미지 세로 길이',
	`eim_type`	varchar(10)	NOT NULL	DEFAULT ''	COMMENT '파일 확장자',
	`eim_datetime`	datetime	NULL	COMMENT '등록일자',
	`eim_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '등록 IP'
);

DROP TABLE IF EXISTS `cb_faq`;

CREATE TABLE `cb_faq` (
	`faq_id`	int(11)	NOT NULL	COMMENT 'PK',
	`fgr_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'FAQ 그룹 테이블 ( faq_group table ) 의 PK',
	`faq_title`	text	NULL	COMMENT '질문 내용',
	`faq_content`	mediumtext	NULL	COMMENT '답변 내용',
	`faq_mobile_content`	mediumtext	NULL	COMMENT '"모바일 디바이스로 볼 때 답변 내용',
	`faq_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '답변 내용 HTML 타입',
	`faq_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'FAQ 정렬 순서',
	`faq_datetime`	datetime	NULL	COMMENT 'FAQ 입력시간',
	`faq_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT 'FAQ 입력 IP',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK'
);

DROP TABLE IF EXISTS `cb_faq_group`;

CREATE TABLE `cb_faq_group` (
	`fgr_id`	int(11)	NOT NULL	COMMENT 'PK',
	`fgr_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '그룹 제목',
	`fgr_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '그룹 주소',
	`fgr_layout`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '레이아웃 디렉토리',
	`fgr_mobile_layout`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '모바일용 레이아웃 디렉토리',
	`fgr_sidebar`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '사이드바 출력여부',
	`fgr_mobile_sidebar`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '모바일에서 사이드바 출력여부',
	`fgr_skin`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '스킨 디렉토리',
	`fgr_mobile_skin`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '모바일 스킨 디렉토리',
	`fgr_datetime`	datetime	NULL	COMMENT '그룹 생성 일자',
	`fgr_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '그룹 생성 IP',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '그룹 생성한 회원 PK'
);

DROP TABLE IF EXISTS `cb_follow`;

CREATE TABLE `cb_follow` (
	`fol_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '팔로우를 신청한 회원 PK',
	`target_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '팔로우를 당한 회원 PK',
	`fol_datetime`	datetime	NULL	COMMENT '팔로우한 시간'
);

DROP TABLE IF EXISTS `cb_like`;

CREATE TABLE `cb_like` (
	`lik_id`	int(11)	NOT NULL	COMMENT 'PK',
	`target_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '추천/비추한 게시물 ( post table ) 이나 댓글 ( comment table ) 의 PK',
	`target_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '1 : 게시물, 2 : 댓글',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 ( board table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '추천/비추를 한 회원 PK',
	`target_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '추천/비추를 한 게시물이나 댓글을 작성한 회원 PK',
	`lik_type`	tinyint(4)	NOT NULL	COMMENT '1 : 추천, 2 : 비추천',
	`lik_datetime`	datetime	NULL	COMMENT '추천/비추 일시',
	`lik_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '추천/비추 IP'
);

DROP TABLE IF EXISTS `cb_member`;

CREATE TABLE `cb_member` (
	`mem_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_userid`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 아이디',
	`mem_email`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 이메일',
	`mem_password`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 패스워드',
	`mem_username`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 실명',
	`mem_nickname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 닉네임',
	`mem_level`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '회원레벨',
	`mem_point`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '총 포인트',
	`mem_homepage`	text	NULL	COMMENT '홈페이지 주소',
	`mem_phone`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '연락처',
	`mem_birthday`	char(10)	NOT NULL	DEFAULT ''	COMMENT '생일',
	`mem_sex`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '성별 1: 남, 2: 여',
	`mem_zipcode`	varchar(7)	NOT NULL	DEFAULT ''	COMMENT '우편번호',
	`mem_address1`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '집주소1',
	`mem_address2`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '집주소2',
	`mem_address3`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '집주소3',
	`mem_address4`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '집주소4',
	`mem_receive_email`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '이메일 수신여부',
	`mem_use_note`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '쪽지 사용 여부',
	`mem_receive_sms`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '문자 수신 여부',
	`mem_open_profile`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '정보 공개 여부',
	`mem_denied`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '차단된 회원인지 여부',
	`mem_email_cert`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '이메일 인증을 받았는지 여부',
	`mem_register_datetime`	datetime	NULL	COMMENT '회원 등록일',
	`mem_register_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '회원 등록 IP',
	`mem_lastlogin_datetime`	datetime	NULL	COMMENT '최종 로그인 시간',
	`mem_lastlogin_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '최종 로그인 IP',
	`mem_is_admin`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '최고관리자인지 여부',
	`mem_profile_content`	text	NULL	COMMENT '자기소개, 프로필 페이지에 나타남',
	`mem_adminmemo`	text	NULL	COMMENT '관리자용 메모',
	`mem_following`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '친구 추가한 수',
	`mem_followed`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '나를 친구로 등록한 회원수',
	`mem_icon`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 아이콘 경로',
	`mem_photo`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 이미지 경로'
);

DROP TABLE IF EXISTS `cb_member_auth_email`;

CREATE TABLE `cb_member_auth_email` (
	`mae_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '이메일 인증이 필요한 회원 PK',
	`mae_key`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '이메일 인증키',
	`mae_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '인증종류 1: 회원가입, 2 : 이메일변경, 3 : 패스워드 분실',
	`mae_generate_datetime`	datetime	NULL	COMMENT '인증키 생성 일자',
	`mae_use_datetime`	datetime	NULL	COMMENT '인증키 사용 일자',
	`mae_expired`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '인증키 파기 여부'
);

DROP TABLE IF EXISTS `cb_member_certify`;

CREATE TABLE `cb_member_certify` (
	`mce_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	COMMENT '회원 PK',
	`mce_type`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '인증종류 (adult, selfcert)',
	`mce_datetime`	datetime	NULL	COMMENT '인증시간',
	`mce_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '인증 아이피',
	`mce_content`	text	NULL	COMMENT '인증 내용'
);

DROP TABLE IF EXISTS `cb_member_dormant`;

CREATE TABLE `cb_member_dormant` (
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT 'PK',
	`mem_userid`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 아이디',
	`mem_email`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 이메일',
	`mem_password`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 패스워드',
	`mem_username`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 실명',
	`mem_nickname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 닉네임',
	`mem_level`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '회원레벨',
	`mem_point`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '총 포인트',
	`mem_homepage`	text	NULL	COMMENT '홈페이지 주소',
	`mem_phone`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '연락처',
	`mem_birthday`	char(10)	NOT NULL	DEFAULT ''	COMMENT '생일',
	`mem_sex`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '성별 1: 남, 2: 여',
	`mem_zipcode`	varchar(7)	NOT NULL	DEFAULT ''	COMMENT '우편번호',
	`mem_address1`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '집주소1',
	`mem_address2`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '집주소2',
	`mem_address3`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '집주소3',
	`mem_address4`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '집주소4',
	`mem_receive_email`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '이메일 수신여부',
	`mem_use_note`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '쪽지 사용 여부',
	`mem_receive_sms`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '문자 수신 여부',
	`mem_open_profile`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '정보 공개 여부',
	`mem_denied`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '차단된 회원인지 여부',
	`mem_email_cert`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '이메일 인증을 받았는지 여부',
	`mem_register_datetime`	datetime	NULL	COMMENT '회원 등록일',
	`mem_register_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '회원 등록 IP',
	`mem_lastlogin_datetime`	datetime	NULL	COMMENT '최종 로그인 시간',
	`mem_lastlogin_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '최종 로그인 IP',
	`mem_is_admin`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '최고관리자인지 여부',
	`mem_profile_content`	text	NULL	COMMENT '자기소개, 프로필 페이지에 나타남',
	`mem_adminmemo`	text	NULL	COMMENT '관리자용 메모',
	`mem_following`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '친구 추가한 수',
	`mem_followed`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '나를 친구로 등록한 회원수',
	`mem_icon`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 아이콘 경로',
	`mem_photo`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 이미지 경로'
);

DROP TABLE IF EXISTS `cb_member_dormant_notify`;

CREATE TABLE `cb_member_dormant_notify` (
	`mdn_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 PK',
	`mem_userid`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 유저아이디',
	`mem_email`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 이메일',
	`mem_username`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 실명',
	`mem_nickname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 닉네임',
	`mem_register_datetime`	datetime	NULL	COMMENT '회원 가입일',
	`mem_lastlogin_datetime`	datetime	NULL	COMMENT '최종 로그인 시간',
	`mdn_dormant_datetime`	datetime	NULL	COMMENT '휴면전환 예정일',
	`mdn_dormant_notify_datetime`	datetime	NULL	COMMENT '휴면전환예정 알림메일 발송일'
);

DROP TABLE IF EXISTS `cb_member_extra_vars`;

CREATE TABLE `cb_member_extra_vars` (
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`mev_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '사용자 정의 키',
	`mev_value`	text	NULL	COMMENT '사용자 정의 값'
);

DROP TABLE IF EXISTS `cb_member_group`;

CREATE TABLE `cb_member_group` (
	`mgr_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mgr_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 그룹명',
	`mgr_is_default`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '회원가입시 이 그룹을 자동으로 선택되게 할지 결정',
	`mgr_datetime`	datetime	NULL	COMMENT '그룹 생성 일시',
	`mgr_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '그룹 정렬 순서',
	`mgr_description`	text	NULL	COMMENT '그룹 간단 설명'
);

DROP TABLE IF EXISTS `cb_member_group_member`;

CREATE TABLE `cb_member_group_member` (
	`mgm_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mgr_id`	int(11)	NOT NULL	COMMENT '회원 그룹 테이블 ( member_group table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	COMMENT '회원 테이블 ( member table ) 의 PK',
	`mgm_datetime`	datetime	NULL	COMMENT '등록된 일시'
);

DROP TABLE IF EXISTS `cb_member_level_history`;

CREATE TABLE `cb_member_level_history` (
	`mlh_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`mlh_from`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '레벨 변경 전 회원의 레벨',
	`mlh_to`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '레벨 변경 후 회원의 레벨',
	`mlh_datetime`	datetime	NULL	COMMENT '레벨 변경 일시',
	`mlh_reason`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '레벨 변경 이유',
	`mlh_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '레벨 변경 IP'
);

DROP TABLE IF EXISTS `cb_member_login_log`;

CREATE TABLE `cb_member_login_log` (
	`mll_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id2`	int(11)	NOT NULL	COMMENT '로그인 한 회원 PK',
	`mll_success`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '로그인 성공 여부',
	`mll_userid`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '로그인 시도할 때에 입력한 아이디/이메일',
	`mll_datetime`	datetime	NULL	COMMENT '로그인 일시',
	`mll_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '로그인 한 IP',
	`mll_reason`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '로그인 성공/실패시 이유',
	`mll_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '로그인한 브라우저의 user agent',
	`mll_url`	text	NULL	COMMENT '로그인한 페이지 주소',
	`mll_referer`	text	NULL	COMMENT '이전 페이지 주소'
);

DROP TABLE IF EXISTS `cb_member_meta`;

CREATE TABLE `cb_member_meta` (
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`mmt_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '각 회원의 환경정보 키값',
	`mmt_value`	text	NULL	COMMENT '각 회원의 환경정보 내용'
);

DROP TABLE IF EXISTS `cb_member_nickname`;

CREATE TABLE `cb_member_nickname` (
	`mni_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`mni_nickname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '닉네임',
	`mni_start_datetime`	datetime	NULL	COMMENT '해당 닉네임 사용 시작 일시',
	`mni_end_datetime`	datetime	NULL	COMMENT '해당 닉네임 사용 종료 일시'
);

DROP TABLE IF EXISTS `cb_member_register`;

CREATE TABLE `cb_member_register` (
	`mrg_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`mrg_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '회원 가입 IP',
	`mrg_datetime`	datetime	NULL	COMMENT '회원 가입 일시',
	`mrg_recommend_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 가입시 추천인이 존재하는 경우 추천인 PK',
	`mrg_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원 가입시 user agent',
	`mrg_referer`	text	NULL	COMMENT '회원 가입시 홈페이지에 방문하게 된 referer'
);

DROP TABLE IF EXISTS `cb_member_selfcert_history`;

CREATE TABLE `cb_member_selfcert_history` (
	`msh_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`msh_company`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '본인인증 회사명',
	`msh_certtype`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '본인인증 종류 (phone / ipin)',
	`msh_cert_key`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '본인인증 고유키',
	`msh_datetime`	datetime	NULL	COMMENT '본인인증 일시',
	`msh_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '본인인증 IP'
);

DROP TABLE IF EXISTS `cb_member_userid`;

CREATE TABLE `cb_member_userid` (
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 PK',
	`mem_userid`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '회원 유저아이디',
	`mem_status`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '0 : 회원, 1 : 탈퇴회원, 2 : 휴면회원'
);

DROP TABLE IF EXISTS `cb_menu`;

CREATE TABLE `cb_menu` (
	`men_id`	int(11)	NOT NULL	COMMENT 'PK',
	`men_parent`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '상위 메뉴 PK',
	`men_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '메뉴명',
	`men_link`	text	NULL	COMMENT '메뉴 클릭시 이동할 링크',
	`men_target`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '메뉴 클릭시 새창으로 열릴지 여부',
	`men_desktop`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '데스크탑 버전에서 보일지 여부',
	`men_mobile`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '모바일 버전에서 보일지 여부',
	`men_custom`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '메뉴 정렬 순서a 태그안에 들어가게 될 커스텀 HTML 태그',
	`men_order`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '메뉴 정렬 순서'
);

DROP TABLE IF EXISTS `cb_migrations`;

CREATE TABLE `cb_migrations` (
	`version`	bigint(20)	NOT NULL
);

DROP TABLE IF EXISTS `cb_note`;

CREATE TABLE `cb_note` (
	`nte_id`	int(11)	NOT NULL	COMMENT 'PK',
	`send_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '쪽지 발신 회원 PK',
	`recv_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '쪽지 수신 회원 PK',
	`nte_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '"쪽지 발신시 디비에는 2 row 가 동시에 입력됩니다.  하나는 발신회원을 위한, 다른 하나는 수신회원을 위한 것입니다.  1 : 보낸쪽지, 2 : 받은쪽지"',
	`related_note_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '"상대방 쪽지 아이디,  2 row 가 동시에 입력되므로 서로 연결 관계를 나타냅니다."',
	`nte_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '쪽지 제목',
	`nte_content`	text	NULL	COMMENT '쪽지 내용',
	`nte_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '쪽지 내용 HTML 타입',
	`nte_datetime`	datetime	NULL	COMMENT '쪽지 발신 일자',
	`nte_read_datetime`	datetime	NULL	COMMENT '쪽지 읽은 일자',
	`nte_originname`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '[p;ro ]쪽지첨부파일 원래파일명',
	`nte_filename`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '[p;ro ]쪽지첨부파일 서버저장파일명'
);

DROP TABLE IF EXISTS `cb_notification`;

CREATE TABLE `cb_notification` (
	`not_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '알림을 받는 회원 PK',
	`target_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '해당 알림을 받게 하는 액션을 취한 회원 PK',
	`not_type`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '알림 종류 ( comment, comment_comment, note, reply )',
	`not_content_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '알림이 있게 한 글의 PK',
	`not_message`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '알림 내용',
	`not_url`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '알림 클릭시 이동할 주소',
	`not_datetime`	datetime	NULL	COMMENT '알림 발생 일시',
	`not_read_datetime`	datetime	NULL	COMMENT '알림 확인 일시'
);

DROP TABLE IF EXISTS `cb_payment_order_data`;

CREATE TABLE `cb_payment_order_data` (
	`pod_id`	bigint(11)	NOT NULL	COMMENT 'PK',
	`cart_id`	int(11)	NOT NULL	COMMENT '장바구니 아이디',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`pod_pg`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT 'PG 사',
	`pod_type`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '결제 방법',
	`pod_data`	text	NULL	COMMENT '결제 내용',
	`pod_datetime`	datetime	NULL	COMMENT '결제 일시',
	`pod_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '결제 IP'
);

DROP TABLE IF EXISTS `cb_point`;

CREATE TABLE `cb_point` (
	`poi_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	COMMENT '회원 테이블 ( member table ) 의 PK',
	`poi_datetime`	datetime	NULL	COMMENT '포인트 발생 일시',
	`poi_content`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '포인트 내용',
	`poi_point`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '포인트 점수',
	`poi_type`	varchar(20)	NOT NULL	DEFAULT ''	COMMENT '포인트 종류',
	`poi_related_id`	varchar(20)	NOT NULL	DEFAULT ''	COMMENT '포인트 관련 id',
	`poi_action`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '포인트 액션'
);

DROP TABLE IF EXISTS `cb_popup`;

CREATE TABLE `cb_popup` (
	`pop_id`	int(11)	NOT NULL	COMMENT 'PK',
	`pop_start_date`	date	NULL	COMMENT '팝업 시작 일자',
	`pop_end_date`	date	NULL	COMMENT '팝업 종료 일자',
	`pop_is_center`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '팝업 가운데 정렬 여부',
	`pop_left`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '왼쪽 정렬시 왼쪽 여백',
	`pop_top`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '왼쪽 정렬시 상단 여백',
	`pop_width`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '팝업 가로 크기',
	`pop_height`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '팝업 세로 크기',
	`pop_device`	varchar(10)	NOT NULL	DEFAULT ''	COMMENT '팝업보이는디바이스(all, pc, mobile)',
	`pop_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '팝업 제목 (관리용)',
	`pop_content`	text	NULL	COMMENT '팝업 내용',
	`pop_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '팝업 내용 HTML 타입',
	`pop_disable_hours`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '팝업 닫기 쿠키 적용 시간',
	`pop_activated`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '팝업의 활성화 여부',
	`pop_page`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '홈페이지에만 보일 것인지, 모든 페이지에 보일 것인지',
	`pop_datetime`	datetime	NULL	COMMENT '팝업 등록 일시',
	`pop_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '팝업 등록 IP',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '팝업 등록한 회원의 PK'
);

DROP TABLE IF EXISTS `cb_post`;

CREATE TABLE `cb_post` (
	`post_id`	int(11)	NOT NULL	COMMENT 'PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '작성자 회원의 PK',
	`post_num`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시글 정렬을 위한 키',
	`post_reply`	varchar(10)	NOT NULL	DEFAULT ''	COMMENT '답변 여부',
	`post_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '게시글 제목',
	`post_content`	mediumtext	NULL	COMMENT '게시글 본문 내용',
	`post_category`	VARCHAR(255)	NOT NULL	DEFAULT '0'	COMMENT 'PK',
	`post_userid`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '작성자의 회원아이디',
	`post_username`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '작성자의 실명',
	`post_nickname`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '작성자의 닉네임',
	`post_email`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '작성자의 이메일',
	`post_homepage`	text	NULL	COMMENT '작성자의 홈페이지 주소',
	`post_datetime`	datetime	NULL	COMMENT '게시물 작성 일자',
	`post_password`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '비회원이 작성한 경우 패스워드',
	`post_updated_datetime`	datetime	NULL	COMMENT '최종 수정 시간',
	`post_update_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '최종 수정한 회원 PK',
	`post_comment_count`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '달린 댓글 수',
	`post_comment_updated_datetime`	datetime	NULL	COMMENT '최근 댓글 업데이트 일자',
	`post_link_count`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '첨부된 링크 개수',
	`post_secret`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '비밀글 여부',
	`post_html`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '본문 HTML 타입',
	`post_hide_comment`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '댓글을 안보이게 할지 여부',
	`post_notice`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '공지사항 여부',
	`post_receive_email`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '답변 메일 받기 여부',
	`post_hit`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '조회수',
	`post_like`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '추천 회수',
	`post_dislike`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '비추 회수',
	`post_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '게시물 등록 IP',
	`post_blame`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '신고된 회수',
	`post_device`	varchar(10)	NOT NULL	DEFAULT ''	COMMENT '게시물 등록한 디바이스',
	`post_file`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '첨부된 파일 개수 (이미지 제외)',
	`post_image`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '첨부된 이미지 개수',
	`post_del`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '게시물 삭제 여부'
);

DROP TABLE IF EXISTS `cb_post_extra_vars`;

CREATE TABLE `cb_post_extra_vars` (
	`post_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`pev_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '추가필드 키',
	`pev_value`	text	NULL	COMMENT '추가필드 내용'
);

DROP TABLE IF EXISTS `cb_post_file`;

CREATE TABLE `cb_post_file` (
	`pfi_id`	int(11)	NOT NULL	COMMENT 'PK',
	`post_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post_table ) 의 PK',
	`brd_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '작성자 회원의 PK',
	`pfi_originname`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '파일 업로드시 원래 파일명',
	`pfi_filename`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '파일 업로드시 서버에 저장된 파일명',
	`pfi_download`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '다운로드 회수',
	`pfi_filesize`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '파일 크기',
	`pfi_width`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '이미지일 경우 이미지 가로값',
	`pfi_height`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '이미지일 경우 이미지 세로값',
	`pfi_type`	varchar(10)	NOT NULL	DEFAULT ''	COMMENT '파일 확장자',
	`pfi_is_image`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '이미지인지 여부',
	`pfi_datetime`	datetime	NULL	COMMENT '등록일자',
	`pfi_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '등록 IP'
);

DROP TABLE IF EXISTS `cb_post_file_download_log`;

CREATE TABLE `cb_post_file_download_log` (
	`pfd_id`	int(11)	NOT NULL	COMMENT 'PK',
	`pfi_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '첨부파일 테이블 ( post_file table) 의 PK',
	`post_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post_table ) 의 PK',
	`brd_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '다운로드한 회원의 PK',
	`pfd_datetime`	datetime	NULL	COMMENT '다운로드 일시',
	`pfd_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '다운로드 IP',
	`pfd_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '다운로드한 유저의 user agent'
);

DROP TABLE IF EXISTS `cb_post_history`;

CREATE TABLE `cb_post_history` (
	`phi_id`	int(11)	NOT NULL	COMMENT 'PK',
	`post_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 수정한 회원 테이블 ( member table ) 의 PK',
	`phi_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '수정한 제목',
	`phi_content`	mediumtext	NULL	COMMENT '수정한 내용',
	`phi_content_html_type`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '수정한 내용의 HTML 타입',
	`phi_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '수정한 IP',
	`phi_datetime`	datetime	NULL	COMMENT '수정 일시'
);

DROP TABLE IF EXISTS `cb_post_link`;

CREATE TABLE `cb_post_link` (
	`pln_id`	int(11)	NOT NULL	COMMENT 'PK',
	`post_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`pln_url`	text	NULL	COMMENT '링크 주소',
	`pln_hit`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '링크 클릭 회수'
);

DROP TABLE IF EXISTS `cb_post_link_click_log`;

CREATE TABLE `cb_post_link_click_log` (
	`plc_id`	int(11)	NOT NULL	COMMENT 'PK',
	`pln_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 링크 테이블 ( post_link table ) 의 PK',
	`post_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`brd_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '링크를 클릭한 회원의 PK',
	`plc_datetime`	datetime	NULL	COMMENT '링크 클릭 일시',
	`plc_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '링크 클릭 IP',
	`plc_useragent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '링크 클릭한 유저의 user agent'
);

DROP TABLE IF EXISTS `cb_post_meta`;

CREATE TABLE `cb_post_meta` (
	`post_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`brd_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`pmt_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '환경설정 키',
	`pmt_value`	text	NULL	COMMENT '환경설정 내용'
);

DROP TABLE IF EXISTS `cb_post_naver_syndi_log`;

CREATE TABLE `cb_post_naver_syndi_log` (
	`pns_id`	int(11)	NOT NULL	COMMENT 'PK',
	`post_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`mem_id2`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '최종수정 회원 PK',
	`pns_status`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '전송상태',
	`pns_return_code`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '전송후 결과 리턴값',
	`pns_return_message`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '전송후 결과 리턴 메세지',
	`pns_receipt_number`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT 'Receipt Number',
	`pns_datetime`	datetime	NULL	COMMENT '전송일시'
);

DROP TABLE IF EXISTS `cb_post_poll`;

CREATE TABLE `cb_post_poll` (
	`ppo_id`	int(11)	NOT NULL	COMMENT 'PK',
	`post_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '작성자 회원의 PK',
	`ppo_start_datetime`	datetime	NULL	COMMENT '설문조사 시작 일시',
	`ppo_end_datetime`	datetime	NULL	COMMENT '설문조사 마침 일시',
	`ppo_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '설문조사 제목',
	`ppo_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '총 설문에 참여한 수',
	`ppo_choose_count`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '설문조사 참여시 중복 선택 가능한 답변수',
	`ppo_after_comment`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '댓글 작성 후 참여 가능',
	`ppo_point`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '설문 참여시 포인트',
	`ppo_datetime`	datetime	NULL	COMMENT '설문 등록일',
	`ppo_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '설문 등록 IP'
);

DROP TABLE IF EXISTS `cb_post_poll_item`;

CREATE TABLE `cb_post_poll_item` (
	`ppi_id`	int(11)	NOT NULL	COMMENT 'PK',
	`ppo_id`	int(11)	NOT NULL	COMMENT '설문조사 테이블 ( post_poll table ) 의 PK',
	`ppi_item`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '답변 내용',
	`ppi_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '이 답변을 채택한 수'
);

DROP TABLE IF EXISTS `cb_post_poll_item_poll`;

CREATE TABLE `cb_post_poll_item_poll` (
	`ppp_id`	int(11)	NOT NULL	COMMENT 'PK',
	`ppo_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '설문조사 테이블 ( post_poll table ) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '설문조사 답변 테이블 ( post_poll_item table ) 의 PK',
	`ppi_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '설문에 참여한 회원의 PK',
	`ppp_datetime`	datetime	NULL	COMMENT '설문 참여 일시',
	`ppp_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '설문 참여 IP'
);

DROP TABLE IF EXISTS `cb_post_tag`;

CREATE TABLE `cb_post_tag` (
	`pta_id`	int(11)	NOT NULL	COMMENT 'PK',
	`post_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시물 테이블 ( post table ) 의 PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`pta_tag`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '태그 내용'
);

DROP TABLE IF EXISTS `cb_scrap`;

CREATE TABLE `cb_scrap` (
	`scr_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '스크랩한 회원 PK',
	`post_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '스크랩한 게시물 ( post table ) PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`target_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '스크랩한 게시물 작성회원 PK',
	`scr_datetime`	datetime	NULL	COMMENT '스크랩 일시',
	`scr_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '커스텀 제목'
);

DROP TABLE IF EXISTS `cb_search_keyword`;

CREATE TABLE `cb_search_keyword` (
	`sek_id`	int(11)	NOT NULL	COMMENT 'PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '검색한 사용자가 회원인 경우 회원 PK',
	`sek_keyword`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '검색 키워드',
	`sek_datetime`	datetime	NULL	COMMENT '검색 일시',
	`sek_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '검색 IP'
);

DROP TABLE IF EXISTS `cb_session`;

CREATE TABLE `cb_session` (
	`id`	varchar(120)	NOT NULL	COMMENT 'PK',
	`ip_address`	varchar(45)	NOT NULL	DEFAULT ''	COMMENT '세션 생성된 IP',
	`timestamp`	int(10)	NOT NULL	DEFAULT '0'	COMMENT '세션 생성 시간',
	`data`	blob	NOT NULL	COMMENT '세션 내용'
);

DROP TABLE IF EXISTS `cb_sms_favorite`;

CREATE TABLE `cb_sms_favorite` (
	`sfa_id`	int(11)	NOT NULL	COMMENT 'PK',
	`sfa_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '자주하는 문자 제목',
	`sfa_content`	text	NULL	COMMENT '자주하는 문자 내용',
	`sfa_datetime`	datetime	NULL	COMMENT '등록 일시'
);

DROP TABLE IF EXISTS `cb_sms_member`;

CREATE TABLE `cb_sms_member` (
	`sme_id`	int(11)	NOT NULL	COMMENT 'PK',
	`smg_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '문자 그룹 관리 테이블 ( sms_member_group ) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`sme_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '회원명',
	`sme_phone`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '폰번호',
	`sme_receive`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '수신여부',
	`sme_datetime`	datetime	NULL	COMMENT '등록일시',
	`sme_memo`	text	NULL	COMMENT '관리자 메모'
);

DROP TABLE IF EXISTS `cb_sms_member_group`;

CREATE TABLE `cb_sms_member_group` (
	`smg_id`	int(11)	NOT NULL	COMMENT 'PK',
	`smg_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '문자 그룹명',
	`smg_order`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '그룹 정렬 순서',
	`smg_datetime`	datetime	NULL	COMMENT '그룹 등록 일시'
);

DROP TABLE IF EXISTS `cb_sms_send_content`;

CREATE TABLE `cb_sms_send_content` (
	`ssc_id`	int(11)	NOT NULL	COMMENT 'PK',
	`ssc_content`	text	NULL	COMMENT '발송한 문자 내용',
	`send_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '발송한 회원 PK',
	`ssc_send_phone`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '발신 번호',
	`ssc_booking`	datetime	NULL	COMMENT '예약 시간',
	`ssc_total`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '총 발송 건수',
	`ssc_success`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '발송 성공 건수',
	`ssc_fail`	mediumint(6)	NOT NULL	DEFAULT '0'	COMMENT '발송 실패 건수',
	`ssc_datetime`	datetime	NULL	COMMENT '발송 일시',
	`ssc_memo`	text	NULL	COMMENT '세부내용'
);

DROP TABLE IF EXISTS `cb_sms_send_history`;

CREATE TABLE `cb_sms_send_history` (
	`ssh_id`	int(11)	NOT NULL	COMMENT 'PK',
	`ssc_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '문자 발송 내역 테이블 ( sms_send_content ) 의 PK',
	`send_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '발신한 회원의 PK',
	`recv_mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '수신한 회원의 PK',
	`ssh_name`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '수신인 이름',
	`ssh_phone`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '수신인 폰 번호',
	`ssh_success`	tinyint(4)	NOT NULL	DEFAULT '0'	COMMENT '수신 성공 여부',
	`ssh_datetime`	datetime	NULL	COMMENT '발송 일시',
	`ssh_memo`	text	NULL	COMMENT '발송 메모',
	`ssh_log`	text	NULL	COMMENT '발송 로그'
);

DROP TABLE IF EXISTS `cb_social`;

CREATE TABLE `cb_social` (
	`soc_id`	int(11)	NOT NULL	COMMENT 'PK',
	`soc_type`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '소셜 종류 (페이스북인지 트위터인지 등)',
	`soc_account_id`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '해당 소셜의 Unique 값',
	`soc_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '소셜계정에서 받아온 데이터 종류',
	`soc_value`	text	NULL	COMMENT '소셜계정에서 받아온 데이터 내용'
);

DROP TABLE IF EXISTS `cb_social_meta`;

CREATE TABLE `cb_social_meta` (
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`smt_key`	varchar(100)	NOT NULL	DEFAULT ''	COMMENT '각 회원의 소셜 종류 키값',
	`smt_value`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '각 회원의 소셜 계정 Unique 값'
);

DROP TABLE IF EXISTS `cb_stat_count`;

CREATE TABLE `cb_stat_count` (
	`sco_id`	int(11)	NOT NULL	COMMENT 'PK',
	`sco_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT '접속 IP',
	`sco_date`	date	NOT NULL	COMMENT '접속 일자',
	`sco_time`	time	NOT NULL	COMMENT '접속 시간',
	`sco_referer`	text	NULL	COMMENT '이전 주소',
	`sco_current`	text	NULL	COMMENT '현재 주소',
	`sco_agent`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '접속한 user agent'
);

DROP TABLE IF EXISTS `cb_stat_count_board`;

CREATE TABLE `cb_stat_count_board` (
	`scb_id`	int(11)	NOT NULL	COMMENT 'PK',
	`scb_date`	date	NOT NULL	COMMENT '접속일자',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 ( board table ) 의 PK',
	`scb_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '접속회수'
);

DROP TABLE IF EXISTS `cb_stat_count_date`;

CREATE TABLE `cb_stat_count_date` (
	`scd_date`	date	NOT NULL	COMMENT '접속일자',
	`scd_count`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '접속한 사용자수'
);

DROP TABLE IF EXISTS `cb_tempsave`;

CREATE TABLE `cb_tempsave` (
	`tmp_id`	int(11)	NOT NULL	COMMENT 'PK',
	`tmp_ip`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 ( board table ) 의 PK',
	`brd_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '게시판 테이블 (board table) 의 PK',
	`mem_id`	int(11)	NOT NULL	DEFAULT '0'	COMMENT '회원 테이블 ( member table ) 의 PK',
	`tmp_title`	varchar(255)	NOT NULL	DEFAULT ''	COMMENT '임시 제목',
	`tmp_content`	mediumtext	NULL	COMMENT '임시 내용',
	`tmp_datetime`	datetime	NULL	COMMENT '작성된 일시'
);

DROP TABLE IF EXISTS `cb_unique_id`;

CREATE TABLE `cb_unique_id` (
	`unq_id`	bigint(20)	NOT NULL	COMMENT 'Unique ID',
	`unq_ip`	varchar(50)	NOT NULL	DEFAULT ''	COMMENT 'IP'
);

DROP TABLE IF EXISTS `cb_payment_inicis_log`;

CREATE TABLE `cb_payment_inicis_log` (
	`pil_id`	bigint(11)	NOT NULL	COMMENT 'PK',
	`pil_type`	varchar(255)	NOT NULL	DEFAULT '',
	`P_TID`	varchar(255)	NOT NULL	DEFAULT '',
	`P_MID`	varchar(255)	NOT NULL	DEFAULT '',
	`P_AUTH_DT`	varchar(255)	NOT NULL	DEFAULT '',
	`P_STATUS`	varchar(255)	NOT NULL	DEFAULT '',
	`P_TYPE`	varchar(255)	NOT NULL	DEFAULT '',
	`P_OID`	varchar(255)	NOT NULL	DEFAULT '',
	`P_FN_NM`	varchar(255)	NOT NULL	DEFAULT '',
	`P_AMT`	int(11)	NOT NULL	DEFAULT '0',
	`P_AUTH_NO`	varchar(255)	NOT NULL	DEFAULT '',
	`P_RMESG1`	varchar(255)	NOT NULL	DEFAULT ''
);

ALTER TABLE `cb_attendance` ADD CONSTRAINT `PK_CB_ATTENDANCE` PRIMARY KEY (
	`att_id`,
	`mem_id`
);

ALTER TABLE `cb_autologin` ADD CONSTRAINT `PK_CB_AUTOLOGIN` PRIMARY KEY (
	`aul_id`,
	`mem_id`
);

ALTER TABLE `cb_banner` ADD CONSTRAINT `PK_CB_BANNER` PRIMARY KEY (
	`ban_id`,
	`mem_id`,
	`bng_name`
);

ALTER TABLE `cb_banner_click_log` ADD CONSTRAINT `PK_CB_BANNER_CLICK_LOG` PRIMARY KEY (
	`bcl_id`,
	`ban_id`,
	`mem_id`
);

ALTER TABLE `cb_banner_group` ADD CONSTRAINT `PK_CB_BANNER_GROUP` PRIMARY KEY (
	`bng_id`,
	`bng_name`
);

ALTER TABLE `cb_blame` ADD CONSTRAINT `PK_CB_BLAME` PRIMARY KEY (
	`bla_id`,
	`mem_id`,
	`brd_id2`,
	`bgr_id2`
);

ALTER TABLE `cb_board` ADD CONSTRAINT `PK_CB_BOARD` PRIMARY KEY (
	`brd_id`,
	`bgr_id`
);

ALTER TABLE `cb_board_admin` ADD CONSTRAINT `PK_CB_BOARD_ADMIN` PRIMARY KEY (
	`bam_id`,
	`brd_id`
);

ALTER TABLE `cb_board_category` ADD CONSTRAINT `PK_CB_BOARD_CATEGORY` PRIMARY KEY (
	`bca_id`,
	`brd_id2`
);

ALTER TABLE `cb_board_group` ADD CONSTRAINT `PK_CB_BOARD_GROUP` PRIMARY KEY (
	`bgr_id`
);

ALTER TABLE `cb_board_group_admin` ADD CONSTRAINT `PK_CB_BOARD_GROUP_ADMIN` PRIMARY KEY (
	`bga_id`,
	`bgr_id2`
);

ALTER TABLE `cb_board_group_meta` ADD CONSTRAINT `PK_CB_BOARD_GROUP_META` PRIMARY KEY (
	`bgr_id`
);

ALTER TABLE `cb_board_meta` ADD CONSTRAINT `PK_CB_BOARD_META` PRIMARY KEY (
	`brd_id`
);

ALTER TABLE `cb_cmall_cart` ADD CONSTRAINT `PK_CB_CMALL_CART` PRIMARY KEY (
	`cct_id`,
	`mem_id`,
	`cit_id`
);

ALTER TABLE `cb_cmall_category` ADD CONSTRAINT `PK_CB_CMALL_CATEGORY` PRIMARY KEY (
	`cca_id`
);

ALTER TABLE `cb_cmall_category_rel` ADD CONSTRAINT `PK_CB_CMALL_CATEGORY_REL` PRIMARY KEY (
	`ccr_id`,
	`cca_id`,
	`cit_id2`
);

ALTER TABLE `cb_cmall_demo_click_log` ADD CONSTRAINT `PK_CB_CMALL_DEMO_CLICK_LOG` PRIMARY KEY (
	`cdc_id`,
	`cit_id`
);

ALTER TABLE `cb_cmall_download_log` ADD CONSTRAINT `PK_CB_CMALL_DOWNLOAD_LOG` PRIMARY KEY (
	`cdo_id`,
	`cit_id`
);

ALTER TABLE `cb_cmall_item` ADD CONSTRAINT `PK_CB_CMALL_ITEM` PRIMARY KEY (
	`cit_id`
);

ALTER TABLE `cb_cmall_item_detail` ADD CONSTRAINT `PK_CB_CMALL_ITEM_DETAIL` PRIMARY KEY (
	`cde_id`,
	`cit_id`
);

ALTER TABLE `cb_cmall_item_history` ADD CONSTRAINT `PK_CB_CMALL_ITEM_HISTORY` PRIMARY KEY (
	`chi_id`,
	`cit_id`
);

ALTER TABLE `cb_cmall_item_meta` ADD CONSTRAINT `PK_CB_CMALL_ITEM_META` PRIMARY KEY (
	`cit_id`
);

ALTER TABLE `cb_cmall_order` ADD CONSTRAINT `PK_CB_CMALL_ORDER` PRIMARY KEY (
	`cor_id`,
	`mem_id2`
);

ALTER TABLE `cb_cmall_order_detail` ADD CONSTRAINT `PK_CB_CMALL_ORDER_DETAIL` PRIMARY KEY (
	`cod_id`,
	`cor_id`,
	`mem_id`
);

ALTER TABLE `cb_cmall_qna` ADD CONSTRAINT `PK_CB_CMALL_QNA` PRIMARY KEY (
	`cqa_id`,
	`cit_id2`
);

ALTER TABLE `cb_cmall_review` ADD CONSTRAINT `PK_CB_CMALL_REVIEW` PRIMARY KEY (
	`cre_id`,
	`cit_id2`
);

ALTER TABLE `cb_cmall_wishlist` ADD CONSTRAINT `PK_CB_CMALL_WISHLIST` PRIMARY KEY (
	`cwi_id`,
	`cit_id2`
);

ALTER TABLE `cb_comment` ADD CONSTRAINT `PK_CB_COMMENT` PRIMARY KEY (
	`cmt_id`,
	`post_id`,
	`brd_id`,
	`brd_id2`,
	`mem_id2`
);

ALTER TABLE `cb_comment_meta` ADD CONSTRAINT `PK_CB_COMMENT_META` PRIMARY KEY (
	`cmt_id2`,
	`brd_id2`,
	`mem_id2`
);

ALTER TABLE `cb_currentvisitor` ADD CONSTRAINT `PK_CB_CURRENTVISITOR` PRIMARY KEY (
	`cur_ip`
);

ALTER TABLE `cb_deposit` ADD CONSTRAINT `PK_CB_DEPOSIT` PRIMARY KEY (
	`dep_id`,
	`mem_id`
);

ALTER TABLE `cb_document` ADD CONSTRAINT `PK_CB_DOCUMENT` PRIMARY KEY (
	`doc_id`
);

ALTER TABLE `cb_editor_image` ADD CONSTRAINT `PK_CB_EDITOR_IMAGE` PRIMARY KEY (
	`eim_id`,
	`mem_id`
);

ALTER TABLE `cb_faq` ADD CONSTRAINT `PK_CB_FAQ` PRIMARY KEY (
	`faq_id`,
	`fgr_id2`
);

ALTER TABLE `cb_faq_group` ADD CONSTRAINT `PK_CB_FAQ_GROUP` PRIMARY KEY (
	`fgr_id`
);

ALTER TABLE `cb_follow` ADD CONSTRAINT `PK_CB_FOLLOW` PRIMARY KEY (
	`fol_id`,
	`mem_id`
);

ALTER TABLE `cb_like` ADD CONSTRAINT `PK_CB_LIKE` PRIMARY KEY (
	`lik_id`
);

ALTER TABLE `cb_member` ADD CONSTRAINT `PK_CB_MEMBER` PRIMARY KEY (
	`mem_id`
);

ALTER TABLE `cb_member_auth_email` ADD CONSTRAINT `PK_CB_MEMBER_AUTH_EMAIL` PRIMARY KEY (
	`mae_id`,
	`mem_id`
);

ALTER TABLE `cb_member_certify` ADD CONSTRAINT `PK_CB_MEMBER_CERTIFY` PRIMARY KEY (
	`mce_id`,
	`mem_id`
);

ALTER TABLE `cb_member_dormant` ADD CONSTRAINT `PK_CB_MEMBER_DORMANT` PRIMARY KEY (
	`mem_id`
);

ALTER TABLE `cb_member_extra_vars` ADD CONSTRAINT `PK_CB_MEMBER_EXTRA_VARS` PRIMARY KEY (
	`mem_id`
);

ALTER TABLE `cb_member_group` ADD CONSTRAINT `PK_CB_MEMBER_GROUP` PRIMARY KEY (
	`mgr_id`
);

ALTER TABLE `cb_member_group_member` ADD CONSTRAINT `PK_CB_MEMBER_GROUP_MEMBER` PRIMARY KEY (
	`mgm_id`,
	`mgr_id`
);

ALTER TABLE `cb_member_level_history` ADD CONSTRAINT `PK_CB_MEMBER_LEVEL_HISTORY` PRIMARY KEY (
	`mlh_id`,
	`mem_id`
);

ALTER TABLE `cb_member_login_log` ADD CONSTRAINT `PK_CB_MEMBER_LOGIN_LOG` PRIMARY KEY (
	`mll_id`,
	`mem_id2`
);

ALTER TABLE `cb_member_meta` ADD CONSTRAINT `PK_CB_MEMBER_META` PRIMARY KEY (
	`mem_id`
);

ALTER TABLE `cb_member_nickname` ADD CONSTRAINT `PK_CB_MEMBER_NICKNAME` PRIMARY KEY (
	`mni_id`,
	`mem_id`
);

ALTER TABLE `cb_member_register` ADD CONSTRAINT `PK_CB_MEMBER_REGISTER` PRIMARY KEY (
	`mrg_id`,
	`mem_id`
);

ALTER TABLE `cb_member_selfcert_history` ADD CONSTRAINT `PK_CB_MEMBER_SELFCERT_HISTORY` PRIMARY KEY (
	`msh_id`,
	`mem_id`
);

ALTER TABLE `cb_member_userid` ADD CONSTRAINT `PK_CB_MEMBER_USERID` PRIMARY KEY (
	`mem_id`
);

ALTER TABLE `cb_menu` ADD CONSTRAINT `PK_CB_MENU` PRIMARY KEY (
	`men_id`
);

ALTER TABLE `cb_note` ADD CONSTRAINT `PK_CB_NOTE` PRIMARY KEY (
	`nte_id`
);

ALTER TABLE `cb_notification` ADD CONSTRAINT `PK_CB_NOTIFICATION` PRIMARY KEY (
	`not_id`,
	`mem_id`
);

ALTER TABLE `cb_payment_order_data` ADD CONSTRAINT `PK_CB_PAYMENT_ORDER_DATA` PRIMARY KEY (
	`pod_id`,
	`cart_id`,
	`mem_id2`
);

ALTER TABLE `cb_point` ADD CONSTRAINT `PK_CB_POINT` PRIMARY KEY (
	`poi_id`,
	`mem_id`
);

ALTER TABLE `cb_popup` ADD CONSTRAINT `PK_CB_POPUP` PRIMARY KEY (
	`pop_id`
);

ALTER TABLE `cb_post` ADD CONSTRAINT `PK_CB_POST` PRIMARY KEY (
	`post_id`,
	`brd_id`,
	`mem_id`
);

ALTER TABLE `cb_post_extra_vars` ADD CONSTRAINT `PK_CB_POST_EXTRA_VARS` PRIMARY KEY (
	`post_id`,
	`brd_id`
);

ALTER TABLE `cb_post_file` ADD CONSTRAINT `PK_CB_POST_FILE` PRIMARY KEY (
	`pfi_id`,
	`post_id2`,
	`brd_id2`,
	`mem_id2`
);

ALTER TABLE `cb_post_file_download_log` ADD CONSTRAINT `PK_CB_POST_FILE_DOWNLOAD_LOG` PRIMARY KEY (
	`pfd_id`,
	`pfi_id2`,
	`post_id2`,
	`brd_id2`,
	`mem_id2`
);

ALTER TABLE `cb_post_history` ADD CONSTRAINT `PK_CB_POST_HISTORY` PRIMARY KEY (
	`phi_id`,
	`post_id`,
	`brd_id`,
	`mem_id`
);

ALTER TABLE `cb_post_link` ADD CONSTRAINT `PK_CB_POST_LINK` PRIMARY KEY (
	`pln_id`,
	`post_id`,
	`brd_id`
);

ALTER TABLE `cb_post_link_click_log` ADD CONSTRAINT `PK_CB_POST_LINK_CLICK_LOG` PRIMARY KEY (
	`plc_id`,
	`pln_id2`,
	`post_id2`,
	`brd_id2`
);

ALTER TABLE `cb_post_meta` ADD CONSTRAINT `PK_CB_POST_META` PRIMARY KEY (
	`post_id2`,
	`brd_id2`
);

ALTER TABLE `cb_post_naver_syndi_log` ADD CONSTRAINT `PK_CB_POST_NAVER_SYNDI_LOG` PRIMARY KEY (
	`pns_id`,
	`post_id2`,
	`mem_id2`
);

ALTER TABLE `cb_post_poll` ADD CONSTRAINT `PK_CB_POST_POLL` PRIMARY KEY (
	`ppo_id`,
	`post_id`,
	`brd_id`,
	`mem_id`
);

ALTER TABLE `cb_post_poll_item` ADD CONSTRAINT `PK_CB_POST_POLL_ITEM` PRIMARY KEY (
	`ppi_id`,
	`ppo_id`
);

ALTER TABLE `cb_post_poll_item_poll` ADD CONSTRAINT `PK_CB_POST_POLL_ITEM_POLL` PRIMARY KEY (
	`ppp_id`,
	`ppo_id`,
	`mem_id`,
	`ppi_id`
);

ALTER TABLE `cb_post_tag` ADD CONSTRAINT `PK_CB_POST_TAG` PRIMARY KEY (
	`pta_id`,
	`post_id`,
	`brd_id`
);

ALTER TABLE `cb_scrap` ADD CONSTRAINT `PK_CB_SCRAP` PRIMARY KEY (
	`scr_id`,
	`mem_id`,
	`post_id`,
	`brd_id`,
	`target_mem_id`
);

ALTER TABLE `cb_search_keyword` ADD CONSTRAINT `PK_CB_SEARCH_KEYWORD` PRIMARY KEY (
	`sek_id`,
	`mem_id`
);

ALTER TABLE `cb_session` ADD CONSTRAINT `PK_CB_SESSION` PRIMARY KEY (
	`id`
);

ALTER TABLE `cb_sms_favorite` ADD CONSTRAINT `PK_CB_SMS_FAVORITE` PRIMARY KEY (
	`sfa_id`
);

ALTER TABLE `cb_sms_member` ADD CONSTRAINT `PK_CB_SMS_MEMBER` PRIMARY KEY (
	`sme_id`,
	`smg_id`,
	`mem_id`
);

ALTER TABLE `cb_sms_member_group` ADD CONSTRAINT `PK_CB_SMS_MEMBER_GROUP` PRIMARY KEY (
	`smg_id`
);

ALTER TABLE `cb_sms_send_content` ADD CONSTRAINT `PK_CB_SMS_SEND_CONTENT` PRIMARY KEY (
	`ssc_id`
);

ALTER TABLE `cb_sms_send_history` ADD CONSTRAINT `PK_CB_SMS_SEND_HISTORY` PRIMARY KEY (
	`ssh_id`,
	`ssc_id`
);

ALTER TABLE `cb_social` ADD CONSTRAINT `PK_CB_SOCIAL` PRIMARY KEY (
	`soc_id`
);

ALTER TABLE `cb_social_meta` ADD CONSTRAINT `PK_CB_SOCIAL_META` PRIMARY KEY (
	`mem_id`
);

ALTER TABLE `cb_stat_count` ADD CONSTRAINT `PK_CB_STAT_COUNT` PRIMARY KEY (
	`sco_id`
);

ALTER TABLE `cb_tempsave` ADD CONSTRAINT `PK_CB_TEMPSAVE` PRIMARY KEY (
	`tmp_id`,
	`tmp_ip`,
	`brd_id`,
	`mem_id`
);

ALTER TABLE `cb_payment_inicis_log` ADD CONSTRAINT `PK_CB_PAYMENT_INICIS_LOG` PRIMARY KEY (
	`pil_id`
);

ALTER TABLE `cb_attendance` ADD CONSTRAINT `FK_cb_member_TO_cb_attendance_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_autologin` ADD CONSTRAINT `FK_cb_member_TO_cb_autologin_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_banner` ADD CONSTRAINT `FK_cb_member_TO_cb_banner_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_banner` ADD CONSTRAINT `FK_cb_banner_group_TO_cb_banner_1` FOREIGN KEY (
	`bng_name`
)
REFERENCES `cb_banner_group` (
	`bng_name`
);

ALTER TABLE `cb_banner_click_log` ADD CONSTRAINT `FK_cb_banner_TO_cb_banner_click_log_1` FOREIGN KEY (
	`ban_id`
)
REFERENCES `cb_banner` (
	`ban_id`
);

ALTER TABLE `cb_banner_click_log` ADD CONSTRAINT `FK_cb_member_TO_cb_banner_click_log_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_blame` ADD CONSTRAINT `FK_cb_member_TO_cb_blame_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_blame` ADD CONSTRAINT `FK_cb_board_TO_cb_blame_1` FOREIGN KEY (
	`brd_id2`
)
REFERENCES `cb_board` (
	`brd_id`
);

ALTER TABLE `cb_blame` ADD CONSTRAINT `FK_cb_board_TO_cb_blame_2` FOREIGN KEY (
	`bgr_id2`
)
REFERENCES `cb_board` (
	`bgr_id`
);

ALTER TABLE `cb_board` ADD CONSTRAINT `FK_cb_board_group_TO_cb_board_1` FOREIGN KEY (
	`bgr_id`
)
REFERENCES `cb_board_group` (
	`bgr_id`
);

ALTER TABLE `cb_board_admin` ADD CONSTRAINT `FK_cb_board_TO_cb_board_admin_1` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_board` (
	`brd_id`
);

ALTER TABLE `cb_board_admin` ADD CONSTRAINT `FK_cb_member_TO_cb_board_admin_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_board_category` ADD CONSTRAINT `FK_cb_board_TO_cb_board_category_1` FOREIGN KEY (
	`brd_id2`
)
REFERENCES `cb_board` (
	`brd_id`
);

ALTER TABLE `cb_board_group_admin` ADD CONSTRAINT `FK_cb_board_group_TO_cb_board_group_admin_1` FOREIGN KEY (
	`bgr_id2`
)
REFERENCES `cb_board_group` (
	`bgr_id`
);

ALTER TABLE `cb_board_group_admin` ADD CONSTRAINT `FK_cb_member_TO_cb_board_group_admin_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_board_group_meta` ADD CONSTRAINT `FK_cb_board_group_TO_cb_board_group_meta_1` FOREIGN KEY (
	`bgr_id`
)
REFERENCES `cb_board_group` (
	`bgr_id`
);

ALTER TABLE `cb_board_meta` ADD CONSTRAINT `FK_cb_board_TO_cb_board_meta_1` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_board` (
	`brd_id`
);

ALTER TABLE `cb_cmall_cart` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_cart_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_cart` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_cart_1` FOREIGN KEY (
	`cit_id`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_cart` ADD CONSTRAINT `FK_cb_cmall_item_detail_TO_cb_cmall_cart_1` FOREIGN KEY (
	`cde_id`
)
REFERENCES `cb_cmall_item_detail` (
	`cde_id`
);

ALTER TABLE `cb_cmall_category_rel` ADD CONSTRAINT `FK_cb_cmall_category_TO_cb_cmall_category_rel_1` FOREIGN KEY (
	`cca_id`
)
REFERENCES `cb_cmall_category` (
	`cca_id`
);

ALTER TABLE `cb_cmall_category_rel` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_category_rel_1` FOREIGN KEY (
	`cit_id2`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_demo_click_log` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_demo_click_log_1` FOREIGN KEY (
	`cit_id`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_demo_click_log` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_demo_click_log_1` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_download_log` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_download_log_1` FOREIGN KEY (
	`cit_id`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_download_log` ADD CONSTRAINT `FK_cb_cmall_item_detail_TO_cb_cmall_download_log_1` FOREIGN KEY (
	`cde_id`
)
REFERENCES `cb_cmall_item_detail` (
	`cde_id`
);

ALTER TABLE `cb_cmall_download_log` ADD CONSTRAINT `FK_cb_cmall_item_detail_TO_cb_cmall_download_log_2` FOREIGN KEY (
	`cit_id2`
)
REFERENCES `cb_cmall_item_detail` (
	`cit_id`
);

ALTER TABLE `cb_cmall_download_log` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_download_log_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_item` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_item_1` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_item_detail` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_item_detail_1` FOREIGN KEY (
	`cit_id`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_item_detail` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_item_detail_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_item_history` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_item_history_1` FOREIGN KEY (
	`cit_id`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_item_history` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_item_history_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_item_meta` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_item_meta_1` FOREIGN KEY (
	`cit_id`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_order` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_order_1` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_order_detail` ADD CONSTRAINT `FK_cb_cmall_order_TO_cb_cmall_order_detail_1` FOREIGN KEY (
	`cor_id`
)
REFERENCES `cb_cmall_order` (
	`cor_id`
);

ALTER TABLE `cb_cmall_order_detail` ADD CONSTRAINT `FK_cb_cmall_order_TO_cb_cmall_order_detail_2` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_cmall_order` (
	`mem_id2`
);

ALTER TABLE `cb_cmall_order_detail` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_order_detail_1` FOREIGN KEY (
	`cit_id2`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_order_detail` ADD CONSTRAINT `FK_cb_cmall_item_detail_TO_cb_cmall_order_detail_1` FOREIGN KEY (
	`cde_id2`
)
REFERENCES `cb_cmall_item_detail` (
	`cde_id`
);

ALTER TABLE `cb_cmall_qna` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_qna_1` FOREIGN KEY (
	`cit_id2`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_qna` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_qna_1` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_review` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_review_1` FOREIGN KEY (
	`cit_id2`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_review` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_review_1` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_cmall_wishlist` ADD CONSTRAINT `FK_cb_cmall_item_TO_cb_cmall_wishlist_1` FOREIGN KEY (
	`cit_id2`
)
REFERENCES `cb_cmall_item` (
	`cit_id`
);

ALTER TABLE `cb_cmall_wishlist` ADD CONSTRAINT `FK_cb_member_TO_cb_cmall_wishlist_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_comment` ADD CONSTRAINT `FK_cb_post_TO_cb_comment_1` FOREIGN KEY (
	`post_id`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_comment` ADD CONSTRAINT `FK_cb_post_TO_cb_comment_2` FOREIGN KEY (
	`brd_id2`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_comment` ADD CONSTRAINT `FK_cb_post_TO_cb_comment_3` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_post` (
	`mem_id`
);

ALTER TABLE `cb_comment` ADD CONSTRAINT `FK_cb_board_TO_cb_comment_1` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_board` (
	`brd_id`
);

ALTER TABLE `cb_comment` ADD CONSTRAINT `FK_cb_member_TO_cb_comment_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_comment_meta` ADD CONSTRAINT `FK_cb_comment_TO_cb_comment_meta_1` FOREIGN KEY (
	`cmt_id2`
)
REFERENCES `cb_comment` (
	`cmt_id`
);

ALTER TABLE `cb_comment_meta` ADD CONSTRAINT `FK_cb_comment_TO_cb_comment_meta_2` FOREIGN KEY (
	`brd_id2`
)
REFERENCES `cb_comment` (
	`brd_id2`
);

ALTER TABLE `cb_comment_meta` ADD CONSTRAINT `FK_cb_comment_TO_cb_comment_meta_3` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_comment` (
	`mem_id2`
);

ALTER TABLE `cb_currentvisitor` ADD CONSTRAINT `FK_cb_member_TO_cb_currentvisitor_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_deposit` ADD CONSTRAINT `FK_cb_member_TO_cb_deposit_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_document` ADD CONSTRAINT `FK_cb_member_TO_cb_document_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_editor_image` ADD CONSTRAINT `FK_cb_member_TO_cb_editor_image_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_faq` ADD CONSTRAINT `FK_cb_faq_group_TO_cb_faq_1` FOREIGN KEY (
	`fgr_id2`
)
REFERENCES `cb_faq_group` (
	`fgr_id`
);

ALTER TABLE `cb_faq` ADD CONSTRAINT `FK_cb_member_TO_cb_faq_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_follow` ADD CONSTRAINT `FK_cb_member_TO_cb_follow_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_like` ADD CONSTRAINT `FK_cb_member_TO_cb_like_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_auth_email` ADD CONSTRAINT `FK_cb_member_TO_cb_member_auth_email_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_certify` ADD CONSTRAINT `FK_cb_member_TO_cb_member_certify_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_dormant` ADD CONSTRAINT `FK_cb_member_TO_cb_member_dormant_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_extra_vars` ADD CONSTRAINT `FK_cb_member_TO_cb_member_extra_vars_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_group_member` ADD CONSTRAINT `FK_cb_member_group_TO_cb_member_group_member_1` FOREIGN KEY (
	`mgr_id`
)
REFERENCES `cb_member_group` (
	`mgr_id`
);

ALTER TABLE `cb_member_group_member` ADD CONSTRAINT `FK_cb_member_TO_cb_member_group_member_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_level_history` ADD CONSTRAINT `FK_cb_member_TO_cb_member_level_history_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_login_log` ADD CONSTRAINT `FK_cb_member_TO_cb_member_login_log_1` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_meta` ADD CONSTRAINT `FK_cb_member_TO_cb_member_meta_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_nickname` ADD CONSTRAINT `FK_cb_member_TO_cb_member_nickname_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_register` ADD CONSTRAINT `FK_cb_member_TO_cb_member_register_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_selfcert_history` ADD CONSTRAINT `FK_cb_member_TO_cb_member_selfcert_history_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_member_userid` ADD CONSTRAINT `FK_cb_member_TO_cb_member_userid_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_notification` ADD CONSTRAINT `FK_cb_member_TO_cb_notification_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_payment_order_data` ADD CONSTRAINT `FK_cb_cmall_cart_TO_cb_payment_order_data_1` FOREIGN KEY (
	`cart_id`
)
REFERENCES `cb_cmall_cart` (
	`cct_id`
);

ALTER TABLE `cb_payment_order_data` ADD CONSTRAINT `FK_cb_cmall_cart_TO_cb_payment_order_data_2` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_cmall_cart` (
	`mem_id`
);

ALTER TABLE `cb_point` ADD CONSTRAINT `FK_cb_member_TO_cb_point_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_post` ADD CONSTRAINT `FK_cb_board_TO_cb_post_1` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_board` (
	`brd_id`
);

ALTER TABLE `cb_post` ADD CONSTRAINT `FK_cb_member_TO_cb_post_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_post` ADD CONSTRAINT `FK_cb_board_category_TO_cb_post_1` FOREIGN KEY (
	`post_category`
)
REFERENCES `cb_board_category` (
	`bca_id`
);

ALTER TABLE `cb_post_extra_vars` ADD CONSTRAINT `FK_cb_post_TO_cb_post_extra_vars_1` FOREIGN KEY (
	`post_id`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_post_extra_vars` ADD CONSTRAINT `FK_cb_post_TO_cb_post_extra_vars_2` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_post_file` ADD CONSTRAINT `FK_cb_post_TO_cb_post_file_1` FOREIGN KEY (
	`post_id2`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_post_file` ADD CONSTRAINT `FK_cb_post_TO_cb_post_file_2` FOREIGN KEY (
	`brd_id2`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_post_file` ADD CONSTRAINT `FK_cb_post_TO_cb_post_file_3` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_post` (
	`mem_id`
);

ALTER TABLE `cb_post_file_download_log` ADD CONSTRAINT `FK_cb_post_file_TO_cb_post_file_download_log_1` FOREIGN KEY (
	`pfi_id2`
)
REFERENCES `cb_post_file` (
	`pfi_id`
);

ALTER TABLE `cb_post_file_download_log` ADD CONSTRAINT `FK_cb_post_file_TO_cb_post_file_download_log_2` FOREIGN KEY (
	`post_id2`
)
REFERENCES `cb_post_file` (
	`post_id2`
);

ALTER TABLE `cb_post_file_download_log` ADD CONSTRAINT `FK_cb_post_file_TO_cb_post_file_download_log_3` FOREIGN KEY (
	`brd_id2`
)
REFERENCES `cb_post_file` (
	`brd_id2`
);

ALTER TABLE `cb_post_file_download_log` ADD CONSTRAINT `FK_cb_post_file_TO_cb_post_file_download_log_4` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_post_file` (
	`mem_id2`
);

ALTER TABLE `cb_post_history` ADD CONSTRAINT `FK_cb_post_TO_cb_post_history_1` FOREIGN KEY (
	`post_id`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_post_history` ADD CONSTRAINT `FK_cb_post_TO_cb_post_history_2` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_post_history` ADD CONSTRAINT `FK_cb_post_TO_cb_post_history_3` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_post` (
	`mem_id`
);

ALTER TABLE `cb_post_link` ADD CONSTRAINT `FK_cb_post_TO_cb_post_link_1` FOREIGN KEY (
	`post_id`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_post_link` ADD CONSTRAINT `FK_cb_post_TO_cb_post_link_2` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_post_link_click_log` ADD CONSTRAINT `FK_cb_post_link_TO_cb_post_link_click_log_1` FOREIGN KEY (
	`pln_id2`
)
REFERENCES `cb_post_link` (
	`pln_id`
);

ALTER TABLE `cb_post_link_click_log` ADD CONSTRAINT `FK_cb_post_link_TO_cb_post_link_click_log_2` FOREIGN KEY (
	`post_id2`
)
REFERENCES `cb_post_link` (
	`post_id`
);

ALTER TABLE `cb_post_link_click_log` ADD CONSTRAINT `FK_cb_post_link_TO_cb_post_link_click_log_3` FOREIGN KEY (
	`brd_id2`
)
REFERENCES `cb_post_link` (
	`brd_id`
);

ALTER TABLE `cb_post_link_click_log` ADD CONSTRAINT `FK_cb_member_TO_cb_post_link_click_log_1` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_post_meta` ADD CONSTRAINT `FK_cb_post_TO_cb_post_meta_1` FOREIGN KEY (
	`post_id2`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_post_meta` ADD CONSTRAINT `FK_cb_post_TO_cb_post_meta_2` FOREIGN KEY (
	`brd_id2`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_post_naver_syndi_log` ADD CONSTRAINT `FK_cb_post_TO_cb_post_naver_syndi_log_1` FOREIGN KEY (
	`post_id2`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_post_naver_syndi_log` ADD CONSTRAINT `FK_cb_post_TO_cb_post_naver_syndi_log_2` FOREIGN KEY (
	`mem_id2`
)
REFERENCES `cb_post` (
	`mem_id`
);

ALTER TABLE `cb_post_poll` ADD CONSTRAINT `FK_cb_post_TO_cb_post_poll_1` FOREIGN KEY (
	`post_id`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_post_poll` ADD CONSTRAINT `FK_cb_post_TO_cb_post_poll_2` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_post_poll` ADD CONSTRAINT `FK_cb_post_TO_cb_post_poll_3` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_post` (
	`mem_id`
);

ALTER TABLE `cb_post_poll_item` ADD CONSTRAINT `FK_cb_post_poll_TO_cb_post_poll_item_1` FOREIGN KEY (
	`ppo_id`
)
REFERENCES `cb_post_poll` (
	`ppo_id`
);

ALTER TABLE `cb_post_poll_item_poll` ADD CONSTRAINT `FK_cb_post_poll_TO_cb_post_poll_item_poll_1` FOREIGN KEY (
	`ppo_id`
)
REFERENCES `cb_post_poll` (
	`ppo_id`
);

ALTER TABLE `cb_post_poll_item_poll` ADD CONSTRAINT `FK_cb_post_poll_TO_cb_post_poll_item_poll_2` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_post_poll` (
	`mem_id`
);

ALTER TABLE `cb_post_poll_item_poll` ADD CONSTRAINT `FK_cb_post_poll_item_TO_cb_post_poll_item_poll_1` FOREIGN KEY (
	`ppi_id`
)
REFERENCES `cb_post_poll_item` (
	`ppi_id`
);

ALTER TABLE `cb_post_tag` ADD CONSTRAINT `FK_cb_post_TO_cb_post_tag_1` FOREIGN KEY (
	`post_id`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_post_tag` ADD CONSTRAINT `FK_cb_post_TO_cb_post_tag_2` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_scrap` ADD CONSTRAINT `FK_cb_member_TO_cb_scrap_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_scrap` ADD CONSTRAINT `FK_cb_post_TO_cb_scrap_1` FOREIGN KEY (
	`post_id`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_scrap` ADD CONSTRAINT `FK_cb_post_TO_cb_scrap_2` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_scrap` ADD CONSTRAINT `FK_cb_post_TO_cb_scrap_3` FOREIGN KEY (
	`target_mem_id`
)
REFERENCES `cb_post` (
	`mem_id`
);

ALTER TABLE `cb_search_keyword` ADD CONSTRAINT `FK_cb_member_TO_cb_search_keyword_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_sms_member` ADD CONSTRAINT `FK_cb_sms_member_group_TO_cb_sms_member_1` FOREIGN KEY (
	`smg_id`
)
REFERENCES `cb_sms_member_group` (
	`smg_id`
);

ALTER TABLE `cb_sms_member` ADD CONSTRAINT `FK_cb_member_TO_cb_sms_member_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_sms_send_history` ADD CONSTRAINT `FK_cb_sms_send_content_TO_cb_sms_send_history_1` FOREIGN KEY (
	`ssc_id`
)
REFERENCES `cb_sms_send_content` (
	`ssc_id`
);

ALTER TABLE `cb_social_meta` ADD CONSTRAINT `FK_cb_member_TO_cb_social_meta_1` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_member` (
	`mem_id`
);

ALTER TABLE `cb_tempsave` ADD CONSTRAINT `FK_cb_post_TO_cb_tempsave_1` FOREIGN KEY (
	`tmp_ip`
)
REFERENCES `cb_post` (
	`post_id`
);

ALTER TABLE `cb_tempsave` ADD CONSTRAINT `FK_cb_post_TO_cb_tempsave_2` FOREIGN KEY (
	`brd_id`
)
REFERENCES `cb_post` (
	`brd_id`
);

ALTER TABLE `cb_tempsave` ADD CONSTRAINT `FK_cb_post_TO_cb_tempsave_3` FOREIGN KEY (
	`mem_id`
)
REFERENCES `cb_post` (
	`mem_id`
);

