# OpenStack Data storage volume

A block storage volume for OpenStack.

## Variables

| Variable      | Description                     | Default value   |
| :-----------: | :-----------------------------: | :--------------:|
| `name`        | Name of the block volume        | `volume`        |
| `description` | Description of the block volume | `Generic block storage volume for ecp` |
| `size`        | Size in GB of the volume        | `10`            |



## Outputs

| Variable      | Description                                 |
| :-----------: | :------------------------------------------:|
| `volume_id`   | The ID assigned by OpenStack to the volume  |
