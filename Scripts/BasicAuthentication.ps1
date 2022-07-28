
#Combine the username and Password. ${user} stores the username and ${Pass}
$pair = "${user}:${pass}" 
#Base64Encoding of the username and password
$bytes = [System.Text.Encoding]::ASCII.GetBytes($pair)
$base64 = [Convert]::ToBase64String($bytes)
$encodedCredentials = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes($pair))
write-host ( " the pair value is as follow {0}" -f $encodedCredentials ) 

#Creatingtheheader
$headers
$Accept = "application/json"
$headers = @{ "Authorization" ="Basic $base64"; "aw-tenant-code"=$tenant1; "Content-Type"='application/json' ; "Accept"= "application/json"} 

#Defining temporary variables
$array1 = @()

#Defining URL that have to be accessed.
$url= 'https://XXXX.XXXX.com/api/'
$Output = Invoke-RestMethod -uri $urlbase -Method Get -Headers $headers -UseBasicParsing 

