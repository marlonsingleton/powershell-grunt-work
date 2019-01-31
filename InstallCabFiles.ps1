<#
.Synopsis
Base code used to install .cab files.    
#>

$creds = Get-Credential

$a = New-Pssession -ComputerName "NameHere" -Credential $creds

Invoke-Command -Session $a -ScriptBlock {

dism.exe /Online /Add-Package /PackagePath:"PathNameHere.cab"

}
