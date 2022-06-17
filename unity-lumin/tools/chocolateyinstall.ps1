$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/71f96b79b9f0/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.36f1.exe'
$checksum64     = '7b3271e3f100ff0eee60414a76fb610f23b0dc8fcdc5b974d4be3f725aded6c9'

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
