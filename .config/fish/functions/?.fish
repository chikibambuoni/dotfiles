function ? --wraps='w3m https://lite.duckduckgo.com/lite/?q=' --wraps='w3m https://lite.duckduckgo.com/lite/?q= ' --wraps='w3m https://lite.duckduckgo.com/lite/?q=kek'
    set query (echo $argv | sed 's/ /+/g')
    w3m "https://duckduckgo.com/lite?q=$query"
end
