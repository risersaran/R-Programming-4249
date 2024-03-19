# Get details of objects in memory
memory_details <- sapply(ls(), function(x) object.size(get(x)))

# Combine object names and sizes
details <- data.frame(Object = ls(), Size = memory_details)

# Sort objects by size in descending order
details <- details[order(-details$Size), ]

# Print details
print(details)
