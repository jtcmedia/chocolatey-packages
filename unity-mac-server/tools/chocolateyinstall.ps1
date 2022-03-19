$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/559fc0ec6670/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.2.16f1.exe'
$checksum64     = '1a2ac6682d026f2976b2eaca4984a06b64180ae781134b8a2a3dc86426b75e55'

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
