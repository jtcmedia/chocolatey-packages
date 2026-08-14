$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ada23e432bd/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0b8.exe'
$checksum64     = '42ba63bd10706d3ec8f72af406a4bd958dc85e9f0a3b3406172028ed08f397f6'

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
