$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/75bff06b76bf/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2020.3.43f1.exe'
$checksum64     = '542e04d9386a1f2014f4eb7788069070f1e34b782a2c9c4cbfbdb57ae986549d'

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
