$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7da38d85baf6/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.6f1.exe'
$checksum64     = '640f2e3dfc843bb443efda159d78d1b12cca446e79ee6abed6ea9c76f6290879'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
