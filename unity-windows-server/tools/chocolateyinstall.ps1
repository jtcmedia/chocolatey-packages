$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/696ec25a53d1/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.3.7f1.exe'
$checksum64     = 'e9f38a14750011b0a42046c1163d3814dddb3b20e45536b8f1731e7151f3be7d'

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
