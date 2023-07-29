$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/204d6dc9ae1c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.29f1.exe'
$checksum64     = '0943fbdbc80223ad33737362f3a8bccd06ae826e8e6a2d1770c9eac78d2b35bc'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
