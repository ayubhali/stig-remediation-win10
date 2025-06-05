<#
.SYNOPSIS
    Disables HTTP printing by enabling the "Turn off printing over HTTP" policy in compliance with STIG ID WN10-CC-000110.

.NOTES
    Author          : Ayub Ali
    GitHub          : https://github.com/ayubhali/stig-remediation-win10
    Date Created    : 2025-06-05
    Last Modified   : 2025-06-05
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000110

.TESTED ON
    Date(s) Tested  : 2025-06-05
    Tested By       : Ayub Ali
    Systems Tested  : Windows 10 Pro 22H2
    PowerShell Ver. : 5.1+

.USAGE
    Example usage:
    PS C:\> .\remediation_WN10-CC-000110.ps1
#>

$regPath = "HKLM:\Software\Policies\Microsoft\Windows NT\Printers"
$name = "DisableHTTPPrinting"
$value = 1

if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name $name -Value $value -Type DWord
Write-Output "HTTP printing has been disabled successfully."
