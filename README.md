Run `./test-redir.sh` to show results:

```sh
~/play/yarn-workspaces-colors ❯❯❯ ./test-redir.sh
=====> Direct invocations...
Normal invocation...
Is TTY? { stdout: true, stderr: true, stdin: true }

Redirecting stdin...
Is TTY? { stdout: true, stderr: true, stdin: false }

Redirecting stderr...
Is TTY? { stdout: true, stderr: false, stdin: true }

Redirecting stdout...
Is TTY? { stdout: false, stderr: true, stdin: true }

Redirecting all...
Is TTY? { stdout: false, stderr: false, stdin: false }


=====> Via yarn...
Directly in package1 dir...
Is TTY? { stdout: true, stderr: true, stdin: true }

From workspace root with "workspace"...
Is TTY? { stdout: true, stderr: true, stdin: true }

From workspace root with "workspaces foreach"...
➤ YN0000: Is TTY? { stdout: false, stderr: false, stdin: true }
➤ YN0000:
➤ YN0000: Done in 0s 335ms
```

Note difference in results from last two invocations.  (Output FORMAT, the `>YN0000:` is not the issue!)
