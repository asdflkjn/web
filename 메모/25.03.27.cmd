Microsoft Windows [Version 10.0.26100.3476]
(c) Microsoft Corporation. All rights reserved.

C:\Users\user>ipconfig

Windows IP 구성


이더넷 어댑터 이더넷 2:

   연결별 DNS 접미사. . . . :
   링크-로컬 IPv6 주소 . . . . : fe80::5c30:e5ba:a39e:d525%18
   IPv4 주소 . . . . . . . . . : 192.168.0.39
   서브넷 마스크 . . . . . . . : 255.255.255.0
   기본 게이트웨이 . . . . . . : 192.168.0.1

무선 LAN 어댑터 Wi-Fi:

   미디어 상태 . . . . . . . . : 미디어 연결 끊김
   연결별 DNS 접미사. . . . :

무선 LAN 어댑터 로컬 영역 연결* 9:

   미디어 상태 . . . . . . . . : 미디어 연결 끊김
   연결별 DNS 접미사. . . . :

무선 LAN 어댑터 로컬 영역 연결* 10:

   미디어 상태 . . . . . . . . : 미디어 연결 끊김
   연결별 DNS 접미사. . . . :

이더넷 어댑터 Bluetooth 네트워크 연결:

   미디어 상태 . . . . . . . . : 미디어 연결 끊김
   연결별 DNS 접미사. . . . :

C:\Users\user>conn system/1234
'conn'은(는) 내부 또는 외부 명령, 실행할 수 있는 프로그램, 또는
배치 파일이 아닙니다.

C:\Users\user>conn sys/1234
'conn'은(는) 내부 또는 외부 명령, 실행할 수 있는 프로그램, 또는
배치 파일이 아닙니다.

C:\Users\user>sqlplus

SQL*Plus: Release 11.2.0.2.0 Production on 목 3월 27 11:56:51 2025

Copyright (c) 1982, 2014, Oracle.  All rights reserved.

Enter user-name: system
Enter password:
ERROR:
ORA-01017: invalid username/password; logon denied


Enter user-name: system/1234

Connected to:
Oracle Database 11g Express Edition Release 11.2.0.2.0 - 64bit Production

SQL> show user
USER is "SYSTEM"
SQL> select dbms_xdb.gethttpport() FROM dual;

DBMS_XDB.GETHTTPPORT()
----------------------
                  8080

SQL> exec dbms_xdb.sethttpport(6060);

PL/SQL procedure successfully completed.

SQL>
SQL> select dbms_xdb.gethttpport() FROM dual;

DBMS_XDB.GETHTTPPORT()
----------------------
                  6060