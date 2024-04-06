$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dbb3f7c5b5c6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.23f1.exe'
$checksum64     = '998764aefeab40b8b70bb145f99d608d3ccb82d63538577641bc901169bc7fb4'

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
