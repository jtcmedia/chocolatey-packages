$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4859ab7b5a49/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.25f1.exe'
$checksum64     = 'a041b3968f780dece0a7151ce7b0ac45dd91e3b7b3e6318ca0a75566f860f8c3'

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
