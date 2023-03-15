# some usefull scripts

## translating from file via shell

[translator](https://github.com/soimort/translate-shell)

### usage

creating translation

```bash
trans -b -i input.txt <input_lang>:<target_lang> -o output.txt
```

concat those 2 files with ' - ' between them

```bash
paste -d ' - ' input.txt /dev/null /dev/null output.txt > translated.txt
```
