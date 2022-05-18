$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/78d14dfa024b/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-2019.4.39f1.exe'
$checksum64     = 'b61f428e19164726cad1a7aead2dc923223aa268009e4c44a032f6cc2abee9ea'

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
