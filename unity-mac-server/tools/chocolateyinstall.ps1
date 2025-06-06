$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d64b1a599cad/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.1.6f1.exe'
$checksum64     = 'd8a8dcef50540a6a2c3889d29ef4a90d7977e6071976ae4200207593fb1978ee'

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
