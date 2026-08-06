$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/017862109af0/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.5.7f1.exe'
$checksum64     = 'e8554631cd0f0e769564ee1c6a6eda8ea74bebf4761b3dcc5bd0de0f1c2757a2'

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
