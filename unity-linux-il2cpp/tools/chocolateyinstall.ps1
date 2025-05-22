$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/03270eb687c6/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-6000.1.4f1.exe'
$checksum64     = '8fcbdb773d4375012480217252ab1594785a075cef6c42cf216f278bbb117714'

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
