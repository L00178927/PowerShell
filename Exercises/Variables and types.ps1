cls
# Storing different types of variables
$integerVar = 178927
$stringVar = "Vinay Reddy : L00178927"
$floatVar = 3.14
$boolVar = $true
$arrayVar = @(1, 2, 3, 4, 5)
$hashTableVar = @{
    "Name" = "Vinay"
    "Age" = 25
    "Location" = "LetterKenny"
}

# Printing the variables
Write-Host "Integer Variable: $integerVar"
Write-Host "String Variable: $stringVar"
Write-Host "Float Variable: $floatVar"
Write-Host "Boolean Variable: $boolVar"
Write-Host "Array Variable:"
foreach ($item in $arrayVar) {
    Write-Host "  - $item"
}
Write-Host "Hash Table Variable:"
foreach ($key in $hashTableVar.GetEnumerator()) {
    Write-Host "  $($key.Name): $($key.Value)"
    }
