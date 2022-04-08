$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/915a7af8b0d5/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.3.33f1.exe'
$checksum64     = '3b8ed0b92edaa5586df72ed771f50f2b05a44ad2f2eb3468a54658d2c2552985'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
