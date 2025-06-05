# 🛡️ STIG-Remediation-Win10

PowerShell scripts for automating **Windows 10 DISA STIG** compliance fixes.  
Each script remediates a specific STIG ID and is tested on **Windows 10 Pro 22H2** using **PowerShell 5.1+**.

![STIG Scan Failures - Audits Tab](https://github.com/user-attachments/assets/fa11e2ff-1b72-442b-b3ac-8fedbc733f75)

---

## 🔧 Scripts Included

| STIG ID            | Script Name                                | Description                                                                 |
|--------------------|---------------------------------------------|-----------------------------------------------------------------------------|
| WN10-00-000175      | `remediation_WN10-00-000175.ps1`           | Ensure Windows 10 is a supported version                                    |
| WN10-AC-000030      | `remediation_WN10-AC-000030.ps1`           | Set minimum password age to at least 1 day                                  |
| WN10-AU-000030      | `remediation_WN10-AU-000030.ps1`           | Set Application event log size to 32 MB or more                             |
| WN10-AU-000050      | `remediation_WN10-AU-000050.ps1`           | Configure audit for logon events                                            |
| WN10-AU-000090      | `remediation_WN10-AU-000090.ps1`           | Enable auditing of object access                                            |
| WN10-AU-000500      | `remediation_WN10-AU-000500.ps1`           | Prevent overwriting security log                                            |
| WN10-AU-000555      | `remediation_WN10-AU-000555.ps1`           | Configure log retention for security logs                                   |
| WN10-AU-000560      | `remediation_WN10-AU-000560.ps1`           | Set security log size to at least 192 MB                                    |
| WN10-CC-000010      | `remediation_WN10-CC-000010.ps1`           | Disable lock screen slideshow                                               |
| WN10-CC-000038      | `remediation_WN10-CC-000038.ps1`           | Disable Cortana on lock screen                                              |
| WN10-CC-000066      | `remediation_WN10-CC-000066.ps1`           | Disable Windows Consumer Experiences                                        |
| WN10-CC-000110      | `remediation_WN10-CC-000110.ps1`           | Disable Windows tips and suggestions                                        |
| WN10-CC-000120      | `remediation_WN10-CC-000120.ps1`           | Disable tailored experiences with diagnostic data                           |
| WN10-CC-000155      | `remediation_WN10-CC-000155.ps1`           | Prevent automatic downloads of OEM apps                                     |
| WN10-CC-000180      | `remediation_WN10-CC-000180.ps1`           | Disable OneDrive file storage                                               |
| WN10-CC-000210      | `remediation_WN10-CC-000210.ps1`           | Disable Windows Hello biometrics                                            |
| WN10-CC-000250      | `remediation_WN10-CC-000250.ps1`           | Prevent Microsoft consumer account sign-in                                  |
| WN10-CC-000252      | `remediation_WN10-CC-000252.ps1`           | Block access to Microsoft Store                                             |
| WN10-SO-000025      | `remediation_WN10-SO-000025.ps1`           | Rename the built-in Guest account                                           |
| WN10-SO-000030      | `remediation_WN10-SO-000030.ps1`           | Rename the built-in Administrator account                                   |
| WN10-UC-000015      | `remediation_WN10-UC-000015.ps1`           | Disable toast notifications on lock screen                                  |

---

## 📋 Usage

1. Open PowerShell as **Administrator**.
2. (Optional) Temporarily allow script execution:
   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
