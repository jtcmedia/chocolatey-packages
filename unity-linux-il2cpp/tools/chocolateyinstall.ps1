$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d64b1a599cad/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.6f1.exe'
$checksum64     = 'db91f21758464447530af268e3febc4df27f9377d2bb6b23239c22e4d096d79a'

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
