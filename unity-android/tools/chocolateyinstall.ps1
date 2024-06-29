$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fa7102f01711/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.8f1.exe'
$checksum64     = 'ecaa2efdc2afa08f63e0319736fa35b6a866264076d1a953356b0d8eb61447da'

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
