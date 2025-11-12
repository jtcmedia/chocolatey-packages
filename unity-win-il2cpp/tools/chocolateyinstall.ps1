$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7134d7685e5d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.11f1.exe'
$checksum64     = '7d4de7423863ea9c321ea03f5fdfdc61496ee52e5fad608de8ef55f7e86a2ac7'

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
