### A/B Test Name: Barcode Scan vs Manual Entry First Screen

## User Story Number:
US2 – Golden Path (Add Food Item)

## Metrics:
This A/B test will measure the following HEART metrics:

Task Success – CTR for Save Food button
Engagement – Daily Active Users (DAU)
Retention – User return rate
Task Success – Average number of food items added per active user

## Hypothesis:
If the app opens directly to the barcode scanner instead of giving users multiple options (barcode, scan date, manual entry), then users will add food items faster and more often, increasing task completion rate and engagement.

## What problem are we trying to solve? Its impact?
Currently, users must choose between multiple options (barcode, date scan, manual entry) before adding food. This extra decision step may slow users down or cause confusion, which may reduce the number of users who complete the Golden Path and add food items.

This is a bottleneck in the conversion funnel because users may open the app but not complete the food entry process. If users do not add food, the app provides no value, which hurts engagement and retention.

The impact of this problem is high because adding food is the core feature of ShelfLife. If users do not complete this step, the app fails its main purpose of reducing food waste.

## Experiment:
We will use Firebase A/B Testing and Firebase Analytics to run the experiment.

# Audience: New users and existing users who are adding a food item.
We will split users randomly:
- 50% of users see Version A
- 50% of users see Version B
- Firebase Analytics will track:
- food_entry_screen_view
- barcode_scan_started
- manual_entry_started
- save_food_click
- food_item_added
We will compare:
- CTR for Save Food button
- Number of food items added
- Time to complete food entry
- Retention after 7 days

We will run the experiment for 2 weeks and compare results between the two groups.

## Variations:
Version A (Current Design – Control)

User sees a screen with three buttons:
- Scan Barcode
- Scan Expiration Date
- Manual Entry

User must choose one before continuing.

Version B (New Design – Experiment)
- User opens the Add Food page and the barcode scanner opens immediately.
- There is also a small button for Manual Entry if the barcode does not work.

Goal: Reduce steps and make food entry faster.

Simple Diagram

Version A:

Add Food Screen:
- [Scan Barcode]
- [Scan Date]
- [Manual Entry]

Version B:

Barcode Scanner Opens Immediately:
- [Scanning Screen]
- [Manual Entry Button]

---

## A/B Test Name: In-App Survey vs No Survey After Adding Food Item

**User Story Number:** US4 – Golden Path (Add Food Item)

---

### Metrics

This A/B test measures the following HEART metric:

- Happiness – User satisfaction score (1–5 rating)  
- Happiness – Percentage of users giving positive feedback  
- Happiness – Survey response rate  
- Happiness – User feedback comments  

---

### Hypothesis

If users are shown a short in-app survey after adding a food item, then we will better understand user satisfaction because users can give feedback immediately after completing the main task while the experience is still fresh.

---

### What problem are we trying to solve? Its impact?

Currently, the app does not have a way to directly measure how users feel about the experience of adding a food item. While we can track actions such as food items being added, this only shows behavior and not satisfaction.

The problem is that we are missing feedback at the most important point in the user journey, which is after completing the Golden Path. Users successfully add a food item and then leave the app without providing any feedback. This is a bottleneck because we lose valuable insights at the moment when the user experience matters most.

This problem has a high impact because adding food is the core feature of the app. If users are not satisfied with this process, they may stop using the app. Without feedback, the team cannot clearly identify what needs improvement, which can negatively affect engagement and retention.

To narrow the problem, we focus specifically on what happens after a food item is added. The hypothesis is that users are not giving feedback because there is no prompt. By adding a simple in-app survey at this point, we can collect useful data about user satisfaction.

---

### Experiment

We will use Firebase A/B Testing and Firebase Analytics to run this experiment.

**Audience:**
- Users who successfully add a food item

**Traffic Allocation:**
- 50% of users will see Version A (Control)
- 50% of users will see Version B (Experiment)

This split ensures a fair comparison between both groups.

**Firebase Analytics Tracking:**

- food item added  
- survey shown  
- survey submitted  
- rating selected  

**We will compare:**

- Number of survey responses  
- Average satisfaction rating  
- Percentage of positive ratings  

**Duration:**
- The experiment will run for 1–2 weeks to collect enough data.

**Rationale:**
We target users right after they complete the Golden Path because this is when their experience is most recent and feedback will be most accurate.

---

### Variations

#### Version A (Control)
- User adds a food item  
- No survey is shown  

---

#### Version B (Experiment)
- User adds a food item  
- A short in-app survey appears immediately after  

**Example Survey:**
- "How satisfied are you?" (1–5 rating)  
- Optional feedback text box  

---

### Design Description

Version A:
User adds food item → no additional interaction  

Version B:
User adds food item → survey appears → user selects rating → optional feedback submitted  

### A/B Test Name: Expiration Reminder Day Of VS 2-Days Before

## User Story Number: US5 - Other Features

## Metrics:

Happiness: User satisfaction with reminders (in-app feedback)  
Engagement: Notification open rate  
Adoption: % of users enabling notifications  
Retention: 7-day return rate  
Task Success: % of food used before expiration  

## Hypothesis:

Problem - Users are not acting on expiration reminders, leading to food waste.  
Impact - High — core value of the app is preventing food waste.  

If reminders are sent earlier (e.g., 2 days before expiration instead of same-day), users will have more time to act, increasing food usage and reducing waste.

## Experiment:

