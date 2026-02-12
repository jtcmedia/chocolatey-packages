$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/1c7db571dde0/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.3.8f1.exe'
$checksum64     = 'dfe669625a63bfb8502c7d88812b222ebb3a036a2cc55903850af13206fb937d'

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
