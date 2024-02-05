# Assignment 6

![Assignment 6](https://github.com/PGE383-HPC/assignment6/actions/workflows/main.yml/badge.svg)


## Instructions

1. **Move** the existing `$HOME/.bashrc` file into this repository and name it `bashrc` (removing the period "." from the filename will make it visible by default on all filebrowser systems). Don't forget to `git add bashrc` to ensure the file is tracked in the repository before committing.

1. There is a template `bash_profile` in this repository.  Add logic to the `bash_profile` that checks to see if the file `$HOME/.bashrc` exists, if and only if it does exist, then `source` it from the `bash_profile ` file.

1. Add "vi mode" command line editing to your `bash_profile`.

1. Add the following alias *exactly as is appears* to the **first line** of `bashrc`:

   ```bash
   alias lla='ls -la'
   ```

## Testing

If you would like to check to see if your edits to `bash_profile` and `bashrc` are correct run 

```bash
./install.sh
source $HOME/.bash_profile
alias lla > lla.txt
```
 
followed by the command `python test.py` at the command prompt.  A status message of `OK` indicates you have the correct answer. 
