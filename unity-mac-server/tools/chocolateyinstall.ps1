$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/157b46ce122a/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.35f1.exe'
$checksum64     = '4bfc0eb0d8e6cbdfdb27e45dafccecfac8e025d63e82a5d8ac81f012feba1624'

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
