user_b <-read.csv('/Users/ameyaphansalkar/Documents/Product Analytics Dashboard/User_Data_2020_2025_with_AB.csv')

## View_Item Test

# Create binary variable: did the user view an item?
view_df <- user_b %>%
  group_by(user_id, experiment_group) %>%
  summarise(viewed_item = any(event_name == "view_item"), .groups = "drop") %>%
  mutate(viewed_item = ifelse(viewed_item, 1, 0))

# Count per group
view_summary <- view_df %>%
  group_by(experiment_group) %>%
  summarise(
    total = n(),
    viewed_item_users = sum(viewed_item)
  )

# Proportion test
prop.test(view_summary$viewed_item_users, view_summary$total, correct = FALSE)



## Purchase Rate

# binary variable: did the user make a purchase?
purchase_df <- user_b %>%
  group_by(user_id, experiment_group) %>%
  summarise(purchased = any(event_name == "purchase"), .groups = "drop") %>%
  mutate(purchased = ifelse(purchased, 1, 0))

# Count per group
purchase_summary <- purchase_df %>%
  group_by(experiment_group) %>%
  summarise(
    total = n(),
    purchasers = sum(purchased)
  )

# Proportion test
prop.test(purchase_summary$purchasers, purchase_summary$total, correct = FALSE)
