
<#
.Synopsis

Know who is currently logged into a remote host
#>

While ($true)
{

Write-Host -NoNewline "Please enter a computer name: "

$comp = Read-Host

if ($comp -ne "exit")
    {
        gwmi Win32_ComputerSystem -Property Username -ComputerName $comp | fl Username 
    }

else
    {
        break
    }
}
