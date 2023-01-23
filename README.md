# Loop through my Git Repositories and add a license

The `al2r.sh` (add license to repository) script does the following
1. Start the ssh-agent and prompts to add your SSH keys
1. clones all your public repo's to local 
2. copies `LICENSE.md` into each repository
3. commit and push to github


Clone this repo

Copy `env.example` to `.env`


```ini
# .env
GITHUB_TOKEN=ghp_2goxd8c5495c04b3e9dcb008a7d79ab6f0e8
GITHUB_USER=toggenation
```




```bash
./al2r.sh
```