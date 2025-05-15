$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f34db9734971/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.1.3f1.exe'
$checksum64     = '7e4fb39e36823dfe5740a067457d8454c3b01c16b8418aaaad1de70679b750be'

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
