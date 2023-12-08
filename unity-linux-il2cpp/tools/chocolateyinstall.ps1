$ErrorActionPreference = 'Stop';

$url64          = 'https://download.unity3d.com/download_unity/b58023a2b463/TargetSupportInstaller/UnitySetup-Linux-IL2CPP-Support-for-Editor-2022.3.15f1.exe'
$checksum64     = '734ed067eaa5a787d3b9188899295f8736ac7ab8ef0d8fea4f505b2d4ea75a84'

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
