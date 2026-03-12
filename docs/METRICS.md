# Google HEART Framework

### Google Slides Link: https://docs.google.com/presentation/d/15nAkAtiMZhnlv2qQNDTIhjhsqAOqCoXYpsZhWnDNttU/edit?usp=sharing

# Metric Collection (Backend)



### Retention (7-day / 30-day)

- Firebase Analytics tracks whether users return to the app after their first login.
- When a user signs up, their first login timestamp is stored in Firebase Authentication and Analytics.
- Retention is measured by checking if the same user opens the app again after **7 days and 30 days** from their initial signup date.
- Firebase Analytics automatically records **user sessions** and **returning users**, which allows us to compare new users with returning users over time.
- This metric helps determine whether users continue using ShelfLife to manage their groceries, track expiration dates, and receive recipe suggestions instead of abandoning the app after the first use.

### Adoption

- Firebase authentification automatically tracks how many users create an account / sign up.
- This metric helps determine how many users weve gained over a certain amount of time, and if the amount of users is increasing or decreasing over time.

### Daily Active Users 
- The daily active users are tracked with firebase analytics.
- DAU is important because it helps evaluate product growth, user engagement, and the effectiveness of features such as expiration reminders and recipe recommendations.

### Net Promoter Score (NPS):
- The Net Promoter Score (NPS) is a key Happiness metric that asks users to rate their likelihood of recommending the app on a scale of 0 to 10.
-	This is implemented by embedding a short in-app survey that prompts users after key interactions (e.g., after adding items or receiving an expiration reminder).
-	Users are asked: “How likely are you to recommend ShelfLife to a friend or family member?” on a scale of 0–10.
-	Responses are categorized as: Promoters (9–10), Passives (7–8), and Detractors (0–6). NPS = % Promoters − % Detractors.
-	Survey results are collected via Firebase Analytics and analyzed to gauge overall user satisfaction and identify areas for improvement.

