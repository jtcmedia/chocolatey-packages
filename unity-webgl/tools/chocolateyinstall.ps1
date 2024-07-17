$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5d5a7410213/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.38f1.exe'
$checksum64     = '85fde781ae41f5781b0f110744121bf901f101013b3b606d83f236c52ea65c9c'

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
