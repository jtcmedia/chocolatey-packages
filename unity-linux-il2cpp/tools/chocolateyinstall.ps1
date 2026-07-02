$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/de66c00feac7/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.6.0b2.exe'
$checksum64     = 'b8ae24d1812dfddeee7c8ffd06c1f5d8dadcf713e677d7aa9096825b2490d048'

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
