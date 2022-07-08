$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/2961e8c2b463/TargetSupportInstaller/UnitySetup-Mac-Server-Support-for-Editor-2022.1.8f1.exe'
$checksum64     = '71c7d3ca393c3e1b87e36b3e8506838c9373a017dcfae6b09f7ffdd5a7114d26'

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
