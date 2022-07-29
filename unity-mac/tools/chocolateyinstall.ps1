$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/24e8595d6d43/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2021.3.7f1.exe'
$checksum64     = 'd218ccf40ab7da7174f1b751ba34361d33be4c196a525c8ad02d8a2e9142abef'

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
