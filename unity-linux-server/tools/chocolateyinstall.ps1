$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/8a01b55183a9/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-6000.2.0a1.exe'
$checksum64     = '173c5753291bf96bc54f9f706805361eb1359c5cc4840d0d005bb52b11bf527b'

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
