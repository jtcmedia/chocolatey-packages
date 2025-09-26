$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cc51a95c0300/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.2.6f1.exe'
$checksum64     = 'ad77e7caf4f2a8849f277844e5b3d292fa3c0c53a4bee83d5a20229e03dff7fd'

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
