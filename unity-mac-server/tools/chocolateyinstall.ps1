$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/e2bacb8dee3a/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.21f1.exe'
$checksum64     = 'a043c2ca0811eb676b08d45f9afde7366adf1588986faa099557977f99ea4bd1'

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
