$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8af3c3e441b1/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.12f1.exe'
$checksum64     = 'de36d4e58a6cdac29acbadc3aae5365faa5273c68e5851e105d081e3ce24dbe5'

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
