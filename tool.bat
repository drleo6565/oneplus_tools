
chcp 866 > null
@echo off
SET path=%systemroot%/system32/
md temp > NULL
md recovery > NULL
md bootloader > NULL
md backup > NULL
md adb > NULL
del %cd%\update.bat /Q /S > NULL
del %cd%\Temp\update.zip /Q /S > NULL
del %cd%\Temp\Package /Q /S > NULL
:Start
cls
title OP5Tools
echo.
echo  ���� ���������� OP5Tools: �� � �����!
echo  ���  ���ன�� ������� OnePlus5/5T
echo.
echo  ��������, ��������...
%cd%\adb\adb.exe kill-server
%cd%\adb\adb.exe start-server
goto :Eula
pause


:Eula
cls
title ��業������� ᮣ��襭��
if exist %cd%\Temp\EulaAgree.OP5Tools (
goto :menu
)
echo.
echo ������ ��業��� ࠧ�蠥� ��栬, ����稢訬 ����� ������� �ணࠬ����� 
echo ���ᯥ祭�� � ᮯ������饩 ���㬥��樨 (� ���쭥�襬 ����㥬묨 
echo �ணࠬ���� ���ᯥ祭��), ������������ �ᯮ�짮���� �ணࠬ���� 
echo ���ᯥ祭�� ��� ��࠭�祭��, ������ ����࠭�祭��� �ࠢ� �� 
echo �ᯮ�짮�����, ����஢����, ���������, ᫨ﭨ�, �㡫�����, 
echo �����࠭����, �㡫�業��஢���� � ��� �த��� ����� �ணࠬ����� 
echo ���ᯥ祭��, � ⠪�� ��栬, ����� �।��⠢����� ������ �ணࠬ����
echo ���ᯥ祭��, �� ᮡ���� ᫥����� �᫮���
echo.
echo ��������� ��� 㢥�������� �� ����᪮� �ࠢ� � ����� �᫮��� ������ ���� 
echo ����祭� �� �� ����� ��� ���稬� ��� ������� �ணࠬ����� ���ᯥ祭��.
echo.
echo ������ ����������� ����������� ��������������� ��� ����, ��� �����-���� 
echo ��������, ���� ���������� ��� ���������������, ������� �������� �������� 
echo �����������, ������������ �� ��� ����������� ���������� � ���������� 
echo ���������, �� �� ������������� ���. �� � ����� ������ ������ ��� 
echo ��������������� �� ����� ��������������� �� �����-���� �����, �� ����� 
echo ��� �� ���� �����������, � ��� �����, ��� �������� ���������, ������� ��� 
echo ���� ��������, ��������� ��-�� ������������� ������������ ����������� ��� 
echo ���� �������� � ����������� ������������.  ����� �� ����� �������������� 
echo �� ������������ ��������� � �.�.
echo.
echo  [1] - �����ᥭ
echo.
echo  [2] - �⪠������
echo.
set /P Eula="�롥�� ����⢨�: "
if %Eula%==1 goto EulaAccept
if %Eula%==2 goto exit
goto :eula


:EulaAccept
echo KEK > %cd%\temp\EulaAgree.OP5Tools
goto :menu

:exit
exit

:menu
color F0
cls
title OP5Tools
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo  ������� ����:
echo.
echo  [1] - ����㧨�� � ��⠭����� �ࠩ���      [6] - �������/����⠭����� ���
echo.
echo  [2] - ����樨 � �����稪��               [7] - ��⠭����� APK
echo.
echo  [3] - ����樨 � Recovery                  [8] - ��㣮�
echo.
echo  [4] - ����樨 � ��訢���                 [9] - � �ணࠬ��
echo.
echo  [5] - ��१���㧨��� � ...
echo.
set /P option="�롥�� ����⢨�: "
if %option%==1 goto drivers
if %option%==2 goto bootoption
if %option%==3 goto recoveryopt
if %option%==4 goto firmwareopt
if %option%==5 goto rebootto
if %option%==6 goto adbbackup
if %option%==7 goto apkinstall
if %option%==8 goto menu
if %option%==9 goto aboutinfo
goto :menu


