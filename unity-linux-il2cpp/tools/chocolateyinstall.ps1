$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/253a859729df/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.0a9.exe'
$checksum64     = '70ca472a4adfd6675763f2a7f835d49a3765d3c1054e558c3af72840849dcb28'

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
