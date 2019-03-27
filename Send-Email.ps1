#Name: Send-Email.ps1
#Script URL: https://github.com/JesseVroon/Send-Email/
#Description: Sends Email
#Version: 1.0.0
#Author: Jesse Vroon
#Author URL: https://github.com/JesseVroon/

$From = "jesse.vroon@live.nl"
$To = "jesse.vroon@live.nl"
$Cc = "jesse.vroon@gmail.com"
$Attachment = "C:\Users\jesse\OneDrive\Documents\PowerShell\PCinfo.ps1"
$Subject = "Verzonden met Powershell"
$Body = "test"
$SMTPServer = "smtp.office365.com"
$SMTPPort = "587"
Send-MailMessage -From $From -to $To -Cc $Cc -Subject $Subject -Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential (Get-Credential) -Attachments $Attachment –DeliveryNotificationOption OnSuccess
