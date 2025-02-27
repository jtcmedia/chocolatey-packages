$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/da872d7b2f71/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.1.0b8.exe'
$checksum64     = '62ce678a09eba6dc189c21d3501ed940389aaa0ce0060548159a016598c6f37d'

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
