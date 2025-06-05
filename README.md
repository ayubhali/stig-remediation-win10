# stig-remediation-win10

PowerShell scripts for automating Windows 10 DISA STIG compliance fixes.  
Each script remediates a specific STIG ID and is tested on Windows 10 Pro 22H2 using PowerShell 5.1+.

![STIG Scan Failures - Audits Tab](https://github.com/user-attachments/assets/fa11e2ff-1b72-442b-b3ac-8fedbc733f75)

## 🔧 Scripts Included

| STIG ID           | Description                                      | Script Name                        |
|-------------------|--------------------------------------------------|------------------------------------|
| WN10-AU-000030     | Set Application event log size to ≥ 32MB         | `remediation_WN10-AU-000030.ps1`   |
| WN10-SO-000025     | Rename built-in Guest account                    | `remediation_WN10-SO-000025.ps1`   |

## 📋 Usage

1. Open PowerShell as **Administrator**.
2. (Optional) Set execution policy:
   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
