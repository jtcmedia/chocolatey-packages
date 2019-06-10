$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/0ca0f5646614/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.1.5f1.exe'
$checksum64     = 'ca117b7e6c3a5cb8bdbd7fcc55ea2b31dddfa6e420e76961c14a5b16d2b08cfd'

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
