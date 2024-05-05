$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7a2fa5d8d101/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.38f1.exe'
$checksum64     = '8c37a9881b61b9bd38e62dcd3cdb1c96f05c92c79172f927ca78bb8b5d8415ca'

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
