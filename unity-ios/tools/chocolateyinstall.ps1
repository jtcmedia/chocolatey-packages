$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/f336aca0cab5/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.28f1.exe'
$checksum64     = '9972749b4650754a1abd3e03c53af62ecb8f6634a77aab47f25658a8f1e6c1f8'

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
