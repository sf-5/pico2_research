file(READ ${input_file} content)
file(WRITE ${output_file} "static const char sample_txt[] = { \"${content}\" };")