cls
# Define variables for comparison
$number1 = 10
$number2 = 5
$number3 = 10

# Greater than (-gt)
Write-Host "Greater Than (-gt)"
Write-Host "Number1 greater than Number2: $($number1 -gt $number2)"
Write-Host "Number1 greater than Number3: $($number1 -gt $number3)"

# Greater than, case-insensitive (-igt)
Write-Host "Greater Than, Case-Insensitive (-igt)"
Write-Host "Text1 greater than Text2: $('Text' -igt 'text')"
Write-Host "Text1 greater than Text2: $('Text' -igt 'text123')"

# Greater than, case-sensitive (-cgt)
Write-Host "Greater Than, Case-Sensitive (-cgt)"
Write-Host "Text1 greater than Text2: $('Text' -cgt 'text')"
Write-Host "Text1 greater than Text2: $('Text' -cgt 'Text')"

# Greater than or equal (-ge)
Write-Host "Greater Than or Equal (-ge)"
Write-Host "Number1 greater than or equal to Number2: $($number1 -ge $number2)"
Write-Host "Number1 greater than or equal to Number3: $($number1 -ge $number3)"

# Greater than or equal, case-insensitive (-ige)
Write-Host "Greater Than or Equal, Case-Insensitive (-ige)"
Write-Host "Text1 greater than or equal to Text2: $('Text' -ige 'text')"
Write-Host "Text1 greater than or equal to Text2: $('Text' -ige 'Text')"

# Greater than or equal, case-sensitive (-cge)
Write-Host "Greater Than or Equal, Case-Sensitive (-cge)"
Write-Host "Text1 greater than or equal to Text2: $('Text' -cge 'text')"
Write-Host "Text1 greater than or equal to Text2: $('Text' -cge 'Text')"

# Less than (-lt)
Write-Host "Less Than (-lt)"
Write-Host "Number1 less than Number2: $($number1 -lt $number2)"
Write-Host "Number1 less than Number3: $($number1 -lt $number3)"

# Less than, case-insensitive (-ilt)
Write-Host "Less Than, Case-Insensitive (-ilt)"
Write-Host "Text1 less than Text2: $('Text' -ilt 'text')"
Write-Host "Text1 less than Text2: $('Text' -ilt 'text123')"

# Less than, case-sensitive (-clt)
Write-Host "Less Than, Case-Sensitive (-clt)"
Write-Host "Text1 less than Text2: $('Text' -clt 'text')"
Write-Host "Text1 less than Text2: $('Text' -clt 'Text')"

# Less than or equal (-le)
Write-Host "Less Than or Equal (-le)"
Write-Host "Number1 less than or equal to Number2: $($number1 -le $number2)"
Write-Host "Number1 less than or equal to Number3: $($number1 -le $number3)"

# Less than or equal, case-insensitive (-ile)
Write-Host "Less Than or Equal, Case-Insensitive (-ile)"
Write-Host "Text1 less than or equal to Text2: $('Text' -ile 'text')"
Write-Host "Text1 less than or equal to Text2: $('Text' -ile 'Text')"

# Less than or equal, case-sensitive (-cle)
Write-Host "Less Than or Equal, Case-Sensitive (-cle)"
Write-Host "Text1 less than or equal to Text2: $('Text' -cle 'text')"
Write-Host "Text1 less than or equal to Text2: $('Text' -cle 'Text')"
