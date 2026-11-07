# openGym inventory for Delva

What openGym (github.com/DuarteSantos8/openGym, AGPL-3.0) already does for each item of Delva's
program content spec (29 Oct 2026), plus vision, audio, rep counting and user grouping.

- Written 2026-11-07 from the openGym code in this repository (main at 8fb98b16).
- **Clean-room rule:** everything here is an idea or rule described in our own words. Do not copy
  openGym code, text or media into Delva. The code is AGPL-3.0. The exercise media are licensed
  from Gym visual "for use in openGym only". The exercise text came via ExerciseDB, and its
  origin is not proven.

**Fit labels:**
- **Strong:** openGym already solves the same problem; borrow the idea.
- **Partial:** some pieces fit.
- **Gap:** openGym does not do it.

## openGym words in plain language

| openGym word | What it means | Closest Delva word |
|---|---|---|
| Routine | A saved workout: a named, ordered list of exercises | Workout |
| Slot | One exercise inside a routine, with its own sets, reps, rest and rules | How a workout uses an exercise |
| Queue (or "pass") | An ordered list of workouts. The first unfinished one is "next" on whatever day you train | The sequence |
| Rotation | A loop of workouts that starts over when every workout in it is done | (none yet) |
| Day override (or "pin") | Moving one workout to one date without changing the weekly plan | One-off schedule move |
| Programme | A block of 1 to 16 weeks on top of your routines. Each week can change how hard it is | Program journey |
| Progression rule | Decides the next session's numbers from what you actually did last time | Planned development |
| Coach review | An AI suggestion of changes that the user accepts or declines | Chapter review |

## Scorecard

| # | Delva item | Fit | Closest openGym feature |
|---|---|---|---|
| 1-5 | Program catalogue | Partial | Starter plans; exercise kept separate from how a routine uses it |
| 6 | Joining and confirming | Partial | Coach intake questions, nothing changes until you apply, start dates in the future |
| 7 | Preview order | Gap | Nothing like it |
| 8 | Eight-week minimum | Partial (opposite clock) | Programmes count calendar weeks |
| 9 | Missed workouts stay next | Strong | The queue |
| 10 | Four chapters | Partial | Rotation "passes" |
| - | 14 active days per chapter | Gap | Nothing like it |
| 11 | Chapter purpose | Partial | Programme weeks, but they only change intensity |
| 12 | Weekly commitment | Strong | Weekly target and "2 of 4 left this week" |
| 13 | Start date and schedule | Partial | Day overrides |
| 14 | Workout structure | Partial | Routines, backup exercises |
| 15 | Session format | Partial | Automatic warm-ups, exercise instructions |
| 16 | Duration and effort | Partial | Measured duration, effort rating per set |
| 17 | Repetition and development | Strong (as a principle) | Progression rules |
| 18 | Rest days | Partial | Rest day status, excused days |
| 19 | What's coming up | Strong | Progress row: done, next, pinned, later |
| 20 | Credit for shortened and partial workouts | Gap (rules), Partial (data) | Saved workouts keep planned and performed side by side |
| 21 | Pause, return, change | Partial | Programme pause, Coach accept/decline, quiet nudges |
| 22 | Progress and history | Partial | Workout records, streak worked out from the log |
| 23 | Check-ins and reviews | Strong (timing) | Coach review timing |
| 24 | Completion | Partial | Programme end, report |
| + | Vision form tracking | Gap | Form videos only (record and watch, no analysis) |
| + | Real-time audio | Strong | Spoken cues |
| + | Rep counting | Gap | Holds time themselves, but reps are ticked by hand |
| + | User grouping | Gap | Coach intake, strength grading by sex and age |

## 1 to 5: The program catalogue

**What Delva needs:**
- Five programs set apart by purpose, not difficulty.
- The same exercise can appear in several programs with a different job.
- Each program promises a process, not a result.

**What openGym does:**
- Starter plans (`frontend/src/lib/starter.js`), each a set of routines plus fixed weekdays, named by
  how they split the body rather than by purpose:
  - Push/Pull/Legs (3 days)
  - Upper/Lower (4 days)
  - Full Body (3 days)
  - 5×5 (3 days)
- When you pick a plan, any exercise your equipment can't do is replaced with the closest one it
  can. The replacement must work the same body part and share a main muscle. A stretch or warm-up
  drill never stands in for a strength exercise.
- Each catalogue exercise holds only what it is: name, body part, equipment, main muscle, helper
  muscles, a one-line description and numbered instructions.
- How a routine uses an exercise sits on the slot instead: sets, reps, rest, timed or counted, and
  the progression rule.

**Borrow:**
- Keep "what an exercise is" apart from "what this program asks of it".
- Use the "replace with the closest suitable one" pattern for level and safety limits as well as
  equipment.

