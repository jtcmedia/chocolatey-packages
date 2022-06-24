$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e49a51cf6290/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.1.6f1.exe'
$checksum64     = '4e597d5f0fb3b488ec5500a1c8c31ab4b981933d8445bf1c8c9bcf629a746bf0'

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
