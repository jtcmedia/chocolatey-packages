$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ea152932a88/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.1.0f1.exe'
$checksum64     = '3d206ab9e2fbcb7403be045ce1d73c85f3be82066aa41fcf46ef7f0a7f7e21bf'

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
