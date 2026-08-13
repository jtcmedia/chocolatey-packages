$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5cb7df797b7d/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.8f1.exe'
$checksum64     = '90a96895860ad2fdf78156b896ca0de4156b6553dbaa8f8cd83623a60baa8a81'

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
