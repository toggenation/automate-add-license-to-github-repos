# Loop through my Git Repositories and add a license

The `al2r.sh` (add license to repository) script does the following
1. Starts the ssh-agent and prompts to add your SSH keys
1. Clones all your public repo's to local 
2. Copies `LICENSE.md` into each repository
3. Commits the change and pushes it back up to github


Clone this repo

Copy `env.example` to `.env`

Goto [https://github.com/settings/tokens](https://github.com/settings/tokens) and while logged in as your github user create a Personal Access Token.

Update `.env` with your github username and PAT.


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