:aboutinfo
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo  � �ணࠬ��:
echo.
echo  OP5Tools
echo  ��誮��� ����ᥩ ��� (Dr.Leo6565)
echo  ��� 4pda.ru
echo  VK: https://vk.com/drleo2001
echo  4PDA: https://4pda.ru/forum/index.php?showuser=5144357
echo.
echo.
echo  v1.0alpha
echo.
echo [0] - ����
echo.
set /P about="�롥�� ����⢨�: "
if %about%==0 goto menu
goto :menu

:adbbackup
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo  �� ������?
echo.
echo.
echo  [1] - ����⠭�������� �� १�ࢭ�� ����� (%CD%\backup\OP5Tools.backup)
echo.
echo  [2] - ���࠭塞 䠩�� ����७��� � ���譥� ����� �����
echo.
echo  [3] - ���࠭塞 �� ��⠭������� �ਫ������
echo.
echo  [4] - ����
echo.
set /p backup="�롥�� ����⢨�: "
if /i %backup%==1 goto adbbackuprestore
if /i %backup%==2 goto adbbackupsd
if /i %backup%==3 goto adbbackupall
if /i %backup%==4 goto menu
goto :adbbackup
:apkinstall
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo ��⠭���� APK
echo  ---------------------------------------------------------
echo  ������ APK � �� ���� � ������ Enter
echo  ---------------------------------------------------------
set /P apklink="������ 䠩�:"
if /i %apklink%== %CD%\adb\adb install %apklink% 
echo  �ᯥ譮
echo.
goto :menu
:adbbackuprestore
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ����⠭������� �� (%CD%\backup\OP5Tools.backup)
echo  ---------------------------------------------------------
echo  ����������� ᢮� ���ன�⢮ � ᫥��� ��������
echo  �� ��襬 �࠭�
echo  ---------------------------------------------------------
%CD%\adb\adb restore %CD%\backup\OP5Tools.backup
echo  ������ �����襭�
pause
goto :menu


:adbbackupsd
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ��� �ਫ������
echo  ---------------------------------------------------------
echo  ����������� ᢮� ���ன�⢮ � ᫥��� ��������
echo  �� ��襬 �࠭�
echo  ---------------------------------------------------------
%CD%\adb\adb backup -shared -f %CD%\backup\OP5Tools.backup
echo  ������ �����襭�
pause
goto :menu

:adbbackupall
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ��� ����७��� � ���譥� �����
echo  ---------------------------------------------------------
echo  ����������� ᢮� ���ன�⢮ � ᫥��� ��������
echo  �� ��襬 �࠭�
echo  ---------------------------------------------------------
%CD%\adb\adb backup -all -f %CD%\backup\OP5Tools.backup
echo  ������ �����襭�
pause
goto :menu



:rebootto
cls
title OP5Tools
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ��१���㧨��� �:
echo.
echo  [1] - Qualcomm Dloader
echo.
echo  [2] - Bootloader
echo.
echo  [3] - Recovery
echo.
echo  [4] - ����
echo.
set /P rebootto="�롥�� ����⢨�: "
if %rebootto%==1 goto rebqdload
if %rebootto%==2 goto rebbootload
if %rebootto%==3 goto rebrecovery
if %rebootto%==4 goto menu
goto :rebootto

:rebqdload
cls
%cd%\adb\adb reboot edl
goto :menu

:rebbootload
cls
%cd%\adb\adb reboot bootloader
goto :menu

:rebrecovery
cls
%cd%\adb\adb reboot recovery
goto :menu



:firmwareopt
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo  ����樨 � ��訢���
echo.
echo  [1] - ���� ����஥�
echo.
echo  [2] - ����
echo.
set /P firmware1="�롥�� ����⢨�: "
if %firmware1%==1 goto formatdata
if %firmware1%==2 goto menu
goto :firmwareopt

