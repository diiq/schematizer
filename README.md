
## Intallation
```
$ gem install specific_install
$ gem specific_install -l https://github.com/diiq/schematizer.git
```
## Usage

Make a yaml file, in db/schema.yaml.

Each top-level block will be lowercased, pluralized, and made into a table; each key within a table is a column name. Columns *need* a type; they *may* also be non-null and/or indexed:


```yaml
Project:
  name: string, non-null, indexed

Task:
  name: string, non-null
  description: string
  project_id: uuid, non-null, indexed
  category_id: uuid, indexed
```

then, from the root of your rails project, run

```
$ schematizer
$ rails db:reset
```

And like magic, your DB will reflect your yaml.

All ids are uuids. If you make a User table, it will be prepped to be used with devise-token-auth.

## Contributions

This was built purely for my own use. Pull requests are welcome; but I'll reject 'em if they make my own work slower. Feel totally free to fork!

## Todo

- Allow choosing uuids vs integers
- Add foreign key constraints
- Create missing model files
