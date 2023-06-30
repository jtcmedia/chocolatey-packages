$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e348e726afe7/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2023.1.2f1.exe'
$checksum64     = 'db901bd2c33ac78bb96aea6b52e3ede25a5cb62369e92583c5b64753a4c52206'

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
