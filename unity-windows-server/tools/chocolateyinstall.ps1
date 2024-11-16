$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/27c554a2199c/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.27f1.exe'
$checksum64     = '3ff83ef75e4a4247cabef048ff4eb2bc270fcd40ac37c9212cd89df326ca4321'

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
