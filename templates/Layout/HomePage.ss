<div class="col-sm-12">
    <div class="row mb-4">
        <div class="col-sm-12 content text-center" role="main">
            $Content
            $Form
    		$CommentsForm
        </div>
    </div>

    <% if $FeaturedProducts.Exists %>
        <h2 class="text-center">
            <%t CatalogueFrontEnd.FeaturedProducts "Featured Products" %>
        </h2>
        <div class="row mt-4">
            <% loop $FeaturedProducts %>
                <div class="col-sm-4 col-lg-3 mb-4">
                    <% include ProductSummary %>
                </div>
            <% end_loop %>
        </div>
    <% end_if %>

    <% if $FeaturedCategories.Exists %>
        <% loop $FeaturedCategories %>
            <% include CategorySummary %>
        <% end_loop %>
    <% end_if %>
</div>