$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/ff7e140968b4/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-2022.1.14f1.exe'
$checksum64     = '26dc8169c7587eaf87b87109ac1e1904977f43e3c833e068fb2cc7514e1b633b'

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
