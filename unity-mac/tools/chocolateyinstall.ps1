$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c5d5a7410213/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2022.3.38f1.exe'
$checksum64     = 'f3b2cb4dc2bb67e97ed22b8254698b05db959fc1e07e005aaa720be3c88b1056'

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
