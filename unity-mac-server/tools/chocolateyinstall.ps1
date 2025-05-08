$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8e2281df4c52/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.1.2f1.exe'
$checksum64     = 'b55b249ba0516a5a431c869bcaa05239df9c5f2d06daaa0825fe1ec1f26dd1c1'

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
