$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e89d5df0e333/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.2.12f1.exe'
$checksum64     = '6fa05fc7a7c39803946a5f4fa976b1d0e564f6ba642969dc1f98c11296027ab4'

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