**Watch out:** openGym plans carry no purpose statement or promise text.

## 6 and 7: Joining and previewing

**What openGym does:**
- The Coach asks one question per screen: goal, experience, days per week, session length,
  equipment, limitations.
- Its suggestion arrives with a reason under every change. Nothing happens until you tap apply.
- Starting a programme ends any running one and saves your old plan so it can be put back
  (`frontend/src/lib/programmes.js`, `startProgramme`).
- A workout list keeps "when it was set up" (`since`) apart from "when it becomes active"
  (`startsOn`), so Home can show "next week is waiting".
- There is no preview screen.

**Borrow:**
- A reason under every recommendation.
- An explicit confirm.
- Join date and first-workout date stored separately.
- One active journey.

**Delva differs:** Delva picks one of its authored plans by rule. It does not write plans with AI.

## 8 to 11: Duration and chapters

### 8. Eight weeks is the minimum

**What openGym does:**
- Programmes count calendar weeks from the start.
- A missed session does not hold the block up, but a pause does. The pause date is stored, and on
  resume the start moves forward by the whole weeks paused.

**Watch out:** this is the clock Delva rejected. Only the pause idea carries over, and Delva counts
days, not whole weeks.

### 9. Missed workouts keep one sequence (strongest match)

**What openGym does** (`frontend/src/lib/queue.js`):
- "The first one not done yet is today's session on whatever day you next train."
- A session counts as done when a finished workout on that routine exists after the list started.
  A workout still in progress never counts.
- A deleted workout drops out of the list instead of blocking it.
- Missed-day reminders: with a floating list, the day after a workout is a rest day. Only the
  second day off in a row counts as missed.
- The server mirrors the same rule (`api/queue.js`).

**Watch out:** an openGym list holds each routine only once. Delva repeats workouts, so it should
track each requirement as its own item ("Chapter 1, requirement 4"), never only by workout id.

### 10. Four chapters without four separate starts

**What openGym does** (`frontend/src/lib/rotation.js`):
- A pass is complete when all its workouts are done.
- The next pass starts the day after the workout that finished the old one, so one workout can't
  tick both passes.
- The plan definition (`S.rotation`) is kept apart from the live list (`S.queue`).

**Borrow:**
- Chapter = pass of requirements.
- The one-day gap matches Delva's "start the next chapter on its next eligible selected day".
- Keep the chapter definition separate from the user's progress through it.

### 14 active days and earliest finish dates: Gap

Delva designs this itself, using two openGym ideas: the pause shift, and working counts out from the
log.

### 11. Each chapter has a purpose

**What openGym does:** programme weeks only change intensity (deload, RPE, %1RM). The block keeps one
schedule throughout.

**Borrow:** a base plan plus small per-stage changes, keyed by exercise or routine plus exercise.

**Delva differs:** chapters change teaching and content, not load.

## 12 to 16: Commitment and workout content

### 12. Weekly commitment (strong match)

**What openGym does:**
- A weekly target of 1 to 7 workouts.
- A countdown such as "2 of 4 left this week" (`week-left.js`).
- Each planned workout gets credit from exactly one real workout: the earliest one that qualifies.
  Every other workout counts as "training on top" (`queue.js` `weekTally`).

**Borrow:**
- One credit per requirement.
- Extra training shown but kept separate.

### 13. Start date and schedule

**What openGym does:**
- A per-date override (`S.dayPlan[date]`) moves one workout, or rests a day, without changing the
  weekly plan.
- Moves expire when the workout is done or the date passes.
- In programmes, week 1 is the calendar week you started in, even a partial one.

**Borrow:** one-off moves stored separately from recurring days, and moves that expire on their own.

**Watch out:** the partial-week rule is the opposite of Delva's.

### 14. Workout structure

**What openGym does:**
- Ordered slots, with up to 5 backup exercises per slot, plus supersets and warm-up sets.
- A programme sequence can contain rest entries.
- Starter plans are written separately for each number of days.
- There is no required/optional flag.

**Borrow:**
- The backup list as Delva's pre-approved swaps.
- Write each frequency separately.

### 15. Session format

**What openGym does:**
- Automatic warm-ups, or a routine's own warm-up rows.
- Exercise descriptions and numbered instructions.
- No cool-down phase.

**Borrow:** a short description line plus numbered steps.

### 16. Duration and effort

**What openGym does:**
- Time per exercise is worked out from when each set was ticked (`exercise-time.js`).
- A gap of more than 20 minutes ends a forgotten session at its last set.
- Effort can be rated per set (RIR or RPE).
- No duration estimate before starting was found.

**Borrow:** measure actual duration from set times.

