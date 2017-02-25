$ErrorActionPreference = 'Stop';

$packageName    = 'unity-samsungtv'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url            = 'https://download.unity3d.com/download_unity/3829d7f588f3/TargetSupportInstaller/UnitySetup-Samsung-TV-Support-for-Editor-5.5.2f1.exe'
$checksum       = '7f60eed62e3413aa467d035ae24b3832a6ae613f1688d285d44940c9f86c469f'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url
  checksum       = $checksum
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
