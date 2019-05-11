$ErrorActionPreference = 'Stop';

$packageName    = 'unity-webgl'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/3e18427e571f/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-2019.1.2f1.exe'
$checksum64     = 'cc5ff39b866a51a4ec99a24d04b61c6ef94239392c28717508b478d472146927'

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
