# AWS Data storage volume

A block storage volume for Amazon Web Services.

## Variables

| Variable            | Description                     | Default value   |
| :-----------------: | :-----------------------------: | :--------------:|
| `name`              | Name of the block volume        | `volume`        |
| `description`       | Description of the block volume | `Generic block storage volume for ecp` |
| `size`              | Size in GB of the volume        | `10`            |
| `region`            | AWS region                      | `us-west-2`     |
| `availability_zone` | AWS availability zone           | Hash table      |
| `volume_type`       | Type of AWS storage backend     | `gp2`           |


## Outputs

| Variable      | Description                           |
| :-----------: | :------------------------------------:|
| `volume_id`   | The ID assigned by AWS to the volume  |
