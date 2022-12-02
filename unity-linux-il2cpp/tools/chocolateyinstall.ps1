$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e8e88683f834/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.15f1.exe'
$checksum64     = 'ff5443766a9a45aedfa00aa26b9eebf79b4d4126bae40575835d21e23c60b2ac'

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
