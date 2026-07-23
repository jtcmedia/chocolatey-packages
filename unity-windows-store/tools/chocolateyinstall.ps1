$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5238eaafb35/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.0b5.exe'
$checksum64     = 'd50414aca45445682bcb60d64be248b80feceb7cac91a1b35c84c2568cb9a0ca'

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
