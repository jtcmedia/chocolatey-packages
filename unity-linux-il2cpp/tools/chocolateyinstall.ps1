$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cc51a95c0300/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.6f1.exe'
$checksum64     = '71bbb99b096b1180f44abd0fe75ba3a2bb7358644e016d160f9f6c8fc19f881b'

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
