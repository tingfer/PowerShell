#https://www.tutorialspoint.com/powershell/powershell_special_variables.htm

#Write-Host $Env:Path

function EnvPathToFile()
{
    $Env:Path | Out-File -FilePath .\EnvPath.txt
    Start .\EnvPath.txt
}

EnvPathToFile