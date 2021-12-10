

$inputFileContent = Get-Content (Join-Path -Path $PSScriptRoot -ChildPath input.txt)

$increaseCount = 0;
$currentValue = 0;
$previousValue = [int]$inputFileContent[0].Trim() + [int]$inputFileContent[1].Trim() + [int]$inputFileContent[2].Trim();

for($i = 3; $i -lt $inputFileContent.Length; $i++)
{
    $currentValue = [int]$inputFileContent[$i].Trim() + [int]$inputFileContent[$i - 1].Trim() + [int]$inputFileContent[$i - 2].Trim();
    if($currentValue -gt $previousValue)
    {
        $increaseCount++;
    }
    $previousValue = $currentValue

}

Write-Host "Number of entries larger than the previous entry is $($increaseCount)"