@echo off
mode con: cols=85 lines=30
:NSFOCUSXA
title  WannaCry����������ȫ�ӹ̹���  
color 0A
cls
echo.                   
echo.                      
echo -----------------------  WannaCry����������ȫ�ӹ̹���  --------------------------
echo.                                                                         
echo.       
echo    * WannaCry���������ɼ���Ӳ���ļ����ܺ��߱���֧���߶������п��ܽ��ָܻ�����
echo      ȫ���ոߣ�Ӱ�췶Χ�㣡
echo.                                                                     
echo    * ������棺����߽����ǽ���445�˿ڵķ��ʣ���ͨ��IPS������ǽ��ذ�ȫ�豸��
echo      �������ϲ��ԡ�    
echo.
echo    * �ն˲��棺��ʱ�ر�Server����,ʹ������"netstat -ano | findstr ":445""��ȷ��
echo      �ر�445�˿ڣ�������΢����������MS17-010����,ѡ���Ӧ�İ汾���в�����װ����
echo      �����ص�ַ��http://www.catalog.update.microsoft.com/Search.aspx?q=KB4012598��        
echo.     
echo    * ������ϵͳ����Ա�������У������ṩ�˹��������Ĳ����Ľ��ܣ�
echo.
echo       1��WIN7�ӹ� 2��WIN10�ӹ� 3��WIN2003�ӹ� 4��WIN2008�ӹ� 5��WIN2012�ӹ�
echo       6.WIN2016�ӹ�          
echo.  
echo       7: �˳�                                                              
echo                                                       ���˿Ƽ� V1.3                      
echo                                                      www.nsfocus.com 
echo                                                                  
echo ---------------------------------------------------------------------------------
echo.
set start=
set /p start=    ����(1 2 3 4 5 6)�󰴻س���:
if "%start%"=="1" goto WIN7
if "%start%"=="2" goto WIN10
if "%start%"=="3" goto WIN2003
if "%start%"=="4" goto WIN2008
if "%start%"=="5" goto WIN2012
if "%start%"=="6" goto WIN2016
if "%start%"=="7" goto quit
goto NSFOCUSXA

:WIN7
net stop server /Y > nul
sc config lanmanserver start= disabled
netsh advfirewall set currentprofile state on > nul
netsh advfirewall firewall add rule name="DenyEquationTCP" dir=in action=block localport=445 remoteip=any protocol=tcp > nul
netsh advfirewall firewall add rule name="DenyEquationUDP" dir=in action=block localport=445 remoteip=any protocol=udp > nul
echo ---------------------------------------------------------------------------------
echo    *  Windows 7ϵͳ�ӹ�����ִ����ϣ�
echo .
pause
goto NSFOCUSXA
:WIN10
net stop server > nul
sc config lanmanserver start= disabled
netsh firewall set opmode enable > nul
netsh advfirewall firewall add rule name="DenyEquationTCP" dir=in action=block localport=445 remoteip=any protocol=tcp > nul
netsh advfirewall firewall add rule name="DenyEquationUDP" dir=in action=block localport=445 remoteip=any protocol=udp > nul
echo ---------------------------------------------------------------------------------
echo    *  Windows 10ϵͳ�ӹ�����ִ����ϣ�
echo .
pause
goto NSFOCUSXA
:WIN2003
net stop server > nul
net start sharedaccess > nul
sc config lanmanserver start= disabled
netsh firewall add portopening protocol = ALL port = 445 name = DenyEquationTCP mode = DISABLE scope = ALL profile = ALL > nul
echo ---------------------------------------------------------------------------------
echo    *  Windows Server 2003ϵͳ�ӹ�����ִ����ϣ�
echo .
pause
goto NSFOCUSXA

:WIN2008
net stop server /Y > nul
sc config lanmanserver start= disabled
netsh advfirewall set currentprofile state on > nul
netsh advfirewall firewall add rule name="DenyEquationTCP" dir=in action=block localport=445 remoteip=any protocol=tcp > nul
netsh advfirewall firewall add rule name="DenyEquationUDP" dir=in action=block localport=445 remoteip=any protocol=udp > nul
echo ---------------------------------------------------------------------------------
echo    *  Windows Server 2008ϵͳ�ӹ�����ִ����ϣ�
echo .
pause
goto NSFOCUSXA

:WIN2012
net stop server > nul
net start MpsSvc > nul
sc config lanmanserver start= disabled
netsh advfirewall firewall add rule name="DenyEquationTCP" dir=in action=block localport=445 remoteip=any protocol=tcp > nul
netsh advfirewall firewall add rule name="DenyEquationUDP" dir=in action=block localport=445 remoteip=any protocol=udp > nul
echo ---------------------------------------------------------------------------------
echo    *  Windows Server 2012ϵͳ�ӹ�����ִ����ϣ�
echo .
pause
goto NSFOCUSXA
:WIN2016
net stop server > nul
sc config lanmanserver start= disabled
netsh advfirewall firewall add rule name="DenyEquationTCP" dir=in action=block localport=445 remoteip=any protocol=tcp > nul
netsh advfirewall firewall add rule name="DenyEquationUDP" dir=in action=block localport=445 remoteip=any protocol=udp > nul
echo ---------------------------------------------------------------------------------
echo    *  Windows Server 2016ϵͳ�ӹ�����ִ����ϣ�
echo .
pause
goto NSFOCUSXA