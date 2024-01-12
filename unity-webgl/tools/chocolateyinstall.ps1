$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/381b4941466e/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2023.2.5f1.exe'
$checksum64     = '6c3affabee6652a67634569ed1c29bdc256ed12e589ca145c47ab89a455803e4'

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
