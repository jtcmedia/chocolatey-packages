$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7938dd008a75/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.1.8f1.exe'
$checksum64     = '2866711b1be0263c98fd91470c2e25a6dd9fbbeacb5e87403defa3d5601bbac8'

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
