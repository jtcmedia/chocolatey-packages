$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5c3a1087d8e4/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.5.11f1.exe'
$checksum64     = '64ffb7b8c9b6765c47f9affa8d064a47cfb2a400ee020368ff609ea645ec9136'

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
