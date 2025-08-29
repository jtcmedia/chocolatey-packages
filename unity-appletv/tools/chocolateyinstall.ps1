$ErrorActionPreference = 'Stop';

$packageName    = 'unity-appletv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ea398eefe1c2/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-6000.2.2f1.exe'
$checksum64     = '87ed0fd8ddb7e2784a9f20703e19883af55010595d4fb2d701f1a59d9482d43d'

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
