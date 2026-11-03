# ChatGPT / Codex Windows Setup — Quick Reference

## Purpose

Use this guide after installing the ChatGPT Windows app to verify that the **Codex Windows elevated sandbox** is correctly configured.

This is especially useful if Codex shows:

```text
Windows setup didn’t finish
Setup stopped
```

---

## 1. Open PowerShell as Administrator

Open **Start**, search for **PowerShell**, right-click it, and choose:

```text
Run as administrator
```

---

## 2. Check whether the Codex sandbox users already exist

Run:

```powershell
Get-LocalUser | Where-Object { $_.Name -like "Codex*" } | Select-Object Name, Enabled
```

### Successful setup

A completed setup should show accounts similar to:

```text
Name                  Enabled
----                  -------
CodexSandboxOffline   True
CodexSandboxOnline    True
```

If both accounts exist and are enabled, the elevated Windows sandbox is already configured.

### Incomplete setup

If the command returns nothing, continue with the following steps.

---

## 3. Find `codex.exe`

Run:

```powershell
Get-ChildItem "$env:LOCALAPPDATA\OpenAI\Codex" -Recurse -Filter "codex.exe" -File -ErrorAction SilentlyContinue |
Select-Object FullName
```

Example output:

```text
C:\Users\YOUR-USERNAME\AppData\Local\OpenAI\Codex\bin\<version-id>\codex.exe
```

Copy the exact path shown on your computer.

---

## 4. Run the elevated Windows sandbox setup

Using the path found in the previous step, run:

```powershell
& "C:\Users\YOUR-USERNAME\AppData\Local\OpenAI\Codex\bin\<version-id>\codex.exe" sandbox setup --elevated --current-user
```

For example:

```powershell
& "C:\Users\SE7EN-PC\AppData\Local\OpenAI\Codex\bin\de8a38d2100ae498\codex.exe" sandbox setup --elevated --current-user
```

A successful setup should return a message similar to:

```text
Windows elevated sandbox setup completed for YOUR-USERNAME at C:\Users\YOUR-USERNAME\.codex.
```

---

## 5. Verify the setup

Run the check again:

```powershell
Get-LocalUser | Where-Object { $_.Name -like "Codex*" } | Select-Object Name, Enabled
```

The expected result is:

```text
Name                  Enabled
----                  -------
CodexSandboxOffline   True
CodexSandboxOnline    True
```

If both accounts are present and enabled, the setup has completed successfully.

---

## 6. Restart ChatGPT normally

Close PowerShell.

Completely close the ChatGPT Windows app and reopen it **normally**.

You should not need to use **Run as administrator** every time.

Open **Codex** and confirm that the following error no longer appears:

```text
Windows setup didn’t finish
Setup stopped
```

---

## Important: Do not run the sandbox helper directly

You may find a file named:

```text
codex-windows-sandbox-setup.exe
```

Do **not** normally launch it directly.

Running it without the payload supplied by Codex can produce errors such as:

```text
Error: helper_request_args_failed: expected payload argument
```

or:

```text
failed to decode payload b64
```

Instead, use:

```powershell
codex.exe sandbox setup --elevated --current-user
```

with the full path to `codex.exe` if it is not available in PATH.

---

## One-minute version

Open **PowerShell as Administrator**.

### Check

```powershell
Get-LocalUser | Where-Object { $_.Name -like "Codex*" } | Select-Object Name, Enabled
```

### If nothing appears, locate Codex

```powershell
Get-ChildItem "$env:LOCALAPPDATA\OpenAI\Codex" -Recurse -Filter "codex.exe" -File -ErrorAction SilentlyContinue |
Select-Object FullName
```

### Run setup using the returned path

```powershell
& "FULL-PATH-TO-CODEX.EXE" sandbox setup --elevated --current-user
```

### Verify again

```powershell
Get-LocalUser | Where-Object { $_.Name -like "Codex*" } | Select-Object Name, Enabled
```

Expected:

```text
CodexSandboxOffline   True
CodexSandboxOnline    True
```

---

## Result

When the two sandbox accounts exist and are enabled, and the elevated setup command reports completion, the **Codex Windows sandbox setup is complete**.
