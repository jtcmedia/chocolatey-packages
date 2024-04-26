$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ec6cd8118806/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.26f1.exe'
$checksum64     = '49d8d8d568735bd6e9083c16712f25f88e9bef185482e652ed9b8a8058dd0058'

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
