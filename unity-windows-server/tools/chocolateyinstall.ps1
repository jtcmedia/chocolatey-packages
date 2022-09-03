$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ad3870b89536/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2021.3.9f1.exe'
$checksum64     = '6db0bf2e0c23ae19b1337e980b5b6461124bbce264d5eed8c7e7af6bf3f2ee01'

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
