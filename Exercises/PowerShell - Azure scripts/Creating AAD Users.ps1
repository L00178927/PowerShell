cls
Connect-AzureAD -Confirm
function user
{
"creating user"
$displayname=read-host "enter the dispaly name"
#$pass=read-host "enter the password for user"
$Passwordpolicy = New-Object -TypeName Microsoft.Open.AzureAD.Model.PasswordProfile
$Passwordpolicy.Password = "<password>"
$mail=read-host "enter the user mail"
$nick=read-host "enter the nick name"
if($displayname -and $mail -and $nick)
{New-AzureADUser -DisplayName $displayname -PasswordProfile $Passwordpolicy -UserPrincipalName $mail -AccountEnabled $true -MailNickName $nick}
else
{"some required credentials were missing"}
}
user
do
{
$opt=read-host "would you like to create one more user : 'yes' or 'no'"
if($opt -eq "yes")
{user}
else
{"thank you"}
}
while($opt -eq "yes")
