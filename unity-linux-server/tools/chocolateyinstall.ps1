$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2dcb6a0abc42/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.42f1.exe'
$checksum64     = '53e7e8200a16fd4d97d75f9e665c6e6c4941d0cda8dfe3bea2c51999b22f885f'

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
