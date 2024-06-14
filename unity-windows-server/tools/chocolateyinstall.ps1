$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/17028576122a/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.5f1.exe'
$checksum64     = '7127e4f379adf592c56334073c7998378f5baa3564a3880c425e6f87bc1f5e80'

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
