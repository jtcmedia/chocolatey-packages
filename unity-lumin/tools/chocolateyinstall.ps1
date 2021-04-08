$ErrorActionPreference = 'Stop';

$packageName    = 'unity-lumin'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e5d502d80fbb/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2021.1.2f1.exe'
$checksum64     = '2ecd9c9240cece8d86f9433e25ff53568a44af841a6a22caec403c0f3963801f'

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
