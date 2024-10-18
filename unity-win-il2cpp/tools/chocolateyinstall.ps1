$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c4764c07fb4/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.0.23f1.exe'
$checksum64     = 'e1ba981a811c8e1050eb0862eee916d4063331b529af7a93522e427fb38fcbf0'

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
