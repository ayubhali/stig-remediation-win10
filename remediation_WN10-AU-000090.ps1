<#
.SYNOPSIS
    Enables auditing of removable storage access successes in compliance with STIG ID WN10-AU-000090.

.NOTES
    Author          : Ayub Ali
    GitHub          : https://github.com/ayubhali/stig-remediation-win10
    Date Created    : 2025-06-05
    Last Modified   : 2025-06-05
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000090

.TESTED ON
    Date(s) Tested  : 2025-06-05
    Tested By       : Ayub Ali
    Systems Tested  : Windows 10 Pro 22H2
    PowerShell Ver. : 5.1+

.USAGE
    Example usage:
    PS C:\> .\remediation_WN10-AU-000090.ps1
#>

auditpol /set /subcategory:"Removable Storage" /success:enable
Write-Output "Audit Removable Storage (Success) has been enabled."
