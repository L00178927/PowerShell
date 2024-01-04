function exporti
{ 
  $opt=read-host "would you like to export the result: yes or no"
   if(!$opt)
   {write-host "no option chosen"
   }
   
   elseif($opt -eq 'yes')
   {
   $fname=read-host "enter the file name you want to export"
 $result | export-csv $fname
 }
 else
 {write-host "thank you"}
 }

cls
Write-Host "Windows operations `n select the operation you want `n 1.service `n 2.eventlog `n 3.process `n 4.Hotfix"
$choice=read-host "enter the operation here"
if(!$choice)
{
  Write-Host "empty input"
}
elseif($choice -in '1','2','3','4')
{
 if($choice -eq '1')
 {
   write-host WORKING WITH WINDOWS SERVICE -backgroundcolor darkcyan -foregroundcolor magenta `n
    $status=read-host "enter running or stop service"
    $display=read-host "which display name you want"
    if(!$status -or !$display)
    {
     Write-Host "empty"
     }
     else
     {
    $result=get-service | where-object{$_.status -eq $status -and $_.displayname -like $display} | Select-Object status,displayname,starttype
    $result | ft status,displayname,starttype 
    ($result).count
    exporti
  }
  }
  elseif($choice -eq '3')
  {
   write-host WORKING WITH WINDOWS process -backgroundcolor cyan -foregroundcolor darkcyan 
   [int]$handle1=read-host "enter the starting range"
   [int]$handle2=read-host "enter the ending range"
   if(!$handle1 -or !$handle2)
   {Write-Host empty input}
   else
   {
   $result=get-process | where-object{$_.handles -gt $handle1 -and $_.handles -lt $handle2} |Select-Object handles,processname,starttype
   $result  | ft handles,processname,starttime 
   ($result).count
   exporti
   }
   }
   elseif($choice -eq '2')
   {
      write-host WORKING WITH WINDOWS EVENTLOG -backgroundcolor darkcyan -foregroundcolor magenta 
     $loname=read-host "enter log name"
       $statime=read-host " enter start time in the format mm/dd/yyyy hh:mm "
    $endtime=read-host "enter end time in the format mm/dd/yyyy hh:mm "
    if(!$loname -or !$statime -or !$endtime)
    {
    Write-Host empty input
    }
    else
    {
     $result=get-eventlog -logname $loname | where-object{$_.timegenerated -gt $statime -and $_.timegenerated -lt $endtime} 
     $result
     ($resukt).count
     exporti
     }
   }
   else  #hotfix
   {
     write-host WORKING WITH WINDOWS hotfix -backgroundcolor magenta -foregroundcolor cyan 
     $hotdate=read-host "give date in the format mm/dd/yyyy hh:mm for hotfix"
     $fthot=read-host "enter parameters you want"
     if(!$hotdate -or !$fthot)
     {
      write-host empty input
      }
      else
      {
     $result=get-hotfix | where-object{$_.installedon -gt $hotdate} |Select-Object $fthot
      $result | ft $fthot
      ($result).count
      exporti   
    }
    }
   }
else
{
 Write-Host "invalid operation. plz select valid operation"
 }