$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f63fdee6d95/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.60f1.exe'
$checksum64     = 'bd1b3356ef79b79d94a757f4ca914e03ce14137e7cb062e80f793ce33b6bf7eb'

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
