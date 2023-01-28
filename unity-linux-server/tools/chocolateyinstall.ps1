$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8216e0211249/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.2.4f1.exe'
$checksum64     = '199838746753f3eda2596269825428b692de352100d3fd8a4e67ea0f30cff6b2'

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
