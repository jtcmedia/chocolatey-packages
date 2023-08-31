$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fbf46ad88f3d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2023.1.11f1.exe'
$checksum64     = 'b2bb97308af032afa5c377b7d39cb752c6a040f9c4baad5131d390730cc3ebf9'

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
