$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/e6e740a1c473/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.3.9f1.exe'
$checksum64     = '974228a92a4689f8faf57f62758942b39a0fc8b5c085d06210d1f04075081a09'

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
