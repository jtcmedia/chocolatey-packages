$ErrorActionPreference = 'Stop';

$packageName    = 'unity-ios'
$toolsDir       = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url64          = 'https://download.unity3d.com/download_unity/413673acabac/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-6000.0.10f1.exe'
$checksum64     = '588dadbcb137c97db57640fc4986c080b0a1dc9bea084c932b9db932d69af345'

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
