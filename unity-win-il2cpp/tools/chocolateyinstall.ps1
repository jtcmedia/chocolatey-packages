$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/76dd1f94b339/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.4f1.exe'
$checksum64     = '07fa54fa78bcfcf624d1400dfe46a6d37c493c5dfe73e13e4dac76dfcadea395'

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
