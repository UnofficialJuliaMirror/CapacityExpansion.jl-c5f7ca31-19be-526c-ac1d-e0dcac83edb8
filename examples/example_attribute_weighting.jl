include(normpath(joinpath(dirname(@__FILE__),"..","src","ClustForOpt_priv_development.jl")))

ts_input_data,~ = load_timeseries_data("CEP", "GER_1";K=365, T=24) #CEP

Scenarios=Dict{String,Scenario}()

attribute_weights=Dict("solar"=>1.0, "wind"=>2.0, "el_demand"=>3.0)

Scenarios["kmeans-4-attributed"] = Scenario(clust_res=run_clust(ts_input_data;n_init=10,n_clust=4,attribute_weights=attribute_weights)) # default k-means