#!/usr/bin/env node
console.log(
  "Is TTY?",
  {
    stdout: !!process.stdout.isTTY,
    stderr: !!process.stderr.isTTY,
    stdin: !!process.stdin.isTTY,
  },
  "\n"
);
