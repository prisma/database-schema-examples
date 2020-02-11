DROP TABLE IF EXISTS `Untitled3`;

CREATE TABLE `Untitled3` (
	`Key`	NUMBER	NOT NULL,
	`Key3`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Field`	DATE	NULL,
	`Field2`	VARCHAR2(20)	NULL,
	`Field3`	VARCHAR2(1)	NULL
);

DROP TABLE IF EXISTS `Untitled4`;

CREATE TABLE `Untitled4` (
	`Key`	VARCHAR2(10)	NOT NULL,
	`Key22`	NUMBER	NOT NULL,
	`Key3`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NULL	COMMENT '전공 커리큘럼에 있는 데이터의 경우 연계해준다.  Null의 경우 전공 커리큘럼에 없는 정보',
	`Key4`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(90)	NULL,
	`Field2`	VARCHAR2(5)	NULL,
	`Field3`	VARCHAR2(3000)	NULL,
	`Field4`	NUMBER	NULL,
	`Field5`	varchar2(1)	NULL,
	`Field6`	varchar2(2)	NULL,
	`Field7`	NUMBER(3)	NULL,
	`Field12`	VARCHAR2(4000)	NULL,
	`Field13`	VARCHAR2(1)	NULL	DEFAULT F,
	`Field8`	VARCHAR2(300)	NULL,
	`Key5`	NUMBER(2)	NOT NULL
);

DROP TABLE IF EXISTS `Untitled6`;

CREATE TABLE `Untitled6` (
	`Key`	NUMBER	NOT NULL,
	`Key3`	NUMBER	NOT NULL,
	`Field4`	VARCHAR2(60)	NULL,
	`Field5`	DATE	NULL,
	`Field6`	VARCHAR2(20)	NULL,
	`Field7`	VARCHAR2(20)	NULL,
	`Field8`	VARCHAR2(300)	NULL,
	`Field9`	VARCHAR2(30)	NULL,
	`Field2`	VARCHAR2(60)	NULL,
	`Field10`	DATE	NULL,
	`Field`	VARCHAR2(60)	NULL	COMMENT '서류미비,
작성중 등을 저장',
	`Field3`	VARCHAR2(50)	NULL,
	`Field11`	DATE	NULL
);

DROP TABLE IF EXISTS `Untitled8`;

CREATE TABLE `Untitled8` (
	`Key`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key3`	NUMBER	NOT NULL,
	`Field5`	DATE	NOT NULL,
	`Field7`	NUMBER(2)	NOT NULL	DEFAULT 1	COMMENT '학기',
	`Field9`	VARCHAR2(20)	NULL,
	`Field`	DATE	NULL	DEFAULT SYSDATE,
	`Field2`	VARCHAR2(20)	NULL,
	`Field3`	DATE	NULL,
	`Key2`	NUMBER(3)	NOT NULL	COMMENT '<규칙>
세자리 숫자로 입력.

-백의자리 수
100  재학
200  휴학
300  졸업
400  제적
500  자퇴(재입학 가능)
600  퇴학(재입학 안됨)

700 재직(교수, 교직원)
800  퇴직(교수, 교직원)
900 기타

십의 자리 수는
10. 개인 사정
20. 경제 사정
30. 가정 사정
40. 어학 연수
50. 병역
60. 창업
70. 임신, 출산, 육아
90. 기타

일의 자리 수는
기타 세항목을 위해 비워놓음.'
);

DROP TABLE IF EXISTS `Untitled9`;

CREATE TABLE `Untitled9` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key3`	NUMBER(3)	NOT NULL	COMMENT '<규칙>
세자리 숫자로 입력.

-백의자리 수
100  재학
200  휴학
300  졸업
400  제적
500  자퇴(재입학 가능)
600  퇴학(재입학 안됨)

700 재직(교수, 교직원)
800  퇴직(교수, 교직원)
900 기타

십의 자리 수는
10. 개인 사정
20. 경제 사정
30. 가정 사정
40. 어학 연수
50. 병역
60. 창업
70. 임신, 출산, 육아
90. 기타

일의 자리 수는
기타 세항목을 위해 비워놓음.',
	`Field`	DATE	NULL,
	`Field2`	DATE	NULL,
	`Field3`	DATE	NULL,
	`Field4`	VARCHAR2(20)	NULL,
	`Field5`	NUMBER(2)	NULL	DEFAULT 1,
	`Field6`	VARCHAR2(3000)	NULL,
	`Field7`	DATE	NULL,
	`Field8`	VARCHAR2(2)	NULL
);

DROP TABLE IF EXISTS `Untitled10`;

CREATE TABLE `Untitled10` (
	`Key`	NUMBER(3)	NOT NULL	COMMENT '<규칙>
세자리 숫자로 입력.

-백의자리 수
100  재학
200  휴학
300  졸업
400  제적
500  자퇴(재입학 가능)
600  퇴학(재입학 안됨)

700 재직(교수, 교직원)
800  퇴직(교수, 교직원)
900 기타

십의 자리 수는
10. 개인 사정
20. 경제 사정
30. 가정 사정
40. 어학 연수
50. 병역
60. 창업
70. 임신, 출산, 육아
90. 기타

일의 자리 수는
기타 세항목을 위해 비워놓음.',
	`Field`	VARCHAR2(60)	NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled8`;

