$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/55300504c302/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.2.1f1.exe'
$checksum64     = '61a41362315a520e777296a6a64248302c3c63d487a82321b90a8e3f6b5d89ed'

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
