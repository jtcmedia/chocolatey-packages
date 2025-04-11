$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/6c53ebaf375d/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.3.61f1.exe'
$checksum64     = 'b91e8b0ece04789e4b5f4bbf7dbc0521362ec9bc16dec7215fb2111206b765ff'

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
