$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/77a89f25062f/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.1f1.exe'
$checksum64     = '6f4a8bf6881c6ed705f45eb8a07347db94889b2247a3682ba7170f4636a637a4'

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
