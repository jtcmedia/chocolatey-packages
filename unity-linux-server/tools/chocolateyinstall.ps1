$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/46620eadcc07/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.1f1.exe'
$checksum64     = '23b25fb68b171572bd1f51de74c8cfc579637e7c3855701ebc82ed44f2210297'

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
