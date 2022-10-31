$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/9ac1ff5ca45b/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.21f1.exe'
$checksum64     = '4afc8df7828db8f1ea0753cdd37f865c9ea3fd1d4031035d830f93fb4e10bfc8'

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
