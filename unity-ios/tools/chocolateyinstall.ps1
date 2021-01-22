$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/068178b99f32/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.2.2f1.exe'
$checksum64     = '4a9845361ed3aea7a4a27d8c4c59bbb351927e80145cd1cecd944d20c475d742'

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
