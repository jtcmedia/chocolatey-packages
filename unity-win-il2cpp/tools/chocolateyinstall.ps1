$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fb119bb0b476/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.0f1.exe'
$checksum64     = 'f776327601bc0f54bc1608bd9ab2bbf927e61e36930b9672c94dfead35a5f275'

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