CREATE TABLE `CopyOfUntitled8` (
	`Key`	VARCHAR2(20)	NOT NULL	COMMENT '<교수직번 만드는 형식>
2+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key2`	NUMBER(3)	NOT NULL,
	`Field2`	VARCHAR2(60)	NULL,
	`Field`	DATE	NULL,
	`Field3`	VARCHAR2(20)	NULL,
	`Field4`	VARCHAR2(300)	NULL,
	`Field5`	DATE	NULL,
	`Field6`	DATE	NULL,
	`Field7`	VARCHAR2(30)	NULL,
	`Field8`	VARCHAR2(20)	NULL,
	`Field9`	DATE	NULL,
	`Field10`	VARCHAR2(20)	NULL,
	`Field11`	DATE	NULL,
	`Field12`	VARCHAR2(20)	NULL,
	`Field13`	VARCHAR2(50)	NULL
);

DROP TABLE IF EXISTS `Untitled`;

CREATE TABLE `Untitled` (
	`Key`	NUMBER(2)	NOT NULL,
	`Field`	VARCHAR2(30)	NULL
);

DROP TABLE IF EXISTS `Untitled11`;

CREATE TABLE `Untitled11` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(10)	NOT NULL,
	`Field2`	VARCHAR2(120)	NULL,
	`Field3`	VARCHAR2(3000)	NULL,
	`Field4`	DATE	NULL,
	`Field5`	VARCHAR2(20)	NULL
);

DROP TABLE IF EXISTS `Untitled2`;

CREATE TABLE `Untitled2` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER(2)	NOT NULL,
	`Field`	VARCHAR2(60)	NULL,
	`Field3`	VARCHAR2(3000)	NULL,
	`Field2`	VARCHAR2(3000)	NULL,
	`Field4`	VARCHAR2(3000)	NULL,
	`Field5`	VARCHAR2(60)	NULL
);

DROP TABLE IF EXISTS `Untitled14`;

CREATE TABLE `Untitled14` (
	`Key2`	NUMBER	NOT NULL,
	`Key3`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(20)	NULL,
	`Field2`	VARCHAR2(300)	NULL,
	`Field3`	VARCHAR2(300)	NULL,
	`Field4`	VARCHAR2(300)	NULL,
	`Field5`	VARCHAR2(30)	NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled11`;

CREATE TABLE `CopyOfUntitled11` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(10)	NOT NULL,
	`Field2`	VARCHAR2(120)	NULL,
	`Field3`	VARCHAR2(3000)	NULL,
	`Field4`	DATE	NULL,
	`Field`	NUMBER(1)	NULL,
	`Field5`	VARCHAR2(20)	NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled82`;

CREATE TABLE `CopyOfUntitled82` (
	`Key`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key2`	NUMBER(3)	NOT NULL,
	`Field2`	VARCHAR2(60)	NOT NULL,
	`Field`	DATE	NOT NULL,
	`Field3`	VARCHAR2(20)	NOT NULL,
	`Field4`	VARCHAR2(300)	NOT NULL,
	`Field5`	DATE	NOT NULL,
	`Field6`	DATE	NULL,
	`Field7`	VARCHAR2(20)	NOT NULL	DEFAULT 1	COMMENT '학기',
	`Field8`	VARCHAR2(30)	NULL,
	`Field9`	DATE	NULL,
	`Key3`	VARCHAR2(20)	NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Field10`	VARCHAR2(20)	NULL
);

DROP TABLE IF EXISTS `CopyOfCopyOfUntitled112`;

CREATE TABLE `CopyOfCopyOfUntitled112` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(10)	NOT NULL,
	`Field2`	VARCHAR2(120)	NULL,
	`Field3`	VARCHAR2(3000)	NULL,
	`Field4`	DATE	NULL,
	`Field5`	DATE	NULL,
	`Field6`	DATE	NULL
);

DROP TABLE IF EXISTS `CopyOfCopyOfUntitled13`;

CREATE TABLE `CopyOfCopyOfUntitled13` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(300)	NULL,
	`Field2`	VARCHAR2(300)	NULL,
	`Field3`	VARCHAR2(20)	NULL,
	`Field4`	DATE	NULL
);

DROP TABLE IF EXISTS `CopyOfCopyOfCopyOfUntitled112`;

CREATE TABLE `CopyOfCopyOfCopyOfUntitled112` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field2`	VARCHAR2(120)	NULL,
	`Field3`	VARCHAR2(3000)	NULL,
	`Field4`	DATE	NULL,
	`Field`	DATE	NULL,
	`Key3`	NUMBER	NOT NULL
);

DROP TABLE IF EXISTS `Untitled16`;

