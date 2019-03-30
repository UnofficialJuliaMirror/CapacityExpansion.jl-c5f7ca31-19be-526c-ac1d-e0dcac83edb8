# OptDataCEP - Data for the CEP
## Provided Data
`load_cep_data_provided` loads the non time-series dependent data for the `CEP` and can take the following regions:
- `GER`: Germany
- `CA`: California
- `TX`: Texas

```@docs
load_cep_data_provided
```
## Your Own Data
Use `load_cep_data` with `data_path` pointing to the folder with your cost, node, (line), and technology data.

```@docs
load_cep_data
load_cep_data_techs
load_cep_data_nodes
load_cep_data_lines
load_cep_data_costs
```

##OptDataCEP Types
```@docs
OptDataCEP
OptDataCEPTech
OptDataCEPNode
OptDataCEPLine
```
## Examples
### Example loading CEP Data
```@example 2
using CEP
state="GER_1"
# load ts-input-data
cep_data = load_cep_data_provided(state)
cep_data.costs
```
### Example indexing OptVariables
Indexing is provided similar to Arrays:
```@example 2
cep_data.costs["pv","germany",2015,"cap_fix","EUR"]
```
The axes are named and the axes can be called using the basic axes function and providing the sets name:
```@example 2
axes(cep_data.costs,"tech")
```