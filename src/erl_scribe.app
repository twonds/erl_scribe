{application, erl_scribe,
 [
  {description, "erl_scribe lib only app"},
  {vsn, "0.1.1"},
  {registered, []},
  {modules, [facebookService_thrift,
             scribe_logger,
             scribe_thrift,
             scribe_types]},
  {applications, [kernel,
                  stdlib,
                  inets
                 ]},
  {env, []}
 ]}.
