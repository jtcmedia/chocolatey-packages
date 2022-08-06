$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/916d9c03b898/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.1.12f1.exe'
$checksum64     = '2ce765a5c78588256c1b965a213f162391665833adb6be7f78480b0a7f3b60b3'

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