CREATE TABLE `Untitled16` (
	`Key`	NUMBER	NOT NULL,
	`Field6`	VARCHAR2(1)	NULL,
	`Field`	NUMBER	NULL,
	`Field2`	NUMBER	NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field3`	VARCHAR2(20)	NULL,
	`Field4`	NUMBER	NULL,
	`Field5`	NUMBER	NULL
);

DROP TABLE IF EXISTS `Untitled17`;

CREATE TABLE `Untitled17` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(2)	NOT NULL,
	`Key3`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key4`	NUMBER	NOT NULL,
	`Field2`	NUMBER(10)	NULL,
	`Field`	VARCHAR2(1500)	NULL,
	`Field4`	DATE	NULL,
	`Field3`	VARCHAR2(20)	NULL
);

DROP TABLE IF EXISTS `Untitled18`;

CREATE TABLE `Untitled18` (
	`Key`	VARCHAR2(60)	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(2)	NULL,
	`Field2`	VARCHAR2(60)	NULL,
	`Field3`	VARCHAR2(10)	NULL,
	`Field4`	VARCHAR2(13)	NULL,
	`Field5`	VARHCAR2(60)	NULL,
	`Field6`	DATE	NULL,
	`Field8`	VARCHAR2(300)	NULL
);

DROP TABLE IF EXISTS `Untitled20`;

CREATE TABLE `Untitled20` (
	`Key`	NUMBER	NOT NULL,
	`Field`	VARHCAR2(60)	NULL,
	`Field2`	VARCHAR2(60)	NULL,
	`Field3`	VARCHAR2(3000)	NULL
);

DROP TABLE IF EXISTS `Untitled5`;

CREATE TABLE `Untitled5` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key4`	VARCHAR2(10)	NOT NULL,
	`Key3`	NUMBER	NOT NULL,
	`Field`	DATE	NULL,
	`Field2`	TIMESTAMP	NULL
);

DROP TABLE IF EXISTS `Untitled21`;

CREATE TABLE `Untitled21` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	NUMBER	NULL,
	`Field3`	VARCHAR2(300)	NULL,
	`Field4`	VARCHAR2(3000)	NULL,
	`Field2`	NUMBER(3)	NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled112`;

CREATE TABLE `CopyOfUntitled112` (
	`Key`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(60)	NULL,
	`Field2`	VARCHAR2(120)	NULL,
	`Field3`	VARCHAR2(3000)	NULL,
	`Field4`	DATE	NULL,
	`Field5`	DATE	NULL,
	`Field6`	VARCHAR2(60)	NULL
);

DROP TABLE IF EXISTS `CopyOfCopyOfUntitled132`;

CREATE TABLE `CopyOfCopyOfUntitled132` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(300)	NULL,
	`Field2`	VARCHAR2(300)	NULL,
	`Field3`	DATE	NULL,
	`Field4`	VARCHAR2(60)	NULL
);

DROP TABLE IF EXISTS `Untitled22`;

CREATE TABLE `Untitled22` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(10)	NOT NULL,
	`Field`	VARCHAR2(60)	NULL	COMMENT '기본적으로 강의계획서에 있는 커리큘럼을 기본값으로 보여주고, 수정할 경우 UPDATE 수행.',
	`Field3`	VARCHAR2(300)	NULL,
	`Field2`	VARCHAR2(300)	NULL,
	`Field4`	DATE	NULL,
	`Field5`	DATE	NULL,
	`Field6`	NUMBER(10)	NULL,
	`Field7`	VARCHAR2(20)	NULL,
	`Field8`	DATE	NULL,
	`Field9`	number(2)	NULL
);

DROP TABLE IF EXISTS `Untitled25`;

CREATE TABLE `Untitled25` (
	`Key`	NUMBER	NOT NULL,
	`Field`	DATE	NULL,
	`Field2`	VARCHAR2(90)	NULL,
	`Field3`	DATE	NULL,
	`Field4`	VARCHAR2(20)	NULL,
	`Field5`	DATE	NULL
);

DROP TABLE IF EXISTS `Untitled23`;

CREATE TABLE `Untitled23` (
	`Key`	varchar2(30)	NOT NULL,
	`Key2`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key3`	NUMBER(2)	NOT NULL,
	`Field2`	DATE	NULL,
	`Field4`	VARCHAR2(600)	NULL,
	`Field5`	DATE	NULL
);

DROP TABLE IF EXISTS `Untitled26`;

CREATE TABLE `Untitled26` (
	`Key`	NUMBER(2)	NOT NULL,
	`Field`	VARCHAR2(90)	NULL
);

DROP TABLE IF EXISTS `Untitled27`;

CREATE TABLE `Untitled27` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	NUMBER(5)	NULL,
	`Field2`	NUMBER(5)	NULL,
	`Field3`	NUMBER(5)	NULL,
	`Field4`	NUMBER(5)	NULL,
	`Field5`	NUMBER(5)	NULL,
	`Field6`	NUMBER(5)	NULL,
	`Field13`	NUMBER(10)	NULL,
	`Field14`	VARCHAR2(4)	NULL,
	`Field15`	VARCHAR2(2)	NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled27`;

CREATE TABLE `CopyOfUntitled27` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	NUMBER(5)	NULL,
	`Field2`	NUMBER(5)	NULL,
	`Field3`	NUMBER(5)	NULL,
	`Field4`	VARCHAR2(1500)	NULL,
	`Field5`	VARCHAR2(1500)	NULL,
	`Field6`	VARCHAR2(1500)	NULL
);

