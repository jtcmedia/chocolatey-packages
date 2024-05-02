$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4ff56b3ea44c/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.0f1.exe'
$checksum64     = '3e67f74a88cd0214488813f20ef53d89ecbfefe8ce13c95d8cb013b16de3a800'

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
