$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4907324dc95b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.2.21f1.exe'
$checksum64     = 'dfa2b2d465f223a38a5c341f26cf99d5ab3a1f42eb79bb6c146d9cd618f5f506'

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
