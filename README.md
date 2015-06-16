# blarg API

blurb about how great our service is.

## API Docs

General notes about authentication, formatting of params, etc.

### Users

1. Get a list of all users.

#### GET '/api/users'

Status Code: 200 OK

Parameters: None

Example output:

```
{
  "users": [
    {
      "email": "test@lies.com",
      "id": 1,
      "created_at": "1 day"
    },
    {
      "email": "brit@theironyard.com",
      "id": 2,
      "created_at": "1 day"
    }
  ]
}
```

### Comments

General notes about comments.
