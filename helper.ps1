choco install -y msys2 7zip.install
7z

C:\tools\msys64\usr\bin\bash.exe -lc "pacman --noconfirm -S python mingw-w64-x86_64-toolchain gettext python3 mingw-w64-x86_64-glib2 mingw-w64-x86_64-pixman make bison mingw-w64-x86_64-diffutils mingw-w64-cross-binutils mingw-w64-x86_64-SDL2"

Install-Module -Name PS.B2
Import-Module -Name PS.B2

Connect-B2Cloud -AccountID $(Secret.B2_KEY_ID) -ApplicationKey $(Secret.B2_APPLICATION_KEY)
$bucketId = (Get-B2Bucket | Where-Object -Property BucketName -eq "baxterworks-azure").BucketID
7z a msys2_tools.7z c:\tools

Invoke-B2ItemUpload -BucketID $bucketId -Path msys2_tools.7z