Audience: 50% of active users who have ≥3 tracked items  
Control Group: Default reminder timing (same-day)  
Variant Group: Reminder sent 2 days before expiration  

## Variations:

A (Control): Same-day expiration reminder  
B (Variant): Reminder 2 days before expiration  



### A/B Test Name: Expiration Reminder Timing (Proactive vs Passive Alerts)
## User Story Number:
 US5 – Other Features

## Metrics:
This A/B test will measure the following HEART metrics:
Retention – 7-day and 14-day user return rate
Engagement – Notification click-through rate (CTR)
Happiness – In-app rating after notification interaction
Task Success – % of users who act on expiring items (use or remove food)

## Hypothesis:
If users receive proactive, timely expiration reminders (e.g., “Your milk expires tomorrow – use it now!”) instead of passive or generic notifications, then users will return to the app more frequently and engage more with their inventory, increasing retention.

## What problem are we trying to solve? Its impact?
Currently, users may forget about the app after adding food because reminders are either too generic or not urgent enough.
This creates a drop-off in retention, since users don’t have a strong reason to come back daily. Without consistent reminders, users may stop using the app altogether.
This is a critical issue because ShelfLife’s value depends on ongoing engagement over time, not just initial usage. If users don’t return, the app cannot help reduce food waste.

## Experiment:
We will use Firebase A/B Testing and Firebase Analytics.
# Audience: All active users with at least one food item stored.
Split:
50% → Version A
50% → Version B
Firebase Analytics will track:
notification_sent
notification_opened
app_open
food_item_used
food_item_removed
We will compare:
7-day retention rate
Notification CTR
Daily app opens per user
Actions taken on expiring food
Duration: 2 weeks

## Variations:
Version A (Control – Passive Alerts)
Users receive a generic notification:
“You have items expiring soon.”
Sent once per day

Version B (Experiment – Proactive Smart Alerts)
Users receive personalized, time-sensitive notifications:
Includes urgency + suggestion
Sent at optimal times (morning / evening)
Goal: Make reminders more actionable and increase return behavior.

Simple Diagram
Version A:
Notification:
You have items expiring soon → User opens app (optional)

Version B:
Notification:
EX. Food expires soon→  User opens app → Takes action

## A/B Test Name: Onboarding Tutorial vs. No Tutorial After Profile Creation
User Story Number: US1 – Account Creation / Sign In

## Metrics
This A/B test measures the following HEART metrics:

Adoption – % of new users who add at least one food item within 24 hours of signing up
Retention – 7-day user return rate
Task Success – CTR for the Save Food button (Golden Path completion)
Engagement – DAU among users who signed up in the test period


## Hypothesis
If new users are shown a short onboarding tutorial immediately after completing profile creation (name, photo, and birthday), then more users will successfully complete the Golden Path because they will arrive at the home screen already knowing what action to take, rather than having to discover it on their own.

## What problem are we trying to solve? Its impact?
Currently, after a user creates their account and fills in their profile, they are dropped onto the home screen with no guidance. At this point, the user has invested time in signing up and setting up their profile but has not yet experienced any core value from the app. If they do not understand what to do next, they are likely to leave without adding a single food item.
This is a critical drop-off point in the conversion funnel. A user who completes sign-up and profile creation but never adds food has not experienced ShelfLife's core value. Without that first moment of engagement, retention drops significantly.
The bottleneck is the transition from profile creation to first use. The single variable being tested is whether a brief tutorial at this exact moment — when the user is already engaged and mid-flow — increases the likelihood of them completing the Golden Path.

## Experiment
We will use Firebase A/B Testing and Firebase Analytics to run this experiment.
Audience: New users only (first-time sign-ups during the test window). Returning users are excluded since they have already passed this step.
Traffic Allocation:

50% of new users → Version A (Control)
50% of new users → Version B (Experiment)

Firebase Analytics will track:

profile_creation_complete
onboarding_tutorial_shown
onboarding_tutorial_skipped
onboarding_tutorial_completed
add_food_screen_view
save_food_click
food_item_added

We will compare:

% of new users who add a food item within 24 hours
Golden Path completion rate (save_food_click)
7-day retention rate
Tutorial skip rate vs. completion rate (Version B only)

Duration: 2 weeks to gather enough new sign-ups for statistical significance.

Variations
Version A (Control – No Tutorial)

User completes profile creation (name, photo, birthday)
App navigates directly to the home screen
No guidance is provided


Version B (Experiment – Onboarding Tutorial)

User completes profile creation (name, photo, birthday)
A 3-screen tutorial overlay appears before the home screen:

Screen 1: "Welcome to ShelfLife – track everything in your fridge and pantry"
Screen 2: "Add food by scanning a barcode or entering it manually"
Screen 3: "We'll remind you before items expire so nothing goes to waste"


A Skip button is available on every screen
After Screen 3, an "Add Your First Item →" CTA navigates directly to the Add Food screen


Design Description
Version A:
Sign up → Profile creation (name, photo, birthday) → Home screen
Version B:
Sign up → Profile creation (name, photo, birthday) → Tutorial Screen 1 → Tutorial Screen 2 → Tutorial Screen 3 → Add Food screen (via CTA) → Home screen

This test isolates a single variable — the presence of an onboarding tutorial at the exact handoff point between profile setup and first use. The skip button also gives you a secondary insight: if users who complete the tutorial convert at a higher rate than those who skip it, that further validates the tutorial's value.
