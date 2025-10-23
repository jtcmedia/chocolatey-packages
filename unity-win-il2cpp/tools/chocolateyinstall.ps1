$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e0c4e791ab71/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.9f1.exe'
$checksum64     = '87de1b1772d7273fb75bfafc06844a2320aa7bb64cc44517a0352853d8703946'

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
