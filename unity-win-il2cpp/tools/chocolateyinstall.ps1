$ErrorActionPreference = 'Stop';

$packageName    = 'unity-il2cpp'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/5f5eb8bbdc25/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2021.1.19f1.exe'
$checksum64     = 'bc2700f134d3e93b6e607099bde933841de9a126a38dcc487ab1756d949ebebd'

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
