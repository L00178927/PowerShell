cls
write-host " enter the option that which operation want to be performed"
write-host " 1.addition `n 2.subtraction `n 3.multiplication `n 4.division"
 
$choice=read-host "enter the choice here"

if($choice -in 1,2,3,4)
{
  [int]$a=read-host "enter first number"
   [int]$b=read-host "enter second number"
 switch($choice) 
 {

1 #if($choice -eq 1)
{
  $d=$a+$b
  Write-Host " sum of $a and $b is $d"
}
2 #elseif($choice -eq 2)
{
 $e=$a-$b
 write-host "diff of $a and $b is $e"
 }
 3 #elseif($choice -eq 3)
 {
   $f=$a*$b
   write-host "product of $a and $b is $f"
 }
4 #elseif($choice -eq 4)
  {
  if($b -eq 0)
  { write-host "Denominator should not be zero for division"
  }
   }
 else
  {
  $g=$a/$b
  write-host "division of $a and $b is $g"
  }
  }
 }

else
{
  write-host "invalid input. plz select in 1-4 options"
}