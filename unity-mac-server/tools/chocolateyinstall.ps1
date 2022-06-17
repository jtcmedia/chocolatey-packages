$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feea5ec8f162/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.5f1.exe'
$checksum64     = 'ae61194aab9f2d5a51cba29491dbd46f6b3e4c92e9de078c7f4ee349b51b7f7b'

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
