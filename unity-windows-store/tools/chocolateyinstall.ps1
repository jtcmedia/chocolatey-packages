$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d91bd3d4e081/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.45f1.exe'
$checksum64     = '9f0edf179a25fdfeea3b9511414b4e94d19e2c6c5ff1b25ef5f2b09ad32cdb6a'

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
