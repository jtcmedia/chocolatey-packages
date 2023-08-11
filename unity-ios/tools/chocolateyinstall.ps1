$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/ab88ac34d80c/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2023.1.8f1.exe'
$checksum64     = 'fcf97e8df03cbb59c2133ebf2be45968b56700a5e4e131b701dc1613c8331043'

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
