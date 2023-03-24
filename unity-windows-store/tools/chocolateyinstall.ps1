$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/022dac4955a3/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.2.12f1.exe'
$checksum64     = 'e4f14604b9e791ad52dfd5ab255b5fa80499df49ab6fe37019c91af46ebb02ed'

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
