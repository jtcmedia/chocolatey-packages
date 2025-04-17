$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2ad1ed33fd3b/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.47f1.exe'
$checksum64     = '824f9dbc5f8d6410f404fea18a3170d8ce93bce31f2bd9493ec28e46d693f4d5'

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
