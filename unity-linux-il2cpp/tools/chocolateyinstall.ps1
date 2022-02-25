$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/90b6766da538/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.13f1.exe'
$checksum64     = 'e44d016955f6f655af285297267532e8cbb55ad6c26031c5563790c4bb700a4d'

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
