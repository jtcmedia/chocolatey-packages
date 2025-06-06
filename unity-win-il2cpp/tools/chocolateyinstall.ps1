$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/d64b1a599cad/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.1.6f1.exe'
$checksum64     = 'cb5d37ed1454478636178d027a1d56dc92790300f6523c00a4a1f70e425e6196'

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
