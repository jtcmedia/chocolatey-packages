$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bec83302551e/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.6.0b1.exe'
$checksum64     = 'b6ff3c131d4b6c580b8c72f13606e170c7c1ff4a73a437acc262c8812dbc3e48'

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
