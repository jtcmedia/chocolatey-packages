$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b57deb96f08d/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.5.9f1.exe'
$checksum64     = 'de7398ca24c211dc1a757271cec12054934abcde1da6d6caf6ee522bcd66e222'

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
