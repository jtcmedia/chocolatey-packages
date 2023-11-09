$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f90a5ebde0f/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.13f1.exe'
$checksum64     = '02d4252900c7f9aa52b6adb0c5d3997f0d8091e36b96003405892acdebce730a'

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
