$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9b156bbbd4df/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.11f1.exe'
$checksum64     = 'ee5085fcbe92d7e180e65761ef01ef5a2f555b27126e0e94d3fbb4a6ac123417'

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
