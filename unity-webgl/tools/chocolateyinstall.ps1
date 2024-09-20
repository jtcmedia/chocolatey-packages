$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/05208a74e9aa/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.20f1.exe'
$checksum64     = 'a287133c8027f12b66c8af790e78a307b488ad1ad0b570fad60e0d3ea1bf973e'

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
