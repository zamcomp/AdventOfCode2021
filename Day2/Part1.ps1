$inputFileContent = Get-Content (Join-Path -Path $PSScriptRoot -ChildPath input.txt)

$x = 0;
$y = 0;


foreach($line in $inputFileContent)
{
    $values = $line.Split(' ')

    switch ($values[0]) {
        "forward"   {$x+=$values[1]}
        "up"        {$y-=$values[1]}
        "down"      {$y+=$values[1]}
        Default {Write-Host "That's not gone well, give it another go."}
    }
}

Write-Host "Horizontal is $($x) and Depth is $($y), so the answer is $($x * $y)"