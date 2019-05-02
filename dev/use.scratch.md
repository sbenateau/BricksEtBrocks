Galaxy game style User Interface

Yvan & Simon
## Galaxy-bricks & scratch
After a lot of time trying to use existing Scratch instances to test adding custom "Galaxy-bricks" extension, I finally decided to deploy a local Scratch server.
It appears that Scratch V2 was outdated... Then ScrachX also... Finally, only consider Scratch V3 !
Find a tuto describing how to deploy a scratch3 server specific for testing notably addition of custom extensions: https://scratch.mit.edu/discuss/topic/336496/
Tuto to add extensions: https://github.com/LLK/scratch-vm/blob/develop/docs/extensions.md
After that, we have to work on scracth-vm module then scratch-gui to add an extension: https://github.com/kyleplo/scratch-three-extension-docs/wiki/Testing-your-Extensions

### Now I have to use javascript code to execute Galaxy actions through Galaxy API / Bioblend.

#### To create a dataset
```
paste_content(content, history_id, **kwds)
```
Upload a string to a new dataset in the history specified by history_id.
Parameters
• content (str) – content of the new dataset to upload or a list of URLs (one per line) to
upload
• history_id (str) – id of the history where to upload the content
See upload_file() for the optional parameters.
put_url(content, history_id, **kwds)
Upload a string to a new dataset in the history specified by history_id.
Parameters
• content (str) – content of the new dataset to upload or a list of URLs (one per line) to
upload
• history_id (str) – id of the history where to upload the content
See upload_file() for the optional parameters.
upload_file(path, history_id, **keywords)
Upload the file specified by path to the history specified by history_id.
Parameters
• path (str) – path of the file to upload
• history_id (str) – id of the history where to upload the file
• file_name (str) – (optional) name of the new history dataset
• file_type (str) – Galaxy datatype for the new dataset, default is auto
• dbkey (str) – (optional) genome dbkey
• to_posix_lines (bool) – if True (the default), convert universal line endings to
POSIX line endings. Set to False when uploading a gzip, bz2 or zip archive containing
a binary file
• space_to_tab (bool) – whether to convert spaces to tabs. Default is False. Applicable
only if to_posix_lines is True
#### To run a tool:

run_tool(history_id, tool_id, tool_inputs)
Runs tool specified by tool_id in history indicated by history_id with inputs from dict
tool_inputs.
Parameters
• history_id (str) – encoded ID of the history in which to run the tool
• tool_id (str) – ID of the tool to be run
• tool_inputs (dict) – dictionary of input datasets and parameters for the tool (see
below)
The tool_inputs dict should contain input datasets and parameters in the (largely undocumented)
format used by the Galaxy API. Some examples can be found in Galaxy’s API test suite.
