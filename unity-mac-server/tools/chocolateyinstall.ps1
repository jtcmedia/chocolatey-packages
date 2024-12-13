$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/a206c360e2a8/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.31f1.exe'
$checksum64     = '74915e3bec0e81fc4052bd2ebe48e51e1a3a5d450f29b091ac4cb47d218cd93f'

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
