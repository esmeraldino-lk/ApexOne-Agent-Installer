@echo off
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Provider\Av\{008D2539-910E-337A-85E5-586D97ABA594}" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Provider\Av\{47D4517C-4DD9-0C82-F175-0E3CB0EFB4DD}" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Provider\Fw\{38B6A41C-DB61-3222-AEBA-F1586978E2EF}" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Security Center\Provider\Fw\{7FEFD059-07B6-0DDA-DA2A-A7094E3CF3A6}" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\AppCompatFlags\Custom\SophosNtpUninstall.exe" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SophosNtpUninstall.exe" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\SophosNtpUninstall.exe" /f


rd /s /q "%AppData%\Local\Sophos"
