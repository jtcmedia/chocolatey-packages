$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/4e7b9b5b6244/TargetSupportInstaller/UnitySetup-Windows-IL2CPP-Support-for-Editor-6000.3.24f1.exe'
$checksum64     = '11a995739d9afad1fda487a17e30b31434ae399b195496d644f3bd95115ceb65'

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
