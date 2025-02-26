$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157d81624ddf/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.40f1.exe'
$checksum64     = 'b1c1f18d83f17957e804721294cc14fffd491ca557343b48764c6c26b5832699'

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