:formatdata
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ���� ����஥�
echo.
echo  ����⨥ �� ������ �ਢ���� � ������ ���⪥!
echo  ���ன� ���� �᫨ �� ���.
echo.
pause
pause
echo ------------------------------------------
%cd%\adb\adb reboot bootloader
%cd%\adb\fastboot erase userdata
%cd%\adb\fastboot reboot
echo ------------------------------------------
echo  ������ �����襭�
goto :firmwareopt


:recoveryopt
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ����樨 � Recovery
echo.
echo  [1] - ��⠭����� ᢮� ४���� (/recovery/recovery.img)
echo.
echo  [2] - ��⠭����� TWRP codeworkx (���४⭮ ࠡ�⠥� �� 8.1) 
echo.
echo  [3] - ����
echo.
set /P recovery1="�롥�� ����⢨�: "
if %recovery1%==1 goto installrecovery
if %recovery1%==2 goto twrpofficial
if %recovery1%==3 goto menu
goto :recoveryopt

:installrecovery
cls
title OP5Tools
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ��⠭���� Recovery.img
echo.
if not exist %cd%\recovery\recovery.img (
echo  ���� recovery.img �� ������!
echo  �⬥�� ����樨..
pause
goto recoveryopt
)
pause
echo  ------------------------------------------------
%cd%\adb\adb reboot bootloader
%cd%\adb\fastboot flash recovery %cd%\recovery\recovery.img
echo  ------------------------------------------------
echo  ������ �����襭�.
goto :menu

:twrpofficial
cls
del %cd%\recovery\recovery.img /Q /S
%cd%\tools\wget -nc --no-check-certificate "https://drive.google.com/uc?export=download&id=1w4TSa6Mqc_7GMzfFMGvZ_aBdBbmey1QH" -O %cd%\recovery\recovery.img
goto :installrecovery




:bootoption
cls
echo.
echo  ����樨 � �����稪��:
echo.
echo  [1] - �஢���� ����� �����稪�
echo.
echo  [2] - ��������஢��� �����稪
echo.
echo  [3] - ������� �����稪 (!)
echo  ⮫쪮 ��� �⮪���� ��訢�� ��� ����䨪�権 � ��⥬�
echo.
echo  [4] - ����
echo.
set /P bootoption="�롥�� ����⢨�: "
if %bootoption%==1 goto bootloadergetstatus
if %bootoption%==2 goto bootloaderunlock
if %bootoption%==3 goto bootloaderlock
if %bootoption%==4 goto menu
goto :bootloaderoption
pause

:bootloadergetstatus
cls
%cd%\adb\adb reboot bootloader
echo.
echo ------------------------------------------------------------------
%cd%\adb\fastboot oem device-info
echo ------------------------------------------------------------------
echo.
echo  �᫨ �� ����� ��ப� "Device unlocked: true"
echo  ����� �����稪 ࠧ�����஢��
echo.
echo  �᫨ �� ����� ��ப� "Device critical unlocked: true"
echo  ����� ��訢�� �����稪� ࠧ�襭�
pause
goto :bootoption

:bootloaderunlock
cls
%cd%\adb\adb reboot bootloader
echo.
echo ------------------------------------------------------------------
echo  ������ �������� �� �࠭� ��襣� ���ன�⢠
echo ------------------------------------------------------------------
echo.
%cd%\adb\fastboot oem unlock-go
pause
goto :bootoption

