# indented
By Morgan Aldridge <morgant@makkintosshu.com>

## OVERVIEW

`indented` is a small utility written in `bash` which indents the output of the command passed as a parameter.

## USAGE

Prepend `indented` to any command:

    indented echo "Hello world"

Output:

      Hello world

Because `indented` increments `INDENT_LEVEL` prior to executing the command and decrements it upon completion, it inherently supports nested calls. So, if you have another command or function that itself calls `indented`, it's output will be further indented. For example:

    indented indented echo "Hello world"

Output:

        Hello world

## ENVIRONMENT VARIABLES

* `INDENT_CHAR` - The character(s) used to indent (default: '  ' [two spaces])
* `INDENT_LEVEL` - The current indent level (default: `0`)

