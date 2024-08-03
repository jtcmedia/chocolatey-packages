$ErrorActionPreference = 'Stop';

$packageName    = $env:ChocolateyPackageName
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/53a692e3fca9/TargetSupportInstaller/UnitySetup-Linux-Mono-Support-for-Editor-6000.0.13f1.exe'
$checksum64     = '4e07b758dc9761ff879f23ff0394585e70e69493c51aade30356648a3e5096c5'

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
