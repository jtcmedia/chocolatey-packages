$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6a1e21c61430/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-2023.2.11f1.exe'
$checksum64     = 'b529a85c487821bb890f83c826adfce44e3294a4c6ffdfbe108585868f71ca9b'

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
