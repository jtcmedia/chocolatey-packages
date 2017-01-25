$ErrorActionPreference = 'Stop';

$packageName   = 'unity'
$toolsDir      = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32         = 'http://download.unity3d.com/download_unity/88d00a7498cd/Windows32EditorInstaller/UnitySetup32-5.5.1f1.exe'
$url64         = 'http://download.unity3d.com/download_unity/88d00a7498cd/Windows64EditorInstaller/UnitySetup64-5.5.1f1.exe'
$checksum32    = '74dde7aaa68e072c2348e078b040db03eee5d4b9f2b18b5e9b45c22a7a2a2f50'
$checksum64    = '345a8df2c66082f10d48ef3870b669235ef181825ec224595b0e013929d2bb1a'
$url_sa        = 'http://download.unity3d.com/download_unity/88d00a7498cd/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.1f1.exe'
$checksum_sa   = '4840a961dc62f8c7aced1753049a2e12e56c82f6d6e850413743710f10e66a52'
$url_ep        = 'http://download.unity3d.com/download_unity/88d00a7498cd/WindowsExampleProjectInstaller/UnityExampleProjectSetup-5.5.1f1.exe'
$checksum_ep   = 'c95f1767386d4b33064d496aeb917689e5cb46b6a56b09b14edba7035259303e'
$url_docs      = 'http://download.unity3d.com/download_unity/88d00a7498cd/WindowsDocumentationInstaller/UnityDocumentationSetup-5.5.1f1.exe'
$checksum_docs = '0a41fabe56940cacd1195ddd9d6a9d8ccac19adc37e3dd4325180be25ed23d7d'

$packageArgs = @{
  packageName   = $packageName
  fileType      = 'EXE'
  url           = $url32
  url64bit      = $url64
  softwareName  = 'Unity'
  checksum      = $checksum32
  checksumType  = 'sha256'
  checksum64    = $checksum64
  checksumType64= 'sha256'
  silentArgs   = '/S'
  validExitCodes= @(0)
}

Install-ChocolateyPackage @packageArgs

$pp = Get-PackageParameters
if ($pp.sa) { Write-Host 'Param: The Standard Assets will be installed' }
if ($pp.ep) { Write-Host 'Param: The Example Project will be installed' }
if ($pp.docs) { Write-Host 'Param: Unity Documentation will be installed' }

if ($pp.sa) {
    Write-Host 'Installing Standard Assets...'
    
    $packageArgs = @{
        packageName   = "$packageName-standard-assets"
        fileType      = 'EXE'
        url           = $url_sa
        checksum      = $checksum_sa
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
    
}

if ($pp.ep) {
    Write-Host 'Installing the Example Project...'
    
    $packageArgs = @{
        packageName   = "$packageName-example-project"
        fileType      = 'EXE'
        url           = $url_ep
        checksum      = $checksum_ep
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
}

if ($pp.docs) {
    Write-Host 'Installing Documentation...'
    
    $packageArgs = @{
        packageName   = "$packageName-docs"
        fileType      = 'EXE'
        url           = $url_docs
        checksum      = $checksum_docs
        checksumType  = 'sha256'
        silentArgs   = '/S'
        validExitCodes= @(0)
    }
    
    Install-ChocolateyPackage @packageArgs
}
