$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4f4e359ec3fc/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2023.1.7f1.exe'
$checksum64     = 'b91b3eb198bd977dc99707792400c30b14b9ef1d7f33070f3a7024c29d0f604e'

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
