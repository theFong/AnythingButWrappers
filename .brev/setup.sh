sudo curl -o /usr/local/bin/cog -L "https://github.com/replicate/cog/releases/latest/download/cog_$(uname -s)_$(uname -m)"\nsudo chmod +x /usr/local/bin/cog

cd Efficient_RedPajama_Finetuning && cog build && cd -