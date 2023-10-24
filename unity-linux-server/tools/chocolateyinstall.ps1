$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b84c4024cd38/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.17f1.exe'
$checksum64     = 'e6e734b6d42d4bf129365f10dddeff62824996c887df4feb6394e1dbbf2be94c'

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
