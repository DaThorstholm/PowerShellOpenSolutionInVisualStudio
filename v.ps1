$currentDir = Get-Location
$solutionsInCurrentDir = @(Get-ChildItem $currentDir | Where-Object { $_.Name.EndsWith("sln")})
if ($solutionsInCurrentDir)
{
    Start-Process $solutionsInCurrentDir[0]
}
else 
{
    $childDirs = Get-ChildItem $currentDir

    Foreach($childDir in $childDirs)
    {
        $secondLevelDir = Join-Path $currentDir $childDir -Resolve
        $secondLevelSolutions = @(Get-ChildItem $secondLevelDir | Where-Object { $_.Name.EndsWith("sln")})

        if ($secondLevelSolutions) {
            $solutionFullPath = Join-Path $childDir $secondLevelSolutions[0] -Resolve
            Start-Process $solutionFullPath
            break
        }
    } 
}