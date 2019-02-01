<#
.Synopsis
Locate distribution groups with restricted senders

.Notes
Exchange Shell Module required
#>

Get-DistributionGroup -OgranizationalUnit "Domain" | where \
{ $_.acceptmessagesonlyfrom -ne $null } | fl displayname, \
acceptmessagesonlyfrom

