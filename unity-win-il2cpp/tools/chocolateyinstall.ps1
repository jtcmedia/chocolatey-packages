$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/530ae0ba3889/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.25f1.exe'
$checksum64     = '8b3cd16e9259cd38232ead80e42d4fbe3d517adbd4a9c37a0d3a1529133dd6c6'

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
