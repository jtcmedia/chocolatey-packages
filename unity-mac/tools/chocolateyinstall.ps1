$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/f57a55ac740d/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.2.0b7.exe'
$checksum64     = 'f4a99ae8897529d2bc8d1489e73028de7ff5515a8106e5ac74718475731437b3'

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
