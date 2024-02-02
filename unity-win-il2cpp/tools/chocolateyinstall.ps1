$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/244b723c30a6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.19f1.exe'
$checksum64     = 'fcd29f1b2344479e2b6ea8f0ecfdf2b2a06ca0a88d86a18e35f154a0eaf20a68'

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