DROP TABLE IF EXISTS `Untitled28`;

CREATE TABLE `Untitled28` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(20)	NOT NULL	COMMENT '<교수직번 만드는 형식>
2+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key4`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key3`	NUMBER(2)	NOT NULL,
	`Field`	DATE	NULL,
	`Field2`	VARCHAR2(3000)	NULL,
	`Field3`	VARCHAR2(1)	NOT NULL	COMMENT 'A:상담신청
B:교수열람
C:상담왼료
F:상담취소
--반드시 대문자--',
	`Field4`	DATE	NULL,
	`Field5`	VARCHAR2(300)	NULL,
	`Field6`	DATE	NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled26`;

CREATE TABLE `CopyOfUntitled26` (
	`Key`	NUMBER(2)	NOT NULL	COMMENT '두자리 수로
10. 가정사정
20. 학업관련, 전공문의
30. 학교생활관련
40. 강의관련
50. 정기상담
60. 논문관련
90. 기타상담

일의자리는 각 항목값',
	`Field`	VARCHAR2(90)	NULL
);

DROP TABLE IF EXISTS `Untitled29`;

CREATE TABLE `Untitled29` (
	`Key`	NUMBER	NOT NULL,
	`Key4`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(3)	NULL,
	`Field2`	NUMBER	NULL
);

DROP TABLE IF EXISTS `CopyOfCopyOfUntitled5`;

CREATE TABLE `CopyOfCopyOfUntitled5` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	DATE	NULL	DEFAULT SYSDATE,
	`Field2`	VARCHAR2(1)	NULL	DEFAULT F	COMMENT '승인 완료시 T',
	`Field3`	VARCHAR2(3000)	NULL,
	`Field4`	DATE	NULL
);

DROP TABLE IF EXISTS `Untitled15`;

CREATE TABLE `Untitled15` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(10)	NOT NULL,
	`Field`	VARCHAR2(1)	NULL	COMMENT '중간M
기말F',
	`Field2`	DATE	NULL,
	`Field3`	DATE	NULL,
	`Field4`	VARCHAR2(10)	NULL,
	`Field5`	DATE	NULL,
	`Field6`	VARCHAR2(20)	NULL
);

DROP TABLE IF EXISTS `Untitled30`;

CREATE TABLE `Untitled30` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(3000)	NULL,
	`Field2`	NUMBER	NULL,
	`Field3`	NUMBER	NULL
);

DROP TABLE IF EXISTS `Untitled31`;

CREATE TABLE `Untitled31` (
	`Key`	NUMBER	NOT NULL,
	`Key3`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(4000)	NULL,
	`Field2`	DATE	NULL,
	`Field3`	VARCHAR2(40)	NULL,
	`Key2`	VARCHAR2(20)	NOT NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled272`;

CREATE TABLE `CopyOfUntitled272` (
	`Key`	NUMBER	NOT NULL,
	`Field7`	NUMBER(5)	NULL,
	`Field8`	NUMBER(5)	NULL,
	`Field9`	NUMBER(5)	NULL,
	`Field10`	NUMBER(5)	NULL,
	`Field11`	NUMBER(5)	NULL,
	`Field12`	NUMBER(5)	NULL
);

DROP TABLE IF EXISTS `CopyOfCopyOfUntitled114`;

CREATE TABLE `CopyOfCopyOfUntitled114` (
	`Key`	NUMBER	NOT NULL,
	`Key3`	VARCHAR2(20)	NOT NULL	COMMENT '<교수직번 만드는 형식>
2+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)',
	`Key2`	NUMBER	NOT NULL,
	`Field2`	VARCHAR2(120)	NULL,
	`Field3`	VARCHAR2(3000)	NULL,
	`Field4`	DATE	NULL
);

DROP TABLE IF EXISTS `CopyOfCopyOfCopyOfUntitled132`;

CREATE TABLE `CopyOfCopyOfCopyOfUntitled132` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(300)	NULL,
	`Field2`	VARCHAR2(300)	NULL,
	`Field3`	DATE	NULL,
	`Field4`	VARCHAR2(60)	NULL
);

DROP TABLE IF EXISTS `Untitled13`;

CREATE TABLE `Untitled13` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	VARCHAR2(10)	NOT NULL,
	`Field`	DATE	NULL,
	`Field2`	DATE	NULL,
	`Field3`	VARCHAR2(3)	NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled52`;

CREATE TABLE `CopyOfUntitled52` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Key3`	VARCHAR2(10)	NOT NULL,
	`Field4`	VARCHAR2(30)	NULL	DEFAULT 재학,
	`Field3`	VARCHAR2(300)	NULL	DEFAULT 재학,
	`Field2`	VARCHAR2(60)	NULL,
	`Key22`	VARCHAR2(20)	NOT NULL	COMMENT '<학번 만드는 형식>
