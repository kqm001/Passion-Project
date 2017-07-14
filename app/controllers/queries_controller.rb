get "/queries/new" do
  erb :"/queries/new"
end

post "/queries" do
  @query = Queries.new(params[:query])
  if @query.save
    redirect "/queries/#{@query.id}"
  else
    status 422
    @errors = @query.errors.full_messages
    erb :"/queries/new"
  end
end

get "/queries/:id" do
  query = Queries.find_by(id: params[:id])
  response = Unirest.get "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/food/products/upc/#{query.barcode}",
  headers:{
    "X-Mashape-Key" => ENV['SPOON_KEY'],
    "Accept" => "application/json"
  }
  @product = response.body["title"]
  erb :"/queries/show"
end
