<#
.SYNOPSIS
    Hides the network selection UI on the Windows logon screen in compliance with STIG ID WN10-CC-000120.

.NOTES
    Author          : Ayub Ali
    GitHub          : https://github.com/ayubhali/stig-remediation-win10
    Date Created    : 2025-06-05
    Last Modified   : 2025-06-05
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-CC-000120

.TESTED ON
    Date(s) Tested  : 2025-06-05
    Tested By       : Ayub Ali
    Systems Tested  : Windows 10 Pro 22H2
    PowerShell Ver. : 5.1+

.USAGE
    Example usage:
    PS C:\> .\remediation_WN10-CC-000120.ps1
#>

$regPath = "HKLM:\Software\Policies\Microsoft\Windows\System"
$name = "DontDisplayNetworkSelectionUI"
$value = 1

if (-not (Test-Path $regPath)) {
    New-Item -Path $regPath -Force | Out-Null
}

Set-ItemProperty -Path $regPath -Name $name -Value $value -Type DWord
Write-Output "Network selection UI on the logon screen has been hidden."
