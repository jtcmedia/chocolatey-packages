$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b6f2b893ea32/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.1.25f1.exe'
$checksum64     = '560643f3dc98c77d35ce7f7e2b89d2c872eb38c94fbedbe5cc49632859f095da'

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
