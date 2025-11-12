$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7134d7685e5d/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.11f1.exe'
$checksum64     = 'afcc6c200aa1a57bf66ea10127514b7847933388582f4606ba80f9dff5bdc041'

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
