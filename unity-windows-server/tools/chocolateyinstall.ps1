$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2aeb7e9a02a2/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.0a9.exe'
$checksum64     = 'bbcde316cc8549212782ced1c24d82af5e130ad9eda94fbd23c65880e7ebf6bf'

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
