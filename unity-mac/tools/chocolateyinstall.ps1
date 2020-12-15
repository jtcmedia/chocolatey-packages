$ErrorActionPreference = 'Stop';

$packageName    = 'unity-mac'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3721df5a8b28/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-2020.2.0f1.exe'
$checksum64     = '91cced41cb0670b9f6e440875d85da1bc839d00af1646e1f79fca01b7cd9b220'

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
