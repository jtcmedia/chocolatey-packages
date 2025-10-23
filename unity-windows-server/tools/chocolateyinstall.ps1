$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e0c4e791ab71/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.9f1.exe'
$checksum64     = '27b4bd964333b2354225c09e87677fe9b1f5c3f55679b83c6133b90e073979c7'

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
