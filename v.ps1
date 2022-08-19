$currentDir = Get-Location
$solutionsInCurrentDir = @(Get-ChildItem $currentDir | Where-Object { $_.Name.EndsWith("sln")})
if ($solutionsInCurrentDir)
{
    Start-Process $solutionsInCurrentDir[0]
}
else 
{
    $childDirs = Get-ChildItem -Directory $currentDir

    Foreach($childDir in $childDirs)
    {
        $secondLevelSolutions = @(Get-ChildItem $childDir | Where-Object { $_.Name.EndsWith("sln")})

        if ($secondLevelSolutions) {
            $solutionFullPath = $secondLevelSolutions[0]
            Start-Process $solutionFullPath
            break
        }
    } 
}