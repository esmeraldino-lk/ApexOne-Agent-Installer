function Banner{
    Write-Host "================================" -ForegroundColor Cyan
    Write-Host " Apex One agent TroubleShoot 🛡️ " -ForegroundColor Yellow
    Write-Host "================================" -ForegroundColor Cyan
    Write-Host " Created by: esmeraldino-lk     " -ForegroundColor Green
    Write-Host " Version: 0.1                   " -ForegroundColor Green
    Write-Host " Make sure you have uninstalled " -ForegroundColor Green
    Write-Host " Trend Micro agent              " -ForegroundColor Green
    Write-Host "================================" -ForegroundColor Cyan
}

function ConnectionTest {
    param([string]$url, [int]$port)

    while (-not (Test-NetConnection -ComputerName $url -Port $port)) {
        Write-Host "[-] Connection with '$url' error"
        Read-Host  "[!] Press any key to check again..."
    }

    Write-Host "[+] Connection OK: '$url'"
}

function TrendConnection {
    $urlToCheck = @("release-us1.mgcp.trendmicro.com",
    "api-us1.xbc.trendmicro.com",
    "upload.xdr.trendmicro.com",
    "tgw-us1.mgcp.trendmicro.com",
    "endpointpolicy-cdn-us1.xbc.trendmicro.com",
    "agents-001.workload.us-1.cloudone.trendmicro.com"
    )
    
    foreach ($item in $urlToCheck) {
        ConnectionTest -url $item -port 443
    }
}

function DeleteTrendMicroFiles{

    # Folders
    $folders = @(
    "C:\Program Files\Trend Micro",
    "C:\Program Files (x86)\Trend Micro",
    "C:\ProgramData\Trend Micro"
    )

    foreach ($folder in $folders) {
    if (Test-Path $folder) {
        Remove-Item -Recurse -Force $folder
        Write-Host "[+] Removed: $folder"
    } else {
        Write-Host "[+] Not Found: $folder"
    }
    }

    # Limpar registros
    $regKeys = @(
    "HKLM:\SOFTWARE\TrendMicro",
    "HKLM:\SOFTWARE\WOW6432Node\TrendMicro",
    "HKLM:\SYSTEM\CurrentControlSet\Services\TmFilter",
    "HKLM:\SYSTEM\CurrentControlSet\Services\TmPreFilter",
    "HKLM:\SYSTEM\CurrentControlSet\Services\tmcomm",
    "HKLM:\SOFTWARE\Google\Chrome\NativeMessagingHosts\com.trendmicro.chrome.dlp",
    "HKLM:\SOFTWARE\Microsoft\Edge\NativeMessagingHosts\com.trendmicro.edge.dlp",
    "HKLM:\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Schedule\TaskCache\Tree\Trend Micro Endpoint Basecamp",
    "HKLM:\SYSTEM\ControlSet001\Services\Trend Micro Endpoint Basecamp",
    "HKLM:\SYSTEM\ControlSet001\Services\Trend Micro Web Service Communicator",
    "HKLM:\SYSTEM\ControlSet002\Services\Trend Micro Endpoint Basecamp",
    "HKLM:\SYSTEM\ControlSet002\Services\Trend Micro Web Service Communicator",
    "HKLM:\SYSTEM\CurrentControlSet\Services\Trend Micro Endpoint Basecamp",
    "HKLM:\SYSTEM\CurrentControlSet\Services\Trend Micro Web Service Communicator",
    "HKLM:\SOFTWARE\TrendMicro\Deep Security Agent",
    "HKLM:\SOFTWARE\WOW6432Node\TrendMicro\Deep Security Agent",
    "HKLM:\SYSTEM\ControlSet001\Services\EventLog\Application\Deep Security Agent",
    "HKLM:\SYSTEM\ControlSet002\Services\EventLog\Application\Deep Security Agent",
    "HKLM:\SYSTEM\CurrentControlSet\Services\EventLog\Application\Deep Security Agent"
    )

    foreach ($key in $regKeys) {
    if (Test-Path $key) {
        Remove-Item -Path $key -Recurse -Force
        Write-Host "[+] Removed: $key"
    } else {
        Write-Host "[+] Not Found: $key"
    }
    }
}

Banner
TrendConnection
DeleteTrendMicroFiles