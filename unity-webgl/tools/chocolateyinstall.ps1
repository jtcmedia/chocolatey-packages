$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/10bfa6201ced/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.2.6f1.exe'
$checksum64     = '466a72395cec753cf35b4937ab80247f593762ae74de86d75cd159d710d308e9'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
