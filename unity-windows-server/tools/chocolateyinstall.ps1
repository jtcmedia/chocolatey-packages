$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a091f9adba4/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.1.18f1.exe'
$checksum64     = 'eaad8db50b2516d4df11a0b0e6b42aa275a22ed53165c28e8d9c52a55970e26a'

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
