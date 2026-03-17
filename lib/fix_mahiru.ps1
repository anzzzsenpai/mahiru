$files = @(
    "werewolf.js",
    "clone.js"
)

foreach ($file in $files) {
    if (Test-Path $file) {
        $content = Get-Content $file -Raw
        $content = $content -replace 'async function pagi\(hydro,', 'async function pagi(mahiru,'
        $content = $content -replace 'async function voting\(hydro,', 'async function voting(mahiru,'
        $content = $content -replace 'async function malam\(hydro,', 'async function malam(mahiru,'
        $content = $content -replace 'async function skill\(hydro,', 'async function skill(mahiru,'
        $content = $content -replace 'async function win\(x, t, hydro,', 'async function win(x, t, mahiru,'
        $content = $content -replace 'hydro\.sendMessage', 'mahiru.sendMessage'
        $content = $content -replace 'return hydro', 'return mahiru'
        $content = $content -replace 'win\(x, 1, hydro', 'win(x, 1, mahiru'
        Set-Content -Path $file -Value $content -Encoding UTF8
        Write-Host "Fixed $file"
    }
}
