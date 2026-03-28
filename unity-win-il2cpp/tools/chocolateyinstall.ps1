$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1f81ff5b082/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.5.0b1.exe'
$checksum64     = 'b8bdad6fb85f93d1bd18041e0b841088975f5e646860e685c1da016f559148a4'

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
