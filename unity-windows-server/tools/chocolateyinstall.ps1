$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e7b9b5b6244/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.3.24f1.exe'
$checksum64     = '4711d32a687801198e1d602f5cb820279be003365b3e9f91aa46f75edbfd604f'

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
