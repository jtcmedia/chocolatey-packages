$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ea152932a88/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.1.0f1.exe'
$checksum64     = '9f4f722f825f39b97ebd13666ace8a080b0617ff0641e81433925510bcfb6748'

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
