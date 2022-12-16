$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4016570cf34f/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.16f1.exe'
$checksum64     = '493079f1ab54314f9f4ac5c246f0584454221e90f0648722e8d871cdb2c1cd54'

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
