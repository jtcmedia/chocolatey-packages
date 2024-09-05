$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a13dfa44d684/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.45f1.exe'
$checksum64     = '89cde8ea5a8119fc408aab1539cbaa21a93b1d3c986930533f0e9e0b58b56182'

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
