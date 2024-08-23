### For Fungi ###

df <- read.csv("Fungi_302R.csv", header = FALSE)

# Define a function to get the rightmost non-empty value
find_rightmost_non_empty <- function(row) {
  # Loop from the end of the row to the beginning
  for (i in rev(seq_along(row))) {
    if (!is.na(row[i]) && row[i] != "") {
      return(row[i])
    }
  }
  return(NA)  # Return NA if all values are missing or empty
}

# Apply the function to each row and create the 'genus' column
df$genus <- apply(df, 1, find_rightmost_non_empty)

###################################################################################################

df$phylum <- NA
df$subphylum <- NA
df$class <- NA
df$subclass <- NA
df$order <- NA
df$suborder <- NA
df$family <- NA

# Getting phylum
# Iterate over each column
for (col in names(df)) {
  # Skip the 'phylum' column
  if (col == "phylum") next
  
  # Identify rows where the current column values end with "mycota"
  is_mycota <- grepl("mycota$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'phylum' column
  df$phylum[is_mycota] <- df[[col]][is_mycota]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_mycota] <- NA
}

# Getting subphylum
# Iterate over each column
for (col in names(df)) {
  # Skip the 'subphylum' column
  if (col == "subphylum") next
  
  # Identify rows where the current column values end with "tina"
  is_tina <- grepl("tina$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'subphylum' column
  df$subphylum[is_tina] <- df[[col]][is_tina]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_tina] <- NA
}

# Getting class
# Iterate over each column
for (col in names(df)) {
  # Skip the 'class' column
  if (col == "class") next
  
  # Identify rows where the current column values end with "mycetes"
  is_mycetes <- grepl("mycetes$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'class' column
  df$class[is_mycetes] <- df[[col]][is_mycetes]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_mycetes] <- NA
}

# Getting subclass
# Iterate over each column
for (col in names(df)) {
  # Skip the 'subclass' column
  if (col == "subclass") next
  
  # Identify rows where the current column values end with "mycetidae"
  is_mycetidae <- grepl("mycetidae$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'subclass' column
  df$subclass[is_mycetidae] <- df[[col]][is_mycetidae]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_mycetidae] <- NA
}

# Getting order
# Iterate over each column
for (col in names(df)) {
  # Skip the 'order' column
  if (col == "order") next
  
  # Identify rows where the current column values end with "ales"
  is_ales <- grepl("ales$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'order' column
  df$order[is_ales] <- df[[col]][is_ales]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_ales] <- NA
}

# Getting suborder
# Iterate over each column
for (col in names(df)) {
  # Skip the 'suborder' column
  if (col == "suborder") next
  
  # Identify rows where the current column values end with "ineae"
  is_ineae <- grepl("ineae$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'suborder' column
  df$suborder[is_ineae] <- df[[col]][is_ineae]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_ineae] <- NA
}


# Getting family
# Iterate over each column
for (col in names(df)) {
  # Skip the 'family' column
  if (col == "family") next
  
  # Identify rows where the current column values end with "aceae"
  is_aceae <- grepl("aceae$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'family' column
  df$family[is_aceae] <- df[[col]][is_aceae]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_aceae] <- NA
}

#######################################################################
# Rename columns V5 and V6
names(df)[names(df) == "V1"] <- "reads"
names(df)[names(df) == "V5"] <- "kingdom"
names(df)[names(df) == "V6"] <- "subkingdom"



# Specify the desired column order
desired_order <- c("kingdom", "subkingdom", "phylum", "subphylum", "class", "subclass", "order", "suborder", "family", "genus", "reads")

# Reorder columns based on the desired order
df_final <- df[, desired_order]


write.csv(df_final, "FSXU0302R_Hierarchical_Kaiju_Taxonomy_Fungi.csv")

########################################################################
### For Bacteria ###

df <- read.csv("Bacteria_302R.csv", header = FALSE)

# Define a function to get the rightmost non-empty value
find_rightmost_non_empty <- function(row) {
  # Loop from the end of the row to the beginning
  for (i in rev(seq_along(row))) {
    if (!is.na(row[i]) && row[i] != "") {
      return(row[i])
    }
  }
  return(NA)  # Return NA if all values are missing or empty
}

# Apply the function to each row and create the 'genus' column
df$genus <- apply(df, 1, find_rightmost_non_empty)

###################################################################################################

df$phylum <- NA
df$order <- NA
df$family <- NA

# Getting phylum
# Iterate over each column
for (col in names(df)) {
  # Skip the 'phylum' column
  if (col == "phylum") next
  
  # Identify rows where the current column values end with "ota"
  is_ota <- grepl("ota$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'phylum' column
  df$phylum[is_ota] <- df[[col]][is_ota]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_ota] <- NA
}

# Getting order
# Iterate over each column
for (col in names(df)) {
  # Skip the 'order' column
  if (col == "order") next
  
  # Identify rows where the current column values end with "ales"
  is_ales <- grepl("ales$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'order' column
  df$order[is_ales] <- df[[col]][is_ales]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_ales] <- NA
}

# Getting family
# Iterate over each column
for (col in names(df)) {
  # Skip the 'family' column
  if (col == "family") next
  
  # Identify rows where the current column values end with "aceae"
  is_aceae <- grepl("aceae$", df[[col]], ignore.case = TRUE)
  
  # Move matching values to 'family' column
  df$family[is_aceae] <- df[[col]][is_aceae]
  
  # Optionally clear the matching values in the original columns
  df[[col]][is_aceae] <- NA
}

# Rename columns
names(df)[names(df) == "V1"] <- "reads"
names(df)[names(df) == "V3"] <- "kingdom"


# Specify the desired column order
desired_order <- c("kingdom", "phylum", "order", "family", "genus", "reads")

# Reorder columns based on the desired order
df_final <- df[, desired_order]

write.csv(df_final, "FSXU0302R_Hierarchical_Kaiju_Taxonomy_Bacteria.csv")













