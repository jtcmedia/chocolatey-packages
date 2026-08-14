$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ada23e432bd/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.0b8.exe'
$checksum64     = '3b6c1dd87d1f7e6cb495a664ed68f14ff6d79c98654b7b3f172ef9519ed3e19e'

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
