$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b58023a2b463/TargetSupportInstaller/UnitySetup-Linux-Server-Support-for-Editor-2022.3.15f1.exe'
$checksum64     = '70bfef219ee59432f1e7d2a215d0f4e1afaff98d858089929c8e42d45ef87032'

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
