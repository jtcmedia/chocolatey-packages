$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/35dcd44975df/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2022.2.0f1.exe'
$checksum64     = '544a8555e8d1ffeca2a7e747ca73e2ce3bbc6b789494d5bf6943e0c8dca4fefa'

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
