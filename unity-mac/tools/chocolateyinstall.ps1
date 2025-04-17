$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ad1ed33fd3b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.47f1.exe'
$checksum64     = '3eb5ce66c60d1dba6f4c0c7efbe32d1b617d6a082ca476d252fc9add8fee21e6'

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
