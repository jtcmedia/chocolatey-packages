$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ea398eefe1c2/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.2.2f1.exe'
$checksum64     = '004994f202d7907468980d919749cda20ad3f357884a6226ee538d753f467ee9'

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
