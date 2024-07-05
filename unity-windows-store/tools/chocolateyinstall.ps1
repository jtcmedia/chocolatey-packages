$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1490908003ac/TargetSupportInstaller/UnitySetup-Universal-Windows-Platform-Support-for-Editor-6000.0.9f1.exe'
$checksum64     = 'd79f391bdbc1dec1fe1c325a943d9cf1935004070f70ca7e4de9c6c251c059e3'

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
