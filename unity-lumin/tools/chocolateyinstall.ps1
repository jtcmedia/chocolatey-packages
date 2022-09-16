$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fd6670bb8be9/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.39f1.exe'
$checksum64     = '35d583eedc1fc199e0582e8e98db4fc499bdce839eace31b0026cae08775e6a5'

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
