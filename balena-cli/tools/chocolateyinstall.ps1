$ErrorActionPreference = 'Stop';
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"

$packageArgs = @{
  packageName   = $env:ChocolateyPackageName
  fileType      = 'EXE'
  file64        = Get-Item "$toolsDir\*_x64.exe"
  softwareName  = 'balena-cli'
  silentArgs   = '/SD IDOK'
  validExitCodes= @(0)
}

Install-ChocolateyInstallPackage @packageArgs

Remove-Item ($toolsDir + '\*.' + $packageArgs.fileType)
