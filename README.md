# Base Flask/SQLALchemy Lambda Layer
By JetBridge.

Hopefully it saves you some time by making your package smaller. Does not include [JetKit](https://github.com/jetbridge/jetkit-flask) but rather some dependencies for it.

Includes flask, sqlalchemy, faker, pytest, bs4, and more.

## ARN
### Python 3.8
```
- arn:aws:lambda:eu-west-1:898466741470:layer:jetkit-py38:2
- arn:aws:lambda:eu-central-1:898466741470:layer:jetkit-py38:2
```

### Python 3.7
```
- arn:aws:lambda:eu-west-1:898466741470:layer:jetkit-py37:1
- arn:aws:lambda:eu-central-1:898466741470:layer:jetkit-py37:1
```


## Serverless
If using serverless, you will need the following in your `serverless.yml`:
```
custom:
  pythonRequirements:
    noDeploy:
      - werkzeug
      - flask
      - sqlalchemy
      - faker
      - pytest
      - future
      - pytz
      - alembic
      - jinja2
      - beautifulsoup4
      - bs4
      - text_unidecode
      - requests
      - marshmallow
      - python_dateutil
      - soupsieve
      - chardet
      - attrs
      - mako
      - certifi
      - idna
      - urllib3
      - pyparsing
      - packaging
      - more_itertools
      - dateutil
      - click
```

## Regions
Please use the layer that matches your region, or you will get a permissions error.

If you desire another region, please open an issue.
