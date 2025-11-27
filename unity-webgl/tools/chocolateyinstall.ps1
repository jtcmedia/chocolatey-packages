$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/589824c1fc31/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.2.14f1.exe'
$checksum64     = '5a8a2bac5fbfe70e0ef92a0714c8e90079e9a4193658b91a7d8665e0d3048d80'

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
