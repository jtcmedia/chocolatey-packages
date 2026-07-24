$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/d16e074b49fd/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.5.5f1.exe'
$checksum64     = 'b798e0eab621d437097697e5ded79117a6649a0a19c51495c71af3c2f4181702'

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
