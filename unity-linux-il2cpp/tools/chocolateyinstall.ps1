$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/418bd0acaa6b/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.13f1.exe'
$checksum64     = '01dd84635f20b80ce138e0a2ba734efe8035054c7e5b539e63c7a420679f2811'

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
