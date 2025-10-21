$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9992ac36c34/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.2.8f1.exe'
$checksum64     = '8e57351c60770a27e96f806866d7045bd7d4cecee46eb1a95432f4fd23c89fca'

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
