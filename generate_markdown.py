
import re
import os

source_file_extension = ".erl"
code_segment_prefix = '```erlang'
code_segment_suffix = '```'
comment_start = '%%'

def get_markdown_files(summary_file):
    pattern = re.compile('.*?\((\S+)\)')

    with open(summary_file) as f:
        for line in f:
            m = pattern.match(line)

            if m:
                filename = m.group(1)
                if filename.endswith(source_file_extension):
                    if not os.path.exists(filename.replace('.md', source_file_extension)):
                        raise FileNotFoundError(filename)

                    yield filename



for source_file_name in list(get_markdown_files('./SUMMARY.md')):
    md_file_name = source_file_name.replace(source_file_extension, '.md')

    new_line = '\n'
    # this grammar only works on python 3,
    # contextlib.nested can be used on python 2
    with open(source_file_name, 'r') as source_file, open(md_file_name, 'wt') as md_file:
        segment = 'undefined'

        for line in source_file:
            line = line.rstrip()
            # if it's empty line
            if not line:
                md_file.write(line)
                md_file.write(new_line)

            elif line.startswith(comment_start):
                if segment == 'code':
                    md_file.write(code_segment_suffix)
                    md_file.write(new_line)
                    md_file.write(new_line)

                segment = 'comment'

                md_file.write(line.lstrip(comment_start).lstrip())
                md_file.write(new_line)
            else:
                if segment != 'code':
                    md_file.write(code_segment_prefix)
                    md_file.write(new_line)

                segment = 'code'

                md_file.write(line)
                md_file.write(new_line)



        if segment == 'code':
            md_file.write(code_segment_suffix)
            md_file.write(new_line)