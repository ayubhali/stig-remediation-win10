<#
.SYNOPSIS
    This PowerShell script ensures that the maximum size of the Windows Application event log is at least 32768 KB (32 MB), in compliance with STIG ID WN10-AU-000030.

.NOTES
    Author          : Ayub Ali
    GitHub          : https://github.com/ayubhali/stig-remediation-win10
    Date Created    : 2025-06-04
    Last Modified   : 2025-06-04
    Version         : 1.0
    CVEs            : N/A
    Plugin IDs      : N/A
    STIG-ID         : WN10-AU-000030

.TESTED ON
    Date(s) Tested  : 
    Tested By       : 
    Systems Tested  : Windows 10 Pro 22H2
    PowerShell Ver. : 5.1+

.USAGE
    Example usage:
    PS C:\> .\remediation_WN10-AU-000030.ps1
#>

# Set maximum log file size for the Application log to 32768 KB (32 MB)
$logName = "Application"
$maxSizeKB = 32768

try {
    Write-Output "Setting '$logName' log size to $maxSizeKB KB..."
    wevtutil sl $logName /ms:$($maxSizeKB * 1024)

    # Confirm the setting
    $logInfo = wevtutil gl $logName
    $logInfo | Select-String "maxSize"

    Write-Output "`nRemediation complete for STIG ID: WN10-AU-000030."
} catch {
    Write-Error "Failed to update log size: $_"
}
