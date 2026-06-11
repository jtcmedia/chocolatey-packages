$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/88f89d0d8b31/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.77f1.exe'
$checksum64     = '30038f2c06cbff47f293afa9f936974685e36f9861b54842ff919bdaea7966aa'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
