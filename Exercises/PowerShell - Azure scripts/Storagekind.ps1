Connect-AzAccount
$su= Get-AzSubscription | Select-Object -ExpandProperty Name
foreach($sub in $su)
{
$rg= Get-AzResourceGroup | Select-Object -ExpandProperty resourcegroupname
foreach($i in $rg)
{
$sa= Get-AzStorageAccount -ResourceGroupName $i | Select-Object -ExpandProperty StorageAccountName
foreach($n in $sa)
{
$a= (Get-AzStorageAccount -ResourceGroupName $i -Name $n).sku
$name= $a | Select-Object -ExpandProperty Name
$b=  Get-AzStorageAccount -ResourceGroupName $i -Name $n | Select-Object -ExpandProperty kind
$c=  Get-AzStorageAccount -ResourceGroupName $i -Name $n| Select-Object -ExpandProperty AccessTier
$kind = @()
$kind += New-Object psobject -Property @{Storage_Account=$n;SkuName=$name;kind=$b;AccessTier=$c;Resource_group=$i;Subscription=$sub -join ','}
$kind
}
}
}