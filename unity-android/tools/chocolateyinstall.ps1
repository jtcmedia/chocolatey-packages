$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9492f7722ddd/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2023.1.14f1.exe'
$checksum64     = '3aecd8d1de5565344f2758ece1dfa9f21212536c7750d154a12451b0c30b3691'

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
