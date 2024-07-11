$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/340ba89e4c23/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.37f1.exe'
$checksum64     = 'dedf8f49e89d0fcb079d30d6786136a0ee0e2e2c89e6a0622d35917d02cd75ef'

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
