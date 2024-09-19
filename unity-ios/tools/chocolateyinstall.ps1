$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/88c277b85d21/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.3.47f1.exe'
$checksum64     = '9dcf7c489833df2ba014ce8997b5f16c02b9f7730306bf30942ee6885d710da0'

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
