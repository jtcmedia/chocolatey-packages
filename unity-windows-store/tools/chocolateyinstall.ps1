$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7d0df0160b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2021.3.10f1.exe'
$checksum64     = '3695e6e4def2cf7583800c0264287c0a4faad77ab274d292efb8b4c297827b7d'

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
