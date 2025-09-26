$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/cc51a95c0300/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.6f1.exe'
$checksum64     = '66d53a790d6685e06a15e89658571fcdceb11b07373cb9af4113a9799e810333'

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
