<#
.SYNOPSIS
    This PowerShell script renames the built-in Windows Guest account to a non-default value, in compliance with STIG ID WN10-SO-000025.

.NOTES
    Author          : Ayub Ali
    GitHub          : https://github.com/ayubhali/stig-remediation-win10
    Date Created    : 2025-06-05
    Last Modified   : 2025-06-05
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-SO-000025

.TESTED ON
    Date(s) Tested  : 2025-06-05
    Tested By       : Ayub Ali
    Systems Tested  : Windows 10 Pro 22H2
    PowerShell Ver. : 5.1+

.USAGE
    Example usage:
    PS C:\> .\remediation_WN10-SO-000025.ps1
#>

$guestAccount = Get-LocalUser | Where-Object { $_.SID -like '*-501' }

if ($guestAccount) {
    $newName = "Guest_Disabled"

    if ($guestAccount.Name -ne $newName) {
        Rename-LocalUser -Name $guestAccount.Name -NewName $newName
        Write-Output "Guest account renamed to '$newName' successfully."
    } else {
        Write-Output "Guest account is already renamed to '$newName'. No changes needed."
    }
} else {
    Write-Warning "Guest account not found. No changes made."
}
