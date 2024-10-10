$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/c3db7f8bf9b1/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.3.50f1.exe'
$checksum64     = '389582a8c9f661dc25e649d9b89aa524f834411910983ccbc2a47e10495ec0fd'

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
