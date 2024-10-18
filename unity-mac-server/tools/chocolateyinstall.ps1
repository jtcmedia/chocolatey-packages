$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c4764c07fb4/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.23f1.exe'
$checksum64     = 'e9389969ff9616f09a444a699f78664c031d82f25a0a49d5166489481dffcb23'

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
