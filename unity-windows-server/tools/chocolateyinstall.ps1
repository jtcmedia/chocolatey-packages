$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/413673acabac/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.0.10f1.exe'
$checksum64     = 'b141c696cd9566c4f8998d152c7874ad8ab59703ecbd6661c16004d18f0c2c91'

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
