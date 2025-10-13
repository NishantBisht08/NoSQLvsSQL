import re

input_file = 'feed1.sql'
output_file = 'feed1_fixed.sql'

with open(input_file, 'r', encoding='utf-8') as f:
    sql = f.read()

# Replace "string" with 'string' for string literals
# This naive approach works if double quotes are only used for string literals in your file
fixed_sql = re.sub(r'"([^"]*)"', r"'\1'", sql)

with open(output_file, 'w', encoding='utf-8') as f:
    f.write(fixed_sql)

print(f"Fixed SQL saved to {output_file}")
