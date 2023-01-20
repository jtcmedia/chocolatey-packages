$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/7f159b6136da/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2020.3.44f1.exe'
$checksum64     = '296488c44954db62af4eb980f65ab3426481a24824ff89a24ce3879f82d7876f'

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
