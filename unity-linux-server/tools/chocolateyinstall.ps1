$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/237b6593792b/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.6.8f1.exe'
$checksum64     = '9399ea2b81457da3d3115af5681da2d6ac3ff7b3670a322f33b3ca9b0c6797dc'

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
