$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/0f988161febf/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.3.41f1.exe'
$checksum64     = 'c1d3fb8fcc397e9e3dbb2343c19f8b3c1a71a64ac67fc40d89b843ecaf7bafa6'

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
