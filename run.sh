echo Fetching asset from slow CDN, this would normally be cached forever by browser
cat out.wasm.gz >/dev/null

echo Done fetching, decompressing
node -e "require('fs').writeFileSync('out.wasm',require('zlib').gunzipSync(require('fs').readFileSync('out.wasm.gz')))"

echo Done decompressing

echo printing help...

wasm out.wasm -- 'supabase' 'help'
