$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/621cd60d08fd/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.2.11f1.exe'
$checksum64     = 'f0f55b3dbe6521b7805807f363cfa88c87c8a2e37b28c8f5bb5f27ad476dcc23'

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
