$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/64de5ee36373/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.0a2.exe'
$checksum64     = '75b5bf39cc6b8dda2e677ee0de789061856ec7a7f1f52de355cbdb1e8b8df92f'

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
