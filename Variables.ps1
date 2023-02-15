#https://www.tutorialspoint.com/powershell/powershell_special_variables.htm

#Write-Host $Env:Path

function EnvPathToFile()
{
    $Env:Path | Out-File -FilePath .\EnvPath.txt
    Start .\EnvPath.txt
}
#EnvPathToFile

function EnvPathSplit()
{
    $eachPath = $Env:Path -split ";"
    $eachPath
}
#EnvPathSplit

function EnvPathInclude()
{
    param([String]$Exe)
    EnvPathSplit | select-string $Exe
}
EnvPathInclude "ImageMagick"