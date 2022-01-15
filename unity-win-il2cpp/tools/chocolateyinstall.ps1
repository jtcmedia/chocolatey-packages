$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d0e5f0a7b06a/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.2.8f1.exe'
$checksum64     = 'a0fe45843a55f98840821ed00e97b91a4984a24033dd4707bd8ff700e8c42baa'

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
