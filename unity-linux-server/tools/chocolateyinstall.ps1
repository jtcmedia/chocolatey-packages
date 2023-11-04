$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3b9dae9532f5/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2021.3.32f1.exe'
$checksum64     = '5fc1cb6dc1db4913aac52f0a03da6e82d7d6f68368975f91ab9514c8b1e41534'

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
