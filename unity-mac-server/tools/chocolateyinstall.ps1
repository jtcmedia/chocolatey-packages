$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/db7aa045cc2c/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.1.14f1.exe'
$checksum64     = 'de2ebfa4ccaddcc329f8bf0f194722b917c914a6c2cc572002f14fc17b065015'

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
