$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b5238eaafb35/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.0b5.exe'
$checksum64     = 'd32042fa5408bd32eca589fdee0d98425cc9df2b9b7852bcbd651d0f57244991'

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
