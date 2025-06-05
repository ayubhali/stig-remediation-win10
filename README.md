# 🛡️ STIG-Remediation-Win10

PowerShell scripts for automating **Windows 10 DISA STIG** compliance fixes.  
Each script remediates a specific STIG ID and is tested on **Windows 10 Pro 22H2** using **PowerShell 5.1+**.

---

## 📉 Before Remediation

The following screenshot shows STIG scan failures before applying any fixes:

![STIG Scan Failures - Audits Tab](https://github.com/user-attachments/assets/fa11e2ff-1b72-442b-b3ac-8fedbc733f75)

---

## 🔧 Scripts Included

| STIG ID            | Script Name                                | Description                                                                 |
|--------------------|---------------------------------------------|-----------------------------------------------------------------------------|
| WN10-00-000175      | `remediation_WN10-00-000175.ps1`           | The Secondary Logon service must be disabled. |
| WN10-AC-000030      | `remediation_WN10-AC-000030.ps1`           | The minimum password age must be configured to at least one day. |
| WN10-AU-000030      | `remediation_WN10-AU-000030.ps1`           | The system must be configured to audit Account Management - Security Group Management successes. |
| WN10-AU-000050      | `remediation_WN10-AU-000050.ps1`           | The system must be configured to audit Detailed Tracking - Process Creation successes. |
| WN10-AU-000090      | `remediation_WN10-AU-000090.ps1`           | The system must be configured to audit Object Access - Other Object Access Events successes. |
| WN10-AU-000500      | `remediation_WN10-AU-000500.ps1`           | The Application event log size must be configured to 32768 KB or greater. |
| WN10-AU-000555      | `remediation_WN10-AU-000555.ps1`           | Windows 10 must be configured to audit Other Policy Change Events Failures. |
| WN10-AU-000560      | `remediation_WN10-AU-000560.ps1`           | Windows 10 must be configured to audit other Logon/Logoff Events Successes. |
| WN10-CC-000010      | `remediation_WN10-CC-000010.ps1`           | Camera access from the lock screen must be disabled. |
| WN10-CC-000038      | `remediation_WN10-CC-000038.ps1`           | WDigest Authentication must be disabled. |
| WN10-CC-000066      | `remediation_WN10-CC-000066.ps1`           | Windows 10 must be configured to enable Remote host allows delegation of non-exportable credentials. |
| WN10-CC-000110      | `remediation_WN10-CC-000110.ps1`           | Windows 10 must be configured to prevent certificate error overrides in Microsoft Edge. |
| WN10-CC-000120      | `remediation_WN10-CC-000120.ps1`           | Windows 10 must be configured to disable Windows Game Recording and Broadcasting. |
| WN10-CC-000155      | `remediation_WN10-CC-000155.ps1`           | The Windows PowerShell 2.0 feature must be disabled on the system. |
| WN10-CC-000180      | `remediation_WN10-CC-000180.ps1`           | The Windows Defender SmartScreen for Explorer must be enabled. |
| WN10-CC-000210      | `remediation_WN10-CC-000210.ps1`           | Windows 10 must be configured to prevent certificate error overrides in Microsoft Edge. |
| WN10-CC-000250      | `remediation_WN10-CC-000250.ps1`           | Windows 10 must be configured to disable Windows Game Recording and Broadcasting. |
| WN10-CC-000252      | `remediation_WN10-CC-000252.ps1`           | Windows 10 must be configured to disable Windows Game Recording and Broadcasting. |
| WN10-SO-000025      | `remediation_WN10-SO-000025.ps1`           | The built-in Guest account must be disabled. |
| WN10-SO-000030      | `remediation_WN10-SO-000030.ps1`           | The built-in Administrator account must be renamed. |
| WN10-UC-000015      | `remediation_WN10-UC-000015.ps1`           | Windows 10 must be configured to audit Other Policy Change Events Failures. |

---

## ✅ After Remediation

The following screenshot confirms that all applied remediations passed the STIG scan:

![Post Remediation](https://github.com/user-attachments/assets/4e33aa46-a910-4217-8104-c4f81a033b0e)

---

## 📋 Usage

1. Open PowerShell as **Administrator**.
2. (Optional) Temporarily allow script execution:
   ```powershell
   Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
