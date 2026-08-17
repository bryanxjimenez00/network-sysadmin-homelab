<#
.SYNOPSIS
    Quick Infrastructure Health Check
.DESCRIPTION
    Pings critical network infrastructure (Gateways, Active Directory Domain Controllers)
    and outputs the status to the console. Useful for initial Help Desk triage.
#>

$Targets = @(
    "192.168.10.1",   # Core Gateway
    "192.168.10.193", # Management Switch
    "10.0.0.5",       # Primary Active Directory DC
    "8.8.8.8"         # External DNS
)

Write-Host "Starting Infrastructure Health Check..." -ForegroundColor Cyan

foreach ($IP in $Targets) {
    if (Test-Connection -ComputerName $IP -Count 1 -Quiet) {
        Write-Host "[ONLINE]  $IP" -ForegroundColor Green
    } else {
        Write-Host "[OFFLINE] $IP - Triage Required" -ForegroundColor Red
    }
}
