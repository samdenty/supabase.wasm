echo printing help...

wasm node_modules/supabase.wasm/supabase.wasm -- 'supabase' 'help'

echo initializing

wasm node_modules/supabase.wasm/supabase.wasm --mapdir /repo:. -- 'supabase' 'init' '--workdir=/repo'
