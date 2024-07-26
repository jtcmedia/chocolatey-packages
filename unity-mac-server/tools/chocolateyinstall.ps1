$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7defd84cdab8/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.12f1.exe'
$checksum64     = '1878c78fb3e6de320674527777cb5f73f2bf9b5b3879721a3445ac13c85aeccf'

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
