# Google HEART Framework

### Google Slides Link: https://docs.google.com/presentation/d/15nAkAtiMZhnlv2qQNDTIhjhsqAOqCoXYpsZhWnDNttU/edit?usp=sharing

# Metric Collection (Backend)



### Retention (7-day / 30-day)

- Firebase Analytics tracks whether users return to the app after their first login.
- When a user signs up, their first login timestamp is stored in Firebase Authentication and Analytics.
- Retention is measured by checking if the same user opens the app again after **7 days and 30 days** from their initial signup date.
- Firebase Analytics automatically records **user sessions** and **returning users**, which allows us to compare new users with returning users over time.
- This metric helps determine whether users continue using ShelfLife to manage their groceries, track expiration dates, and receive recipe suggestions instead of abandoning the app after the first use.
