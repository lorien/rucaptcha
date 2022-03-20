# Rucaptcha API Library

Yet another library to work with rucaptcha.com/2captcha.com API.

This implementation is focused on providing access to all features exposed by official API.

## Installation

`pip install rucaptcha`

## Library Design

Library provides set of methods:
 
 * `submit_task_FOO`
 * `process_task_FOO`

where FOO is one of supported captcha type:

* `image`
* `text`
* `recaptcha_v2`
* `recatpcha_v3`
* `recaptcha_enterprise`

Each method suppots its own set of parameters. Parameter names are very same as described in
official documentation.

## Usage Example

```python
from rucaptcha import RucaptchaApi


def main(**kwargs):
    api = RucaptchaApi('...API KEY...')
    with open("captcha.jpg", "rb") as inp:
        data = inp.read()
    answer = api.process_task_image(data)
    print(answer)
```

## Offical Service Documenation

* Russian: https://rucaptcha.com/api-rucaptcha
* English: https://2captcha.com/2captcha-api
