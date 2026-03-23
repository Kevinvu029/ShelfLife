### A/B Test Name: Barcode Scan vs Manual Entry First Screen

##User Story Number:
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

Add Food Screen
----------------
[Scan Barcode]
[Scan Date]
[Manual Entry]

Version B:

Barcode Scanner Opens Immediately
----------------
[Scanning Screen]
[Manual Entry Button]
