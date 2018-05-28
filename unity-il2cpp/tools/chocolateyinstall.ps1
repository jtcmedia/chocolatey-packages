$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/a46d718d282d/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-2018.1.2f1.exe'
$checksum64     = 'ef36d84ee516d8cc3721e20ca7074fc6d9097e26d513213fdec6ce255d2b4bc2'

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
