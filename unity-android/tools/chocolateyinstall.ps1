$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/696ec25a53d1/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.3.7f1.exe'
$checksum64     = '43f5a9abe68ffad291fbd01f89acf0da575b80fa061fda5cd4696552601c2e79'

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
