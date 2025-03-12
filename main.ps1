

function ConnectionTest {
    param([string]$url)

    while (-not (Test-NetConnection -ComputerName $url -Port 443)) {
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
    "endpointpolicy-cdn-us1.xbc.trendmicro.com"
    )
    # http://3.227.20.153/
    
    foreach ($item in $urlToCheck) {
        ConnectionTest($item)
    }
}

TrendConnection