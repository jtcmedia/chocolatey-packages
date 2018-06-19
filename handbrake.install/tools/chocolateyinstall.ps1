$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$fileLocation = Get-Item "$toolsDir\*_x64.exe"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  file          = $fileLocation
  fileType      = 'EXE'
  softwareName  = 'HandBrake*'
  silentArgs    = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item ($toolsDir + '\*.' + $packageArgs.fileType)
