$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/413673acabac/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-6000.0.10f1.exe'
$checksum64     = '45658aabbcdb7abb3cca9ef9f35b45db11b0fff2b7fffcaf73861a89173b2dfe'

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
