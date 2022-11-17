$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9636b062134a/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.1.23f1.exe'
$checksum64     = 'f43ac6534f5cb9c985479a8a1a8b7279cfd69dd9d64ce0eb77b18c89bd13faba'

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
