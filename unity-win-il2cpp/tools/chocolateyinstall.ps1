$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e50cafbb4399/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.11f1.exe'
$checksum64     = '583ac95679e3dfd9613603ebcf273bd7df9ff660c7f13db389cccc42784bc468'

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
