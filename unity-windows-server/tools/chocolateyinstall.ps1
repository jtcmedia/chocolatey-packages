$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/bec83302551e/TargetSupportInstaller/UnitySetup-Windows-Server-Support-for-Editor-6000.6.0b1.exe'
$checksum64     = 'dff7d2341b28fe59dfa9c951198334794954d5b21f77064c7fd54814dbf88fe1'

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
