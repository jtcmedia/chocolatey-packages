$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/7f159b6136da/TargetSupportInstaller/UnitySetup-Lumin-Support-for-Editor-2020.3.44f1.exe'
$checksum64     = 'ef7588c55a9b06e1ed6959c5100673722df34ef03a977593a7e52147e6e02d0d'

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
