$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f3c4928e5742/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2019.1.7f1.exe'
$checksum64     = '6c206eca3a601aabeb35a75dd69d291211e85c7be914dea7f347dc4e090e392f'

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
