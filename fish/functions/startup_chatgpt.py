from IPython.display import Markdown
from IPython import get_ipython

#

def md_formatter(md, pp, cycle):
    pp.text(md.data)

text_plain = get_ipython().display_formatter.formatters['text/plain']
text_plain.for_type(Markdown, md_formatter)

get_ipython().run_line_magic("load_ext", "jupyter_ai_magics")
