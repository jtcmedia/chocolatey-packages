$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ffeab063bb93/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.13f1.exe'
$checksum64     = 'a8726cf794f6f4338ba5f4fe00548e18833967cc071aec36cac663115c01ee19'

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
