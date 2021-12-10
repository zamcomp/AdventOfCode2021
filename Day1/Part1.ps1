

$inputFileContent = Get-Content (Join-Path -Path $PSScriptRoot -ChildPath input.txt)

$increaseCount = 0;
$currentValue = 0;
$previousValue = [int]$inputFileContent[0].Trim();

for($i = 1; $i -lt $inputFileContent.Length; $i++)
{
    $currentValue = [int]$inputFileContent[$i].Trim();
    if($currentValue -gt $previousValue)
    {
        $increaseCount++;
    }
    $previousValue = $currentValue

}

Write-Host "Number of entries larger than the previous entry is $($increaseCount)"