cls
$n = Read-Host "Enter the last number"
# For Loop

for ($i = 1; $i -le $n; $i++) {
    Write-Host "For Loop iteration $i"
}

# Foreach Loop

#Retrieving the status of services and selecting only the 'Status' property using piping command

$collection=Get-Service | sort-object status -Descending 
foreach($item in $collection)
{
if($item.status -eq 'running')
 {
  write-host $item.status $item.DisplayName -BackgroundColor yellow -NoNewline
  write-host $item.Name $item.DisplayName -BackgroundColor DarkGreen
  }
  else
  { 
  write-host $item.status : $item.name  : `t $item.DisplayName -BackgroundColor DarkRed
  }
  }

# While Loop

$s = 1
$i = 0
while ($s -le $n) {
    Write-Host $s
    $i += $s
    $s++
}
Write-Host "Sum of first $n natural numbers is $i"

# Do-While Loop

$num = 1
do {
    Write-Host "Do-While Loop iteration $num"
    $num++
} while ($num -le $n)
