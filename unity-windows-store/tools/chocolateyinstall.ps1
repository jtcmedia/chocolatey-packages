$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/611a2ee54063/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.1.4f1.exe'
$checksum64     = 'd95feb5afc946242ea81abea82658240a79e458ec01da709afbb495da93f5a7f'

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
