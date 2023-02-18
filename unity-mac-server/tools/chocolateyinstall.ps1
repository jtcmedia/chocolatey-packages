$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c9714fde33b6/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2021.3.19f1.exe'
$checksum64     = 'b69f150dcbb7dc4d6be2e41ab47b588989e0df9357b05608efe8899bc64f2dab'

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
