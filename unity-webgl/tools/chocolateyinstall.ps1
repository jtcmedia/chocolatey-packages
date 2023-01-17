$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c93c5d3acf5b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2022.2.2f1.exe'
$checksum64     = 'ff67b48f61819344cf0f5a6b35743f885cfe06ce64ea448e7fd6c786a0c3760e'

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
