# stig-remediation-win10

PowerShell scripts for automating Windows 10 DISA STIG compliance fixes.  
Each script remediates a specific STIG ID and is tested on Windows 10 Pro 22H2 using PowerShell 5.1+.

## 🔧 Scripts Included

| STIG ID           | Description                                      | Script Name                        |
|-------------------|--------------------------------------------------|------------------------------------|
| WN10-AU-000030     | Set Application event log size to ≥ 32MB         | `remediation_WN10-AU-000030.ps1`   |
| WN10-SO-000025     | Rename built-in Guest account                    | `remediation_WN10-SO-000025.ps1`   |

## 📋 Usage

1. Open PowerShell as Administrator.
2. Set execution policy (if needed):
   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
