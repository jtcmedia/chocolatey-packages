$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9636b062134a/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.23f1.exe'
$checksum64     = '1a55ee9ccc223d6656fe774c9341f7e59163e50b87fe03f9c9409c92108ef723'

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
