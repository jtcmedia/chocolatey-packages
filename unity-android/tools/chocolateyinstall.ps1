$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d6360bedb9a0/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2021.3.2f1.exe'
$checksum64     = '7d96b12e926df7a98e3aac0ead9c1ae7ff498a0b666299361c75a30a8f1f4f1b'

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
