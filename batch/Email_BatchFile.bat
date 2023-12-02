@echo off
set "recipient_email=research@gmail.com"
set "attachment_path=PleaseAddFilePath\NFHS_5_Madhya_Pradesh.pdf"

:: Create a temporary PowerShell script
echo $Outlook = New-Object -comObject Outlook.Application > send_email.ps1
echo $Mail = $Outlook.CreateItem(0) >> send_email.ps1
echo $Mail.To = "%recipient_email%" >> send_email.ps1
echo $Mail.Subject = "Hello Sir" >> send_email.ps1
echo $Mail.Body = "Your email body text here" >> send_email.ps1
echo $attachment = "%attachment_path%" >> send_email.ps1
echo $Mail.Attachments.Add($attachment) >> send_email.ps1
echo $Mail.Send() >> send_email.ps1

:: Execute the PowerShell script
powershell.exe -ExecutionPolicy Bypass -File send_email.ps1

:: Remove the temporary PowerShell script
del send_email.ps1
