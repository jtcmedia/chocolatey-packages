$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5c3a1087d8e4/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.11f1.exe'
$checksum64     = '7d033fa392acb174f85bf33ffe7685536e5127a933106f4b6252924a1896b2ed'

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
