$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/3bd4f66ad299/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.5.10f1.exe'
$checksum64     = 'c4105e833b45ba396113ecd1a6efc3ac51b62eec9e537c36421f2b23bf16ee3a'

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
