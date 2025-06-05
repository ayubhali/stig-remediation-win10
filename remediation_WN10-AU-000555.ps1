<#
.SYNOPSIS
    Enables auditing of Other Policy Change Events (failures) in compliance with STIG ID WN10-AU-000555.

.NOTES
    Author          : Ayub Ali
    GitHub          : https://github.com/ayubhali/stig-remediation-win10
    Date Created    : 2025-06-05
    Last Modified   : 2025-06-05
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000555

.TESTED ON
    Date(s) Tested  : 2025-06-05
    Tested By       : Ayub Ali
    Systems Tested  : Windows 10 Pro 22H2
    PowerShell Ver. : 5.1+

.USAGE
    Example usage:
    PS C:\> .\remediation_WN10-AU-000555.ps1
#>

auditpol /set /subcategory:"Other Policy Change Events" /failure:enable
Write-Output "Audit Other Policy Change Events (Failure) has been enabled."
