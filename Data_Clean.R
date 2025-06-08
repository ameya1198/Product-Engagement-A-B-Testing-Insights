user_data_1 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA.csv')
user_data_2 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-2.csv')
user_data_3 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-3.csv')
user_data_4 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-4.csv')
user_data_5 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-5.csv')
user_data_6 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-6.csv')
user_data_7 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-7.csv')
user_data_8 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-8.csv')
user_data_9 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-9.csv')
user_data_10 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-10.csv')
user_data_11 <- read.csv('/Users/ameyaphansalkar/Downloads/MOCK_DATA-11.csv')

user_data <- rbind(user_data_1, user_data_2, user_data_3, user_data_4, user_data_5, user_data_6,
                   user_data_7, user_data_8, user_data_9, user_data_10, user_data_11)

str(user_data)

user_data$date<- as.POSIXct(user_data$date, format = "%Y-%m-%dT%H:%M:%SZ", tz = "UTC")

write.csv(user_data, '/Users/ameyaphansalkar/Downloads/User_Data_2020_2025.csv')
