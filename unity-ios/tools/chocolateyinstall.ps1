$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/9b001d489a54/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.1.11f1.exe'
$checksum64     = 'ce3b7d92ff0e5bb14088bd5057218959dedd78ceb2dffe09943fb19179f2e126'

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
