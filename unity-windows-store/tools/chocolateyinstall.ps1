$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/45d8eee7de74/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.6.3f1.exe'
$checksum64     = 'ff139582a03fae1ec6ce18a7260054bfa0f9237d127957e1339daab198f853e5'

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