:bootloaderlock
cls
cls
color F4
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  �����஢�� �����稪�
echo.
echo.
echo  [!] � ����� ������� ����� ������� ���������?
echo  ��� �����⨥ �����稪�, �� ᬠ��䮭� ������ ���� ��⠭������ �����᪠� 
echo  �⮪���� ��訢�� ��� ����� ���� ��������� � ��⥬�, ��, ४���� 
echo  � �.�.!
echo.
echo  [!] ��� ���������� ���� ������� ��������� � ����������� � ������� ���
echo  ��������� ���������?
echo  ��� ���ன�⢮ �� ᬮ��� ���������. �� ��� �� ������ ����� ��௨�. 
echo.
echo  �᫨ ᬠ��䮭 ᮮ⢥���� �ॡ������, �� ����� ������� �����稪.
echo.
echo  [1] - �த������ �����⨥ �����稪�
echo.
echo  [2] - �⬥��
echo.
set /P blockboot="�롥�� ����⢨�: "
if %blockboot%==1 goto bootlockcont
if %blockboot%==2 goto menu
goto :menu

:bootlockcont
cls
color F0
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  �����஢�� �����稪�
echo.
%cd%\adb\adb reboot bootloader
ping -n 4 localhost > NULL
echo.
echo ---------------------------------------------------------------
echo  ������ �������� �� �࠭� ��襣� ᬠ��䮭�
echo  �ᯮ���� ������ �஬���� ��� ��४��祭�� ��ਠ�⮢
echo  ������� Power ��� �ਭ��� ��ਠ��
echo ---------------------------------------------------------------
echo.
%cd%\adb\fastboot oem lock-go
ping -n 6 localhost > NULL
goto :menu



:drivers
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ������� ���� - ���稢����/��⠭���� �ࠩ��஢
echo.
echo  [��������] �⪫��� �஢��� ��஢�� �����ᥩ � ������� �� ������
echo.
echo  [1] - ������ � ��⠭����� �ࠩ���.
echo.
echo  [2] - �⪫���� �஢��� �����᪥� (���ॡ���� ��१���㧪� � �ࠢ� ������)
echo.
echo  [3] - ������� �஢��� �����᪥� (���ॡ���� ��१���㧪� � �ࠢ� ������)
echo.
echo  [0] - ��室
echo.
set /p bootzip="�롥��: "
if /i %bootzip%==1 goto driversdowninstall
if /i %bootzip%==2 goto driverCheckOff
if /i %bootzip%==3 goto driverCheckOn
if /i %bootzip%==0 goto menu
goto :menu

:driversdowninstall
cls
echo.
echo  Dr.Leo6565                                            OP5Tools
echo.
echo                                                       v1.0alpha
echo.
echo  ������� ���� - ���稢����/��⠭���� �ࠩ��஢
echo.
echo.
if exist %cd%\drivers (
echo  ����ন��� ����� drivers �㤥� ��饭�.
echo  ��᫥ ᪠稢���� 䠩�� �ࠩ��� ��஥��� �ணࠬ�� ��⠭����. �� ����� �� ������.
echo.
pause
del %cd%\drivers /Q /S
)
md %cd%\drivers
%cd%\tools\wget -nc --no-check-certificate "https://drive.google.com/uc?export=download&id=1yB97Py2_DGJYguJz-uqCpllIZiAlM---" -O %CD%\drivers\UniversalAdbDriverSetup.msi
cls
echo.
msiexec /i %CD%\drivers\UniversalAdbDriverSetup.msi  /qb
ping -n 3 localhost > NULL
goto :menu

:driverCheckOff
cls
echo.
echo �஢�ઠ ������ �ࠩ��஢ �㤥� �⪫�祭�
bcdedit.exe -set loadoptions DISABLE_INTEGRITY_CHECKS
bcdedit.exe -set TESTSIGNING ON
echo ������ �믮�����. �ॡ���� ��१���㧪�
ping -n 6 localhost > NULL
goto :menu

:driverCheckOn
cls
echo.
echo �஢�ઠ ������ �ࠩ��஢ �㤥� ����祭�
bcdedit.exe -set TESTSIGNING OFF
bcdedit.exe /set loadoptions ENABLE_INTEGRITY_CHECKS
echo ������ �믮�����. �ॡ���� ��१���㧪�
ping -n 6 localhost > NULL
goto :menu

