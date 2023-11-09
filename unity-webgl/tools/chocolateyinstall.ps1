$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f90a5ebde0f/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.13f1.exe'
$checksum64     = '52a7dfa5772fa7d50b8afbe25de0b547213b375482cceb9e3421342abe9658bb'

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
