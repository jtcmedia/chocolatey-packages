$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/64de5ee36373/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.6.0a2.exe'
$checksum64     = '14fbb447ca5172b109f98cb2d02539a60e47a259e2cd89cbb479f081b3904843'

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
