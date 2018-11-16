$ErrorActionPreference = 'Stop';

$packageName    = 'unity-facebook'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://netstorage.unity3d.com/unity/39a4ac3d51f6/TargetSupportInstaller/UnitySetup-Facebook-Games-Support-for-Editor-2018.2.16f1.exe'
$checksum64     = '730544f97b39a4daf2e9164effad11b8ab16a90c323ff564b106e19d172dedfd'

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
