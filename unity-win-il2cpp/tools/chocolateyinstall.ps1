$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1cd6601d4c1/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.0b5.exe'
$checksum64     = '24cde5c474f7a01e4b9aac46edf9007a667f0f3be99910d0c51a380af7781fcc'

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
