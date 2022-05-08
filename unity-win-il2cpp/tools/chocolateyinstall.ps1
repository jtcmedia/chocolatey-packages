$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d6360bedb9a0/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.2f1.exe'
$checksum64     = 'cb8a4daa60a02a8511d0ff3944984e0c4c11ef6e03db6e955f847bbe3c2342dc'

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
