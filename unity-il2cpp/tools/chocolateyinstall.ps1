$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ff5b465c8d13/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.2.8f1.exe'
$checksum64     = 'b7e922ef83ba01a1efcca76f7273031657e6f3878b0ce126ef1842ec1133c5e5'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
