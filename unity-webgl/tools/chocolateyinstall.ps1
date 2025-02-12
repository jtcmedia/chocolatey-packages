$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ed7f6eacb62e/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.3.58f1.exe'
$checksum64     = '4f22a997e6c63f1d9eeca97b3ae620238f330fabeef4995997936090dddecfdc'

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
