$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/88933597c842/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2018.2.17f1.exe'
$checksum64     = '4dd65e6adadedcf4480128226f7276718b6f76e1e9a95150e2e7c09ca8458d76'

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
