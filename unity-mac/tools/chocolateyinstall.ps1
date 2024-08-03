$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/53a692e3fca9/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.13f1.exe'
$checksum64     = 'abcbb95cfac1fcacd2cf3158202226751bb5467475eaa5ff3ddc77c147acc1c5'

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
