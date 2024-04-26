$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ec6cd8118806/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.26f1.exe'
$checksum64     = '953c02be1a07d45d0246f058a3f81a27c30b30599cd4c794cf0e2a6c7333c253'

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
