$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4504a57e80f0/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0b3.exe'
$checksum64     = 'd7b08303b73cc03bc2e1e171b6f8a2e2b4691849cde30691c41085a72b96426d'

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
