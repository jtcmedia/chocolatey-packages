$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cf7ddae6c717/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.6.0b3.exe'
$checksum64     = '21211b29d9d3469c43db938f01126e8fc6d0090387170f840d6567186185e68a'

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
