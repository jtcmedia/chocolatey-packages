$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3ff58d469c8a/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.5f1.exe'
$checksum64     = 'c452b8940547f04c9f0be62402741577ac9c57d7f8656131fe6c8904c300e0d0'

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