1+(입학년도2숫자)+(단대번호2숫자)+(학과전공2숫자)+(고유번호3숫자)'
);

DROP TABLE IF EXISTS `Untitled32`;

CREATE TABLE `Untitled32` (
	`Key`	NUMBER	NOT NULL,
	`Field`	NUMBER(4)	NULL,
	`Field2`	VARCHAR2(12)	NULL	DEFAULT 1
);

DROP TABLE IF EXISTS `CopyOfUntitled6`;

CREATE TABLE `CopyOfUntitled6` (
	`Key`	VARCHAR2(20)	NOT NULL,
	`Key3`	NUMBER	NOT NULL,
	`Field4`	VARCHAR2(60)	NULL,
	`Field5`	DATE	NULL,
	`Field6`	VARCHAR2(20)	NULL,
	`Field7`	VARCHAR2(20)	NULL,
	`Field8`	VARCHAR2(300)	NULL,
	`Field9`	VARCHAR2(30)	NULL,
	`Field10`	DATE	NOT NULL	DEFAULT SYSDATE,
	`Field`	VARCHAR2(20)	NULL	COMMENT '서류미비,
작성중 등을 저장',
	`Field3`	VARCHAR2(50)	NULL,
	`Field2`	DATE	NOT NULL,
	`Field11`	NUMBER(2)	NULL,
	`Field12`	DATE	NULL,
	`Field13`	VARCHAR2(20)	NULL,
	`Field14`	DATE	NULL,
	`Key2`	NUMBER(3)	NOT NULL	COMMENT '<규칙>
세자리 숫자로 입력.

-백의자리 수
100  재학
200  휴학
300  졸업
400  제적
500  자퇴(재입학 가능)
600  퇴학(재입학 안됨)

700 재직(교수, 교직원)
800  퇴직(교수, 교직원)
900 기타

십의 자리 수는
10. 개인 사정
20. 경제 사정
30. 가정 사정
40. 어학 연수
50. 병역
60. 창업
70. 임신, 출산, 육아
90. 기타

일의 자리 수는
기타 세항목을 위해 비워놓음.'
);

DROP TABLE IF EXISTS `Untitled33`;

CREATE TABLE `Untitled33` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(20)	NULL,
	`Field2`	DATE	NULL,
	`Field3`	DATE	NULL
);

DROP TABLE IF EXISTS `CopyOfUntitled24`;

CREATE TABLE `CopyOfUntitled24` (
	`Key`	NUMBER	NOT NULL,
	`Field3`	NUMBER(10)	NULL,
	`Field4`	VARCHAR2(15)	NULL,
	`Field5`	VARCHAR2(15)	NULL,
	`Key3`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL
);

DROP TABLE IF EXISTS `Untitled12`;

CREATE TABLE `Untitled12` (
	`Key`	NUMBER	NOT NULL,
	`Key2`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(4000)	NULL,
	`Field2`	DATE	NULL
);

DROP TABLE IF EXISTS `Untitled34`;

CREATE TABLE `Untitled34` (
	`Key`	NUMBER	NOT NULL,
	`Field`	VARCHAR2(30)	NULL
);

