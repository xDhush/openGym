# Follow-up requests (verbatim)

Messages after the original brief that changed what was done. User messages are quoted exactly. Automated messages from the repository's hooks and the session are also listed, because they decided when work was committed.

## 2026-11-07: repository commit hook (automated, not a user message)

The repository's stop hook sent this message twice while the research was running, at the end of two coordinator turns:

> [command hook]: There are untracked files in the repository. Please commit and push these changes to the remote branch.

Effect: the notes were committed and pushed to branch `ccr-e2302cd2-ujg0h5` as each research track finished, instead of once at the end. That is why the history has nine research commits (c6a14d8d to 16d0aedc).

## 2026-11-07: session worker restart (automated, not a user message)

> This session's worker process was restarted. If your previous turn was already complete, take no action and wait for the next event. Otherwise, continue from where you left off.

Effect: none on the results. The coordinator picked up where it left off (adding hosts to the network allowlist before the verification pass).

## 2026-11-11: request to archive everything (user message)

> I want you to commit everything done to a new folder in the repository and push it. Make sure you define proper sub-folders, index and explanation docs and overview.
> I do not want any context lost.

Effect: this folder. The notes and report were moved here; the brief, every agent's prompt and final report, the working data, and the process documentation were added. What could not be added, and why, is listed in the [overview](../README.md#what-is-not-in-this-folder-and-why).
