$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7197418f847b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.1.1f1.exe'
$checksum64     = '3657a367b60f45ca01a9737e926c71c29781a28ce32bca6f6fbf8c5d08206a0e'

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
