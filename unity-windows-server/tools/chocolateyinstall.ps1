$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/95e1b8cf7a6b/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.17f1.exe'
$checksum64     = '25d37425e0b739da66c3477fa3c648bd3b15a1feee0ebf8bd86aaab3b23819ca'

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
