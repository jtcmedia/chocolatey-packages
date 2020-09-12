$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e025938fdedc/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2020.1.5f1.exe'
$checksum64     = '6b96d77069f42ecc6b85ec1a5ddac9f490421c66105cbfd7a53a0bf856530aac'

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
