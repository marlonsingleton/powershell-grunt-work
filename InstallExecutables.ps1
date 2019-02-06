
<#
.Synopsis
Base code used to install software remotely.    
#>

$creds = Get-Credential

$a = New-Pssession -ComputerName "NameHere" -Credential $creds

Invoke-Command -Session $a -ScriptBlock {

Start-Process -FilePath "PathToYourExecutable"

}
