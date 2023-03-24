$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/022dac4955a3/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-2022.2.12f1.exe'
$checksum64     = 'ff1e26b0052d868f7c6e976f8c5fa379f21db067742d30702bb5a364a30d276c'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'EXE'
  url64bit       = $url64
  checksum       = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs
