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
GITHUB_TOKEN=ghp__the_rest_of_your_token__
GITHUB_USER=toggenation
YEAR=2023
FULL_NAME="James McDonald"
```




```bash
./al2r.sh
```