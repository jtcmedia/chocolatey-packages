$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0a9195b3d453/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.2.7f1.exe'
$checksum64     = '32f9478e7221e554d785f410fb90ed9d5da0e730743b62f4cd4341dfa6c8d7fd'

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
