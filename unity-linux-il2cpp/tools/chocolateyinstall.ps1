$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1aa84e375f6/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.3.15f1.exe'
$checksum64     = 'be82cef193f0e4c46cfa91dff56dc56b7c6cdbc8eb8a56d41f9ebd861057f301'

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
