$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/faa32412f6c9/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.1.15f1.exe'
$checksum64     = '9268f0218b848bebb1c615f40e73b617c324875a3648aa439a8d27a96188293c'

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
