# n — n for note (Git-backed timestamped note-taker)

`n` is a tiny, pure-Perl utility that lets you jot down time-stamped notes
organized by date—and automatically commits each new entry into a Git repo, so
you get full history, diffs, and easy search. Think of a hybrid between a CHANGELOG and a journal.

---

## Features

- **New note**:  
  ```console
  $ n
````

Creates `~/.notes/YYYY-MM-DD/HHMMSS.txt`, opens it in `$EDITOR` (or `ed`), then
`git add` & `git commit` it.

* **List** all notes:

  ```console
  $ n --list
  ```

  Shows the `~/.notes` tree via `git ls-tree` (requires Git).

* **Edit** an existing entry:

  ```console
  $ n --edit 2025-05-12/142305.txt
  ```

* **Delete** a single entry:

  ```console
  $ n --delete 2025-05-12/142305.txt
  ```

* **Wipe** an entire day:

  ```console
  $ n --del-date 2025-05-12
  ```

* **Manual page**:

  ```console
  man n
  ```

---

## Requirements

* Perl
* Git
* $EDITOR`, or fall back to `ed(1)
* GNU make

---

## Installation

1. **Clone** this repo (or copy files)

   ```sh
   git clone https:/github.com/ealvar3z/n.git
   cd n
   ```

2. **Install** binary and manpage

   ```sh
   sudo make install
   ```

   By default this puts:

   * `n` → `/usr/local/bin/n`
   * `n.1` → `/usr/local/share/man/man1/n.1`

3. **(Optional)** Change prefix or man directory:

   ```sh
   sudo make install PREFIX=/opt/local   \
                 MANPREFIX=/opt/local/share/man
   ```

---

## Uninstallation

```sh
sudo make uninstall
```

This removes the installed `n` binary and its manpage.

---

## Usage Examples

1. **Quick jot**

   ```sh
   n
   # → pops your editor; save & exit
   ```

2. **Search across every note**

   ```sh
   cd ~/.notes
   git grep -n "TODO"
   ```

3. **Tag a milestone**

   ```sh
   cd ~/.notes
   git tag project-kickoff-2025-06-01
   ```

---

## License

Public domain — do as you wish.

