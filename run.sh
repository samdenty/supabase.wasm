echo Fetching asset from slow CDN, this would normally be cached forever by browser
cat out.wasm.br >/dev/null

echo Done fetching, decompressing
node -e "require('fs').promises.readFile('out.wasm.br').then(d=>require('zlib').brotliDecompress(d)).then(d=>require('fs').promises.writeFile('out.wasm',d))"

echo Done decompressing

echo printing help...

wasm out.wasm -- 'supabase' 'help'
