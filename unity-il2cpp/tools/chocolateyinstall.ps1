$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/dc414eb9ed43/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2019.1.3f1.exe'
$checksum64     = 'c564254c43539d8d6d6c4f42b25cdea447d4d60ad3d1bbe77977bf608b811def'

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
