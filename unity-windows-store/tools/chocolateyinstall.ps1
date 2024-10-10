$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3db7f8bf9b1/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.50f1.exe'
$checksum64     = 'd08959cd4e414fa03201ed4f0fc43c06567aa7cb6ad1b7fce917e6faf2ff4a22'

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
