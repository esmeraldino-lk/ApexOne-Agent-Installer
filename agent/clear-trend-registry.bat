@echo off
:: Clearing folders
rd /s /q "C:\Program Files\Trend Micro"
rd /s /q "C:\Program Files (x86)\Trend Micro"

:: Clearing regedit
REG DELETE "HKLM\SOFTWARE\TrendMicro" /f
REG DELETE "HKLM\SOFTWARE\WOW6432Node\TrendMicro" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\TmFilter" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\TmPreFilter" /f
REG DELETE "HKLM\SYSTEM\CurrentControlSet\Services\tmcomm" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Google\Chrome\NativeMessagingHosts\com.trendmicro.chrome.dlp" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Edge\NativeMessagingHosts\com.trendmicro.edge.dlp" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Trend Micro Endpoint Basecamp" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Trend Micro Endpoint Basecamp" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\Trend Micro Web Service Communicator" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\Trend Micro Endpoint Basecamp /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\Trend Micro Web Service Communicator" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Trend Micro Endpoint Basecamp" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Trend Micro Web Service Communicator" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\TrendMicro\Deep Security Agent" /f
REG DELETE "HKEY_LOCAL_MACHINE\SOFTWARE\WOW6432Node\TrendMicro\Deep Security Agent" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet001\Services\EventLog\Application\Deep Security Agent" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\ControlSet002\Services\EventLog\Application\Deep Security Agent" /f
REG DELETE "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\EventLog\Application\Deep Security Agent" /f


