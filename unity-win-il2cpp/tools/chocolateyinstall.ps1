$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a0645017be0/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.3.36f1.exe'
$checksum64     = 'e1e4f7370acba0fb26ddbdacb45932e99a3ec3fe7548046981db1fa33f5cff00'

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
