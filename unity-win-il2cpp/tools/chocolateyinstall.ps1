$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/efb8f635e7b1/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.17f1.exe'
$checksum64     = '700a92a3f499eceafc4ece3007e5fc796957cea4e7d7a26509ac5b5b635dbdd2'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
