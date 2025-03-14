$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feb9a7235030/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.42f1.exe'
$checksum64     = '5ccc8aad6f005c93c4961a3cfbb0e3a027260fa6629bc304af502e87dd79f9d5'

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
