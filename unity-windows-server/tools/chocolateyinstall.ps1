$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1cb755715f58/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.2.18f1.exe'
$checksum64     = '893152773dd24051a946f2ff5fab95c07ed7ce8eef96f970f77bcee3a7138fe3'

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
