$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/feb9a7235030/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-6000.0.42f1.exe'
$checksum64     = '9ab2235d829083699f5b67ddaeb4b91e67523d710991e5be78abb4dc3d3582cb'

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
