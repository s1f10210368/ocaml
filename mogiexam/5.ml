let grass =
  let counter = ref 1 in
  fun() ->
    let result = String.make !counter 'w' in
    counter := !counter +1;
    result
