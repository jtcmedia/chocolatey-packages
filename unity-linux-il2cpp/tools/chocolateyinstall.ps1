$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/fd6670bb8be9/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2020.3.39f1.exe'
$checksum64     = '66664cd5b8dffdd4659ab9d6b40739393386d66c680f9cc9d323c4b8f59c55d5'

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
