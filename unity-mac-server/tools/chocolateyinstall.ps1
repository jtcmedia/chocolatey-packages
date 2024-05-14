$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d9cf669c6271/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.1f1.exe'
$checksum64     = 'c72e27981a5e29a4bfd5a65c60f7056b634a2a2f1a70675cf4d2454f342862c3'

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
