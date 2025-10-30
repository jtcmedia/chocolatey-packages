$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d3d30d158480/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.2.10f1.exe'
$checksum64     = '149b7e6956f8693947bbae65be57d24cc3e990050f1eed6c3da6cdda552f3c82'

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
