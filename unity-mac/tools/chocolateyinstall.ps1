$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1cd6601d4c1/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0b5.exe'
$checksum64     = '581bd3db9bc9360b3b4b8be8e8f53b3e49ea8db039bf89c377b62f4d85680598'

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
