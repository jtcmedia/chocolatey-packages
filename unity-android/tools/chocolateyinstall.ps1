$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dbb3f7c5b5c6/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.23f1.exe'
$checksum64     = 'c386ae6d82239f2e9d12b0d23cc1cb002ce8f8613fd0b2258254648d72494910'

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
