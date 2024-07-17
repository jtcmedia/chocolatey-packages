$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5d5a7410213/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2022.3.38f1.exe'
$checksum64     = 'dbbd81aaa0842f49bae9dad45dbc6150ca82613b37bd07f65533053da0defc06'

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
