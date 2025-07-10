$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9b156bbbd4df/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.11f1.exe'
$checksum64     = '7bfc803b77dc5c57ebc3e2484c798234e040da00ab65c3438029a13fdae67af3'

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
