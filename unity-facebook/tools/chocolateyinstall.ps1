$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ff5b465c8d13/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.2.8f1.exe'
$checksum64     = 'd420472f9b569034e4dd3319d3bd878fa1085a4a796c551229cbc2425af65c49'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
