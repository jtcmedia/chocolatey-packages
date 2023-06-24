$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/46620eadcc07/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.1.1f1.exe'
$checksum64     = '65b0607ef7b3027434461895a4ac2f9440d2619d6c579f2a3821a328141cb079'

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