## 17 to 20: Repetition and credit

### 17. Repetition and planned development (strong in principle)

**What openGym does** (`progression.js`):
- Six progression rules decide the next numbers from what you actually did, never from the date.
- Finishing never rewrites the routine.
- After 3 misses in a row (1 for Greyskull), the weight drops by 10%.
- "Double progression" adds reps within a range, then load.
- "Time" does the same for holds.

**Borrow for bodyweight:**
- "Add load" becomes "move to a harder variant".
- "Drop 10%" becomes "step back one variant".

### 18. Rest days and optional activity

**What openGym does:**
- Rest days are always calm, never "don't train".
- You can always start your own workout.
- Excused days (`day-notes.js`): sick, travelling, rest or injured. Only today and past days can be
  marked.

**Borrow:**
- Excused days.
- Calm rest-day wording.
- No excuses for future days.

### 19. Upcoming visibility (strong match)

**What openGym does:**
- Each workout shows as done, next, moved (with its date) or later.
- The list shows "waiting" when it starts in the future.
- The next workout is shown on one date only.

**Borrow:** those states, and show "next" once.

### 20. Shortened, edited and partial workouts (Gap)

**What openGym does:**
- One finished set counts the workout as done. There are no approved shorter versions.
- A saved workout keeps its routines, what the routine asked for (`planned`), and whether each set
  was ticked (`finish-workout.js`).
- Exercises with nothing ticked are dropped from the record.
- Mid-workout Coach changes never touch logged sets or the routine (`coach-adapt.js`).

**Borrow:**
- Planned and performed side by side.
- Changes during a session apply to today only.
- The earliest qualifying workout earns the credit.

**Watch out:** Delva must keep skipped required work in the record.

## 21 and 22: Changes and history

### 21. Pause, return, change

**What openGym does:**
- Programme pause and resume.
- The missed-day nudge stops after 3 missed days until the next workout. Nothing is stored for it;
  it is read from the plan and the log.
- The user accepts or declines Coach changes, with an undo.
- An out-of-date suggestion turns grey (plan hash).
- Scheduled reviews skip silently when nothing is new.
- Switching keeps one saved old plan, but progress in an ended programme is not kept.

**Delva needs:** a saved record per program journey.

### 22. Progress and workout history

**What openGym does:**
- A record keeps date, start, end, routines, planned and performed sets, and notes.
- Edits carry a time label, so the newest wins across devices.
- The streak is worked out from the log every time and never stored.

**Borrow:**
- Work counts out from the log.
- History records facts.

**Delva needs:** the scheduled date, the requirement fulfilled and the credit earned.

## 23 and 24: Reviews and completion

### 23. Check-ins and reviews (strong on timing)

**What openGym does** (`api/coach/cadence.js`, `api/coach/core/due.js`):
- Reviews run weekly or every N workouts, and skip when nothing is new.
- Never a second review while one is unanswered.
- Silence instead of "nothing to report".
- One shared "is it due" rule for server and phone.

### 24. Program completion

**What openGym does:**
- A programme is done when its weeks run out. You then run it again or go back to your old plan.
- The report, PDF and recap card all use the same numbers.

**Borrow:** one source of numbers for history, report and sharing.

## Extra features

- **Vision: Gap.**
  - Form videos (`set-videos.js`) record a set and compare two dates side by side.
  - "Keep videos on this phone only" option.
  - No analysis.
- **Audio: Strong** (`spoken-cues.js`, `speech.js`).
  - Next set ("Set 3, 80 kilos, 8 reps"), "10 seconds", "Rest is over", and 3-2-1-Go for holds.
  - Off by default.
  - In the app's language, using the phone's own voice.
  - Music is lowered briefly and never paused.
  - Speed is slow, normal or fast.
- **Rep counting: Gap.**
  - Reps are ticked by hand.
  - Hands-free holds (`auto-holds.js`): count in, hold, tick at zero, rest, repeat.
  - Clock-based, so a locked phone catches up.
- **User grouping: Gap.**
  - The Coach intake asks goal, experience, days, length, equipment and limitations.
  - Sex and age are used only to grade strength levels (`strength-level.js`, age adjustment from 40),
    never to pick a plan.
  - "Compare with others" (`api/coach/cohort.js`): admin and user opt-in, at least 3 people,
    medians only.

## The five lessons that matter most

1. The queue is a proven version of Delva's sequence. Track each requirement as its own item,
   because Delva repeats workouts.
2. Don't copy the calendar-week clock. Only the pause idea carries over.
3. Credit is Delva's biggest new design. openGym's data shape helps; its "one set is enough" rule
   doesn't.
4. Work numbers out from the log instead of storing counters.
5. One pending thing at a time, and silence when there's nothing to say.
