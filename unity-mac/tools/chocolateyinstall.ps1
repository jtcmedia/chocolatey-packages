$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9438f9b77a46/TargetSupportInstaller/UnitySetup-Mac-Mono-Support-for-Editor-6000.0.63f1.exe'
$checksum64     = 'b212d3cf71efedb7cabb333f1bab5bc9a101737e9dcaee391dd186e1ed8f5225'

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
