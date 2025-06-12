$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c1cd6601d4c1/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.0b5.exe'
$checksum64     = '78028fac3fd22f49ecd991867695b0a38507645879ccbe8fbcc763e7a2438ae5'

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
