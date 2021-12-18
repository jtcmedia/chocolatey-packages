$ErrorActionPreference = 'Stop';
$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  softwareName  = 'Tesseract-OCR*'
  fileType      = 'EXE'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

$uninstalled = $false
[array]$key = Get-UninstallRegistryKey -SoftwareName $packageArgs['softwareName']

if ($key.Count -eq 1) {
  $key | % { 
    $packageArgs['file'] = "$($_.UninstallString)"
    Uninstall-ChocolateyPackage @packageArgs

    # Remove Path added by install script
    # from https://gitlab.com/DarwinJS/ChocoPackages/-/blob/master/ec2clitools/tools/chocolateyuninstall.ps1
    $tesseractPath = Join-Path ([Environment]::GetFolderPath("ProgramFiles")) "Tesseract-OCR"
    foreach ($path in [Environment]::GetEnvironmentVariable("PATH","Machine").split(';'))
    {
      If ($Path)
      {
        If (($path -ine "$tesseractPath") -AND ($path -ine "$tesseractPath\"))
        {
          [string[]]$Newpath += "$path"
        }
      }
    }
    $AssembledNewPath = ($newpath -join(';')).trimend(';')

    [Environment]::SetEnvironmentVariable("PATH",$AssembledNewPath,"Machine")
  }
} elseif ($key.Count -eq 0) {
  Write-Warning "$packageName has already been uninstalled by other means."
} elseif ($key.Count -gt 1) {
  Write-Warning "$($key.Count) matches found!"
  Write-Warning "To prevent accidental data loss, no programs will be uninstalled."
  Write-Warning "Please alert package maintainer the following keys were matched:"
  $key | % {Write-Warning "- $($_.DisplayName)"}
}
