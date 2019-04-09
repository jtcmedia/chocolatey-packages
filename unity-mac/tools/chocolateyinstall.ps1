$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/8afd630d1f5b/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2018.3.12f1.exe'
$checksum64     = '5416144a0ace3e229b74f5a3b918dc0074d4fd49fe1c96408f360c55451e6621'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
