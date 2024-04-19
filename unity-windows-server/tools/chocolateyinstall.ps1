$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/530ae0ba3889/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.25f1.exe'
$checksum64     = 'c91f9dabdb82b08e2aa836319980a9ff8e346bce4bbe9d2c3260ce924ef34b5f'

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
