$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/21747dafc6ee/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.3f1.exe'
$checksum64     = '4313b7af98fa2ab222f5655943d16d37c6522e5c5de7992025d3a396ecd22ece'

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
