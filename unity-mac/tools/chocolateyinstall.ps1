$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/56df1dd3b76d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0a4.exe'
$checksum64     = 'b1afe7c8351c8f5139f3b86b7543381a8a315965639e515d53d4ab2fb03b2cc9'

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
