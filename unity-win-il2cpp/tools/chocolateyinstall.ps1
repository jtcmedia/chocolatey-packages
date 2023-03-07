$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cc571a6ec95/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.9f1.exe'
$checksum64     = 'ec81aff10ffc774c57042f37e78aa189078a2d49f643288fa3383985b9447947'

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
