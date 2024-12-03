from yaml import safe_load
from jinja2 import Environment, FileSystemLoader

env = Environment(loader=FileSystemLoader("templates"))
index = env.get_template("index.html")

with open('content.yaml', 'r') as input:
    content = safe_load(input)

html_content = index.render(
    title="Cheat Sheet",
    content=content,
)

with open('output.html', 'w', encoding="utf-8") as output:
    output.write(html_content)

print("Successfully created cheat sheet.")
