$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f3f94c8cdc49/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.9f1.exe'
$checksum64     = '5278559165d1ad90628ea78aa5b5c871fab9c69488628917e3257162998cb725'

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
