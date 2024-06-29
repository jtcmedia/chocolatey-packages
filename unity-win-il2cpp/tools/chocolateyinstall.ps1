$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa7102f01711/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.8f1.exe'
$checksum64     = 'bb96fbe4fdd97b706e0446b69c98d7aeb84d76799a39a7f545f039e687c8a1dd'

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
