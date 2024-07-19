$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa01dd6b76d5/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.11f1.exe'
$checksum64     = 'e65dc0a5b1e653076089df0701ea3d4f0410ede1cb0f78c13e8512b3af1ea1b0'

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
