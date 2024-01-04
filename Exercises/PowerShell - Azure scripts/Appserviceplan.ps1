$su= Get-AzSubscription | Select-Object -ExpandProperty Name
foreach($sub in $su)
{
$rg= Get-AzResourceGroup | Select-Object -ExpandProperty resourcegroupname
foreach($i in $rg)
{
$apser=Get-AzAppServicePlan -ResourceGroupName $i | Select-Object -ExpandProperty Name
foreach($n in $apser)
{ 
$a=(Get-AzAppServicePlan -ResourceGroup $i -Name $n).Sku.Name
$b=(Get-AzAppServicePlan -ResourceGroup $i -Name $n).Sku.Tier
$c=(Get-AzAppServicePlan -ResourceGroup $i -Name $n).Sku.Size
$d=(Get-AzAppServicePlan -ResourceGroup $i -Name $n).Sku.Capacity
$output = @()
$output += New-Object psobject -Property @{AppService=$n;Name=$a;Tier=$b;Size=$c;Capacity=$d}
$output | Export-Csv C:\Users\vibhimir\serplan.csv -Append -NoTypeInformation
}
}
}