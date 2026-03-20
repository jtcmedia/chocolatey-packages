$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/253a859729df/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.5.0a9.exe'
$checksum64     = 'eb20b30a1797f3500ab5629ed3f781c88eadef1f7fe20f5bbc00b99faa9e809d'

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