ALTER TABLE `Untitled3` ADD CONSTRAINT `PK_UNTITLED3` PRIMARY KEY (
	`Key`,
	`Key3`,
	`Key2`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `PK_UNTITLED4` PRIMARY KEY (
	`Key`,
	`Key22`,
	`Key3`,
	`Key2`,
	`Key4`
);

ALTER TABLE `Untitled6` ADD CONSTRAINT `PK_UNTITLED6` PRIMARY KEY (
	`Key`,
	`Key3`
);

ALTER TABLE `Untitled8` ADD CONSTRAINT `PK_UNTITLED8` PRIMARY KEY (
	`Key`,
	`Key3`
);

ALTER TABLE `Untitled9` ADD CONSTRAINT `PK_UNTITLED9` PRIMARY KEY (
	`Key`,
	`Key2`,
	`Key3`
);

ALTER TABLE `Untitled10` ADD CONSTRAINT `PK_UNTITLED10` PRIMARY KEY (
	`Key`
);

ALTER TABLE `CopyOfUntitled8` ADD CONSTRAINT `PK_COPYOFUNTITLED8` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled` ADD CONSTRAINT `PK_UNTITLED` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled11` ADD CONSTRAINT `PK_UNTITLED11` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled2` ADD CONSTRAINT `PK_UNTITLED2` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled14` ADD CONSTRAINT `PK_UNTITLED14` PRIMARY KEY (
	`Key2`,
	`Key3`,
	`Key`
);

ALTER TABLE `CopyOfUntitled11` ADD CONSTRAINT `PK_COPYOFUNTITLED11` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `CopyOfUntitled82` ADD CONSTRAINT `PK_COPYOFUNTITLED82` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `CopyOfCopyOfUntitled112` ADD CONSTRAINT `PK_COPYOFCOPYOFUNTITLED112` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `CopyOfCopyOfUntitled13` ADD CONSTRAINT `PK_COPYOFCOPYOFUNTITLED13` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `CopyOfCopyOfCopyOfUntitled112` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFUNTITLED112` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled16` ADD CONSTRAINT `PK_UNTITLED16` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled17` ADD CONSTRAINT `PK_UNTITLED17` PRIMARY KEY (
	`Key`,
	`Key2`,
	`Key3`,
	`Key4`
);

ALTER TABLE `Untitled18` ADD CONSTRAINT `PK_UNTITLED18` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled20` ADD CONSTRAINT `PK_UNTITLED20` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled5` ADD CONSTRAINT `PK_UNTITLED5` PRIMARY KEY (
	`Key`,
	`Key2`,
	`Key4`,
	`Key3`
);

ALTER TABLE `Untitled21` ADD CONSTRAINT `PK_UNTITLED21` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `CopyOfUntitled112` ADD CONSTRAINT `PK_COPYOFUNTITLED112` PRIMARY KEY (
	`Key`
);

ALTER TABLE `CopyOfCopyOfUntitled132` ADD CONSTRAINT `PK_COPYOFCOPYOFUNTITLED132` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled22` ADD CONSTRAINT `PK_UNTITLED22` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled25` ADD CONSTRAINT `PK_UNTITLED25` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled23` ADD CONSTRAINT `PK_UNTITLED23` PRIMARY KEY (
	`Key`,
	`Key2`,
	`Key3`
);

ALTER TABLE `Untitled26` ADD CONSTRAINT `PK_UNTITLED26` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled27` ADD CONSTRAINT `PK_UNTITLED27` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `CopyOfUntitled27` ADD CONSTRAINT `PK_COPYOFUNTITLED27` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled28` ADD CONSTRAINT `PK_UNTITLED28` PRIMARY KEY (
	`Key`,
	`Key2`,
	`Key4`,
	`Key3`
);

ALTER TABLE `CopyOfUntitled26` ADD CONSTRAINT `PK_COPYOFUNTITLED26` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled29` ADD CONSTRAINT `PK_UNTITLED29` PRIMARY KEY (
	`Key`,
	`Key4`
);

ALTER TABLE `CopyOfCopyOfUntitled5` ADD CONSTRAINT `PK_COPYOFCOPYOFUNTITLED5` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled15` ADD CONSTRAINT `PK_UNTITLED15` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled30` ADD CONSTRAINT `PK_UNTITLED30` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled31` ADD CONSTRAINT `PK_UNTITLED31` PRIMARY KEY (
	`Key`,
	`Key3`
);

ALTER TABLE `CopyOfUntitled272` ADD CONSTRAINT `PK_COPYOFUNTITLED272` PRIMARY KEY (
	`Key`
);

ALTER TABLE `CopyOfCopyOfUntitled114` ADD CONSTRAINT `PK_COPYOFCOPYOFUNTITLED114` PRIMARY KEY (
	`Key`,
	`Key3`,
	`Key2`
);

ALTER TABLE `CopyOfCopyOfCopyOfUntitled132` ADD CONSTRAINT `PK_COPYOFCOPYOFCOPYOFUNTITLED132` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled13` ADD CONSTRAINT `PK_UNTITLED13` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `CopyOfUntitled52` ADD CONSTRAINT `PK_COPYOFUNTITLED52` PRIMARY KEY (
	`Key`,
	`Key2`,
	`Key3`
);

ALTER TABLE `Untitled32` ADD CONSTRAINT `PK_UNTITLED32` PRIMARY KEY (
	`Key`
);

ALTER TABLE `CopyOfUntitled6` ADD CONSTRAINT `PK_COPYOFUNTITLED6` PRIMARY KEY (
	`Key`,
	`Key3`
);

ALTER TABLE `Untitled33` ADD CONSTRAINT `PK_UNTITLED33` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `CopyOfUntitled24` ADD CONSTRAINT `PK_COPYOFUNTITLED24` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled12` ADD CONSTRAINT `PK_UNTITLED12` PRIMARY KEY (
	`Key`,
	`Key2`
);

ALTER TABLE `Untitled34` ADD CONSTRAINT `PK_UNTITLED34` PRIMARY KEY (
	`Key`
);

ALTER TABLE `Untitled3` ADD CONSTRAINT `FK_Untitled2_TO_Untitled3_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled2` (
	`Key`
);

ALTER TABLE `Untitled3` ADD CONSTRAINT `FK_Untitled8_TO_Untitled3_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled8` (
	`Key`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `FK_Untitled14_TO_Untitled4_1` FOREIGN KEY (
	`Key22`
)
REFERENCES `Untitled14` (
	`Key2`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `FK_Untitled32_TO_Untitled4_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled32` (
	`Key`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `FK_Untitled21_TO_Untitled4_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled21` (
	`Key`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `FK_CopyOfUntitled272_TO_Untitled4_1` FOREIGN KEY (
	`Key4`
)
REFERENCES `CopyOfUntitled272` (
	`Key`
);

ALTER TABLE `Untitled4` ADD CONSTRAINT `FK_Untitled34_TO_Untitled4_1` FOREIGN KEY (
	`Key5`
)
REFERENCES `Untitled34` (
	`Key`
);

ALTER TABLE `Untitled6` ADD CONSTRAINT `FK_Untitled2_TO_Untitled6_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled2` (
	`Key`
);

ALTER TABLE `Untitled8` ADD CONSTRAINT `FK_Untitled6_TO_Untitled8_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled6` (
	`Key`
);

ALTER TABLE `Untitled8` ADD CONSTRAINT `FK_Untitled10_TO_Untitled8_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled10` (
	`Key`
);

ALTER TABLE `Untitled9` ADD CONSTRAINT `FK_Untitled8_TO_Untitled9_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled8` (
	`Key`
);

ALTER TABLE `Untitled9` ADD CONSTRAINT `FK_Untitled10_TO_Untitled9_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled10` (
	`Key`
);

ALTER TABLE `CopyOfUntitled8` ADD CONSTRAINT `FK_Untitled10_TO_CopyOfUntitled8_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled10` (
	`Key`
);

ALTER TABLE `Untitled11` ADD CONSTRAINT `FK_Untitled4_TO_Untitled11_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled4` (
	`Key`
);

ALTER TABLE `Untitled2` ADD CONSTRAINT `FK_Untitled_TO_Untitled2_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled` (
	`Key`
);

ALTER TABLE `Untitled14` ADD CONSTRAINT `FK_CopyOfUntitled8_TO_Untitled14_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `CopyOfUntitled8` (
	`Key`
);

ALTER TABLE `Untitled14` ADD CONSTRAINT `FK_Untitled2_TO_Untitled14_1` FOREIGN KEY (
	`Key`
)
REFERENCES `Untitled2` (
	`Key`
);

ALTER TABLE `CopyOfUntitled11` ADD CONSTRAINT `FK_Untitled4_TO_CopyOfUntitled11_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled4` (
	`Key`
);

ALTER TABLE `CopyOfUntitled82` ADD CONSTRAINT `FK_Untitled10_TO_CopyOfUntitled82_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled10` (
	`Key`
);

ALTER TABLE `CopyOfUntitled82` ADD CONSTRAINT `FK_CopyOfUntitled82_TO_CopyOfUntitled82_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `CopyOfUntitled82` (
	`Key`
);

ALTER TABLE `CopyOfCopyOfUntitled112` ADD CONSTRAINT `FK_Untitled4_TO_CopyOfCopyOfUntitled112_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled4` (
	`Key`
);

ALTER TABLE `CopyOfCopyOfUntitled13` ADD CONSTRAINT `FK_CopyOfCopyOfCopyOfUntitled112_TO_CopyOfCopyOfUntitled13_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfCopyOfCopyOfUntitled112` (
	`Key`
);

ALTER TABLE `CopyOfCopyOfCopyOfUntitled112` ADD CONSTRAINT `FK_CopyOfCopyOfUntitled112_TO_CopyOfCopyOfCopyOfUntitled112_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfCopyOfUntitled112` (
	`Key`
);

ALTER TABLE `CopyOfCopyOfCopyOfUntitled112` ADD CONSTRAINT `FK_CopyOfUntitled52_TO_CopyOfCopyOfCopyOfUntitled112_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `CopyOfUntitled52` (
	`Key`
);

ALTER TABLE `Untitled16` ADD CONSTRAINT `FK_Untitled32_TO_Untitled16_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled32` (
	`Key`
);

ALTER TABLE `Untitled17` ADD CONSTRAINT `FK_Untitled20_TO_Untitled17_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled20` (
	`Key`
);

ALTER TABLE `Untitled17` ADD CONSTRAINT `FK_Untitled8_TO_Untitled17_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled8` (
	`Key`
);

ALTER TABLE `Untitled17` ADD CONSTRAINT `FK_Untitled16_TO_Untitled17_1` FOREIGN KEY (
	`Key4`
)
REFERENCES `Untitled16` (
	`Key`
);

ALTER TABLE `Untitled18` ADD CONSTRAINT `FK_Untitled16_TO_Untitled18_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled16` (
	`Key`
);

ALTER TABLE `Untitled5` ADD CONSTRAINT `FK_Untitled8_TO_Untitled5_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled8` (
	`Key`
);

ALTER TABLE `Untitled5` ADD CONSTRAINT `FK_Untitled4_TO_Untitled5_1` FOREIGN KEY (
	`Key4`
)
REFERENCES `Untitled4` (
	`Key`
);

ALTER TABLE `Untitled5` ADD CONSTRAINT `FK_Untitled32_TO_Untitled5_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled32` (
	`Key`
);

ALTER TABLE `Untitled21` ADD CONSTRAINT `FK_Untitled2_TO_Untitled21_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled2` (
	`Key`
);

ALTER TABLE `CopyOfCopyOfUntitled132` ADD CONSTRAINT `FK_CopyOfUntitled112_TO_CopyOfCopyOfUntitled132_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfUntitled112` (
	`Key`
);

ALTER TABLE `Untitled22` ADD CONSTRAINT `FK_Untitled4_TO_Untitled22_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled4` (
	`Key`
);

ALTER TABLE `Untitled23` ADD CONSTRAINT `FK_Untitled8_TO_Untitled23_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled8` (
	`Key`
);

ALTER TABLE `Untitled23` ADD CONSTRAINT `FK_Untitled26_TO_Untitled23_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled26` (
	`Key`
);

ALTER TABLE `Untitled27` ADD CONSTRAINT `FK_CopyOfUntitled52_TO_Untitled27_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfUntitled52` (
	`Key`
);

ALTER TABLE `CopyOfUntitled27` ADD CONSTRAINT `FK_CopyOfUntitled52_TO_CopyOfUntitled27_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfUntitled52` (
	`Key`
);

ALTER TABLE `Untitled28` ADD CONSTRAINT `FK_CopyOfUntitled8_TO_Untitled28_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfUntitled8` (
	`Key`
);

ALTER TABLE `Untitled28` ADD CONSTRAINT `FK_Untitled8_TO_Untitled28_1` FOREIGN KEY (
	`Key4`
)
REFERENCES `Untitled8` (
	`Key`
);

ALTER TABLE `Untitled28` ADD CONSTRAINT `FK_CopyOfUntitled26_TO_Untitled28_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `CopyOfUntitled26` (
	`Key`
);

ALTER TABLE `Untitled29` ADD CONSTRAINT `FK_Untitled4_TO_Untitled29_1` FOREIGN KEY (
	`Key4`
)
REFERENCES `Untitled4` (
	`Key4`
);

ALTER TABLE `CopyOfCopyOfUntitled5` ADD CONSTRAINT `FK_Untitled28_TO_CopyOfCopyOfUntitled5_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled28` (
	`Key`
);

ALTER TABLE `Untitled15` ADD CONSTRAINT `FK_Untitled4_TO_Untitled15_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled4` (
	`Key`
);

ALTER TABLE `Untitled30` ADD CONSTRAINT `FK_Untitled15_TO_Untitled30_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled15` (
	`Key`
);

ALTER TABLE `Untitled31` ADD CONSTRAINT `FK_Untitled30_TO_Untitled31_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled30` (
	`Key`
);

ALTER TABLE `Untitled31` ADD CONSTRAINT `FK_CopyOfUntitled52_TO_Untitled31_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfUntitled52` (
	`Key`
);

ALTER TABLE `CopyOfCopyOfUntitled114` ADD CONSTRAINT `FK_CopyOfUntitled8_TO_CopyOfCopyOfUntitled114_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `CopyOfUntitled8` (
	`Key`
);

ALTER TABLE `CopyOfCopyOfUntitled114` ADD CONSTRAINT `FK_CopyOfUntitled11_TO_CopyOfCopyOfUntitled114_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfUntitled11` (
	`Key`
);

ALTER TABLE `CopyOfCopyOfCopyOfUntitled132` ADD CONSTRAINT `FK_Untitled11_TO_CopyOfCopyOfCopyOfUntitled132_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled11` (
	`Key`
);

ALTER TABLE `Untitled13` ADD CONSTRAINT `FK_Untitled4_TO_Untitled13_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled4` (
	`Key`
);

ALTER TABLE `CopyOfUntitled52` ADD CONSTRAINT `FK_Untitled5_TO_CopyOfUntitled52_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled5` (
	`Key`
);

ALTER TABLE `CopyOfUntitled52` ADD CONSTRAINT `FK_Untitled5_TO_CopyOfUntitled52_2` FOREIGN KEY (
	`Key22`
)
REFERENCES `Untitled5` (
	`Key2`
);

ALTER TABLE `CopyOfUntitled52` ADD CONSTRAINT `FK_Untitled4_TO_CopyOfUntitled52_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled4` (
	`Key`
);

ALTER TABLE `CopyOfUntitled6` ADD CONSTRAINT `FK_Untitled6_TO_CopyOfUntitled6_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled6` (
	`Key`
);

ALTER TABLE `CopyOfUntitled6` ADD CONSTRAINT `FK_Untitled10_TO_CopyOfUntitled6_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled10` (
	`Key`
);

ALTER TABLE `Untitled33` ADD CONSTRAINT `FK_Untitled14_TO_Untitled33_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled14` (
	`Key2`
);

ALTER TABLE `CopyOfUntitled24` ADD CONSTRAINT `FK_Untitled22_TO_CopyOfUntitled24_1` FOREIGN KEY (
	`Key3`
)
REFERENCES `Untitled22` (
	`Key`
);

ALTER TABLE `CopyOfUntitled24` ADD CONSTRAINT `FK_CopyOfUntitled52_TO_CopyOfUntitled24_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `CopyOfUntitled52` (
	`Key`
);

ALTER TABLE `Untitled12` ADD CONSTRAINT `FK_Untitled22_TO_Untitled12_1` FOREIGN KEY (
	`Key2`
)
REFERENCES `Untitled22` (
	`Key`
);

