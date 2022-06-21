# Github Action running git-crypt unlock

## Usage

### Example Workflow file

```yaml
jobs:
  deploy:
    name: git-crypt-unlock
    steps:
      - uses: actions/checkout@master
      - name: Unlock secrets
        uses: philips-forks/github-action-git-crypt-unlock@1.3.0
        env:
          GIT_CRYPT_KEY: ${{ secrets.GIT_CRYPT_KEY }}
```

### Secrets

- `GIT_CRYPT_KEY` **Required** Base64 encoded git-crypt key file.
  - Get it from an unlocked git-crypt env with:
    ```sh
    git-crypt export-key - | base64 -w0
    ```

### Running tests

```shell script
./test/entrypoint_test.sh
```
