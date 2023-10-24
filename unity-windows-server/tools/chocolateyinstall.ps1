$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b84c4024cd38/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-2023.1.17f1.exe'
$checksum64     = '557e9d48fec0c6a6c1f527179e03429152f9bbc3d8eb4145c9c2c902bf395417'

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
