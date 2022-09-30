$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ba48d4efcef1/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.40f1.exe'
$checksum64     = 'c5ba295d982f89ed1260a126e6cc73c976e727ee65f2f66ea933cd7bda027d0c'

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
