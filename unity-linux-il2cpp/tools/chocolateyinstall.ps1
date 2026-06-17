$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88b47c5e7076/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.5.0f1.exe'
$checksum64     = '061ec5c7ccf2c5899cef75830c1bc57a77f7191e3587ea4c85e350ed6ffe0b22'

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
