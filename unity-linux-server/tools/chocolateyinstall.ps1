$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/01d83b40d570/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.1.20f1.exe'
$checksum64     = '8fa6e428ee7544337b48503b703c630b5127648c7781f5e9615513ac74aff31c'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
