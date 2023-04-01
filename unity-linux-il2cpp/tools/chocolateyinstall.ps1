$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b6c551784ba3/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2021.3.22f1.exe'
$checksum64     = '6024364d3a34cd33eeb907623f93ed8257adc8458c8cf57e6912e5d77e7e879f'

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
