$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9a3bc604008a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.35f1.exe'
$checksum64     = '7005230fd3fc4ae2f939337493b742c08c85cac180f3cae74642364c894eb1e1'

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
