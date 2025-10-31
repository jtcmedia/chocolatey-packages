$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/74a0adb02c31/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.61f1.exe'
$checksum64     = '18c4dbda24413b1741e5b8c5ec423f8061cc566ec1cefe0aacb1ae683b95c128'

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
