$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/996aee41dc57/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.8f1.exe'
$checksum64     = 'dba7d2e1b53f3c5ebaf0c7dafc4a4bac84533b1c870f5f2014cabc36780420fc'

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
