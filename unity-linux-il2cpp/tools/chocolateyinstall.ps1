$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/32358a8527b4/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.2.3f1.exe'
$checksum64     = '264b76358a0268664978506346583a65dd02b296fdfc8573af1a42b4a61322c2'

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
