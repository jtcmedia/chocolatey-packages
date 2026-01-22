$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e7adf66625be/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.66f1.exe'
$checksum64     = 'a856273efc796f217344279380e80843fdad1fec7a34e25ca8a3d81e7185339a'

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
