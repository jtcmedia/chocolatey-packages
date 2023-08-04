$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4f4e359ec3fc/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.1.7f1.exe'
$checksum64     = '0ba8bb4805ffddd5c5459447fb345241590b0fd6bb40d53239ed3d0572346e1d'

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
