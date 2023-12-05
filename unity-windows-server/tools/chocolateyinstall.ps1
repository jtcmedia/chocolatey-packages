$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/dfe9eb92cac5/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.2f1.exe'
$checksum64     = '7ff9e9b0b155aebcdb9b25f8a9df771804e6d3fd5a69e8fcceb7af18ed0d1e11'

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
