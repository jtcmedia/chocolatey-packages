$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb93bc360d3a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.46f1.exe'
$checksum64     = '604e80d752eec4690c4e4aca12143916ad7721b9c5d5e26df162ed27b2f23691'

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
