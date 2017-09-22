ALTER TABLE Users
ADD CONSTRAINT Check_ProfilePictureSize CHECK(DATALENGTH(ProfilePicture) <= 900 * 1024)
