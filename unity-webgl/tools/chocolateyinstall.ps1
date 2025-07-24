$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/418bd0acaa6b/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.1.13f1.exe'
$checksum64     = '497c0e185304eac2067fe6c302f1168903fa0d0c7031b994530bf56550146cca'

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
