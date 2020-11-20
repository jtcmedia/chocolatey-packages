$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d81f64f5201d/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.14f1.exe'
$checksum64     = '49f0ff22fef3c93984dab9f160e644678851911fbf8edfd24704302774b5d47b'

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
