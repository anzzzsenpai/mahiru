$files = @(
    "clone.js",
    "werewolf.js"
)

foreach ($file in $files) {
    $content = Get-Content $file -Raw
    # Fix function declarations
    $content = $content -replace 'async function stopjadibot\(hydro,', 'async function stopjadibot(mahiru,'
    $content = $content -replace 'async function listjadibot\(hydro,', 'async function listjadibot(mahiru,'
    $content = $content -replace 'async function run\(hydro,', 'async function run(mahiru,'
    $content = $content -replace 'async function run_vote\(hydro,', 'async function run_vote(mahiru,'
    $content = $content -replace 'async function run_malam\(hydro,', 'async function run_malam(mahiru,'
    $content = $content -replace 'async function run_pagi\(hydro,', 'async function run_pagi(mahiru,'
    $content = $content -replace 'async function pagi\(hydro,', 'async function pagi(mahiru,'
    $content = $content -replace 'async function voting\(hydro,', 'async function voting(mahiru,'
    $content = $content -replace 'async function malam\(hydro,', 'async function malam(mahiru,'
    $content = $content -replace 'async function skill\(hydro,', 'async function skill(mahiru,'
    
    # Fix function calls
    $content = $content -replace 'await pagi\(hydro,', 'await pagi(mahiru,'
    $content = $content -replace 'await voting\(hydro,', 'await voting(mahiru,'
    $content = $content -replace 'await malam\(hydro,', 'await malam(mahiru,'
    $content = $content -replace 'await skill\(hydro,', 'await skill(mahiru,'
    
    Set-Content -Path $file -Value $content
    Write-Host "Fixed $file"
}
