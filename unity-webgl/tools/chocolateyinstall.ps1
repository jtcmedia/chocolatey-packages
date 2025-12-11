$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/5360b7cd7953/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-6000.0.64f1.exe'
$checksum64     = 'be4e53adde4a804a62366b9988f0fc306ba9d38e514a79832c69a9f84ab25d09'

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
