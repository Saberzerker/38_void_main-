# import json

# with open('D:/DotSlash/cache/cache.json') as f:
#     data=json.load(f)

# print(data)

import json
from bs4 import BeautifulSoup

html_json = '{"tag": "div", "attrs": {"class": "my-class"}, "contents": ["Some text"]}'

# Parse HTML JSON
parsed_html = json.loads(html_json)

# Convert HTML JSON to dictionary JSON
def convert_html_json_to_dict_json(html_json):
    soup = BeautifulSoup('', 'html.parser')
    tag = soup.new_tag(parsed_html['tag'], **parsed_html['attrs'])
    if 'contents' in parsed_html:
        for content in parsed_html['contents']:
            if isinstance(content, str):
                tag.string = content
            else:
                tag.append(convert_html_json_to_dict_json(json.dumps(content)))
    return json.loads(str(tag))

dict_json = convert_html_json_to_dict_json(html_json)

# Output dictionary JSON
print(json.dumps(dict_json))


# 1) We got the basic cache query from the html page using a cacheviewer after clearing it from the webrowser

# 2) This can be directly accessed using HTML. To convert to html, we release the container elements so that the code
# can "escape" from the html limits to be saved as a json (html) code

# 3) This is then converted to a dictionary json using beautiful soup and implemented and stored in the local file using json

# 4) we use the key value pairs to obtain the specific data that we want to display offline. When there is sufficient speed of internet the system 
#checks for the latest updates. When there is barely or no internet the previously cached data is displayed with a timestamp of its last update




