$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/21747dafc6ee/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2023.2.3f1.exe'
$checksum64     = '811ba43ecf69d26d7f8d42e4f5d1928ed4bd1ca33442041dd90fb52b86b8d98a'

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
