$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/88f89d0d8b31/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.0.77f1.exe'
$checksum64     = '112c249e94975d9dbbfd1a969e3c1d9b775af7273ec5038641bbb1f957ea0b26'

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
