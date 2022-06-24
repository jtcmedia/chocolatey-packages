$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/e49a51cf6290/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2022.1.6f1.exe'
$checksum64     = '3deb2483cb712cda52c8ff3be7c189df59e03a66dc085afa992a48fdc9820980'

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
