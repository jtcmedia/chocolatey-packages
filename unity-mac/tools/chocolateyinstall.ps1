$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5f90a5ebde0f/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.13f1.exe'
$checksum64     = '18c6f8a82a4c58663dfa759cd8b1611d0482e8a7061abe5ac3c53e3bcbaf91ca'

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
