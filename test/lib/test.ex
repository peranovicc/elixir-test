defmodule TEST do
  def  do
    
  end
  def sample_list do
    [
      {"https://api.spacexdata.com/v4/launches/latest",:GET,nil,3500},
      {"https://api.spacexdata.com/v4/launches/latest",:GET,nil,5000},
      {"https://api.spacexdata.com/v4/launches/latest",:GET,nil,6000},
      {"https://api.spacexdata.com/v4/launches/latest",:GET,nil,5400}
    ]
  end

  def call_req(link) do
    HTTPoison.get!(link)
  end

  def single_client(requests,duration) do
    Enum.each(requests, fn x -> call_req(elem(x,0)) end)
  end
end
