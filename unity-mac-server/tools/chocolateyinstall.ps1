$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7d0df0160b/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.10f1.exe'
$checksum64     = 'b69951e277633db4674f0f6abc15f070aff0bc6380cf6f105d1511e57402344b'

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
