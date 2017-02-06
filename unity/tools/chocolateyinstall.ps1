$ErrorActionPreference = 'Stop';

$packageName        = 'unity'
$toolsDir           = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url32              = 'https://download.unity3d.com/download_unity/88d00a7498cd/Windows32EditorInstaller/UnitySetup32-5.5.1f1.exe'
$url64              = 'https://download.unity3d.com/download_unity/88d00a7498cd/Windows64EditorInstaller/UnitySetup64-5.5.1f1.exe'
$checksum32         = '74dde7aaa68e072c2348e078b040db03eee5d4b9f2b18b5e9b45c22a7a2a2f50'
$checksum64         = '345a8df2c66082f10d48ef3870b669235ef181825ec224595b0e013929d2bb1a'
$url_metro          = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Metro-Support-for-Editor-5.5.1f1.exe'
$checksum_metro     = '93D34700E4CABB5EC81AEAAEBACB65AD74CE8631267FCD1CEB6774F38CC3BE8C'
$url_il2cpp         = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-UWP-IL2CPP-Support-for-Editor-5.5.1f1.exe'
$checksum_il2cpp    = '54752213D70A447A753B5C50B5CE4ADE82B2A04B0600302010973FADEA863B9E'
$url_android        = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Android-Support-for-Editor-5.5.1f1.exe'
$checksum_android   = 'E5D5E5748C5ECF07C619CDD671F25DA5798FBB9717611BD3F925E6F6CD71E65D'
$url_ios            = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-iOS-Support-for-Editor-5.5.1f1.exe'
$checksum_ios       = 'E96CBCCEBB03412B79DFEF87B84577803BF70DF877FCFB8F0439DFE843349D5B'
$url_appletv        = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-AppleTV-Support-for-Editor-5.5.1f1.exe'
$checksum_appletv   = 'A84CDE7FAB0F96F909A89FD59DDCED103B40AD42CEBC836916355A3AFDF15718'
$url_linux          = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Linux-Support-for-Editor-5.5.1f1.exe'
$checksum_linux     = 'C87C85B1AFFDD202364DF57DBA3AFCBFACFA8C8C6244E52AFE7D1002776F7E79'
$url_mac            = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Mac-Support-for-Editor-5.5.1f1.exe'
$checksum_mac       = '11CAC3CEBE3C10A3ED037296709587065B202F0403B980892192228B65CE3AD0'
$url_samsungtv      = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Samsung-TV-Support-for-Editor-5.5.1f1.exe'
$checksum_samsungtv = '0C152D659E8A0ED55F49DB44EB05C591E2140BAD7BF49D1CB151293DEF366E0C'
$url_tizen          = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-Tizen-Support-for-Editor-5.5.1f1.exe'
$checksum_tizen     = 'B3A067D99813F9F18E9D6062DD29F651C64FE8E70B04F7EA1DEA5D04BC5918C7'
$url_webgl          = 'https://download.unity3d.com/download_unity/88d00a7498cd/TargetSupportInstaller/UnitySetup-WebGL-Support-for-Editor-5.5.1f1.exe'
$checksum_webgl     = 'C32941C480F58D3C013A463440277C0C5529778D2E1CCF815ECD6867D7356B62'
$url_sa             = 'https://download.unity3d.com/download_unity/88d00a7498cd/WindowsStandardAssetsInstaller/UnityStandardAssetsSetup-5.5.1f1.exe'
$checksum_sa        = '4840a961dc62f8c7aced1753049a2e12e56c82f6d6e850413743710f10e66a52'
$url_ep             = 'https://download.unity3d.com/download_unity/88d00a7498cd/WindowsExampleProjectInstaller/UnityExampleProjectSetup-5.5.1f1.exe'
$checksum_ep        = 'c95f1767386d4b33064d496aeb917689e5cb46b6a56b09b14edba7035259303e'
$url_docs           = 'https://download.unity3d.com/download_unity/88d00a7498cd/WindowsDocumentationInstaller/UnityDocumentationSetup-5.5.1f1.exe'
$checksum_docs      = '0a41fabe56940cacd1195ddd9d6a9d8ccac19adc37e3dd4325180be25ed23d7d'

$packageArgs = @{
  packageName    = $packageName
  fileType       = 'EXE'
  url            = $url32
  url64bit       = $url64
  softwareName   = 'Unity'
  checksum       = $checksum32
  checksumType   = 'sha256'
  checksum64     = $checksum64
  checksumType64 = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs

$pp = Get-PackageParameters

$pp.GetEnumerator() | % {

  switch ($_.Key)
    {
        "metro"     {$pname = "Windows Store (.NET) Target Support"}
        "il2cpp"    {$pname = "Windows Store (IL2CPP) Target Support"}
        "android"   {$pname = "Android Target Support"}
        "ios"       {$pname = "iOS Target Support"}
        "appletv"   {$pname = "Apple TV Target Support"}
        "linux"     {$pname = "Linux Target Support"}
        "mac"       {$pname = "Mac Target Support"}
        "samsungtv" {$pname = "Samsung TV Target Support"}
        "tizen"     {$pname = "Tizen Target Support"}
        "webgl"     {$pname = "WebGL Target Support"}
        "sa"        {$pname = "The Standard Assets"}
        "ep"        {$pname = "The Example Project"}
        "docs"      {$pname = "Unity Documentation"}
        default     {$pname = ""; Write-Host "Couldn't find the package " + $pp.key}
    }

    if($pname){

      Write-Host "Installing $pname.";

      $t = $_.Key

      $packageArgs = @{
        packageName    = "$packageName-$t"
        fileType       = 'EXE'
        url            = Get-Variable -Name "url_$t" -ValueOnly
        checksum       = Get-Variable -Name "checksum_$t" -ValueOnly
        checksumType   = 'sha256'
        silentArgs     = '/S'
        validExitCodes = @(0)
      }
      
      Install-ChocolateyPackage @packageArgs

    }

}
