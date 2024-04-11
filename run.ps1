param(
    [Parameter(ValueFromRemainingArguments=$true)]
    [string[]]$run_args
)
echo "Running with args: $run_args"
$env:ENABLE_CXX_MODULES=1
xmake
if ($LASTEXITCODE -ne 0) {
    exit $LASTEXITCODE
}
xmake run main $run_args
