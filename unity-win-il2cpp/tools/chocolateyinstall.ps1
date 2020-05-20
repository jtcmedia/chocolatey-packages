$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/2b330bf6d2d8/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.3.14f1.exe'
$checksum64     = 'd38388a151666745d7580cd564fe7d15ac75b69b3357f8c9a6afa9fd6afa95d4'

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
