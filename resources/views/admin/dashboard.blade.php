<!-- Small boxes (Stat box) -->
<div class="row">
    <div class="col-lg-12">
        <!-- small box -->
        <div class="small-box bg-aqua">
            <div class="inner">
                <h3>{{ $orders }}</h3>
                <p>New Orders</p>
            </div>
            <div class="icon">
                <i class="ion ion-bag"></i>
            </div>
            <a  href="{{ url('/admin/shop/orders') }}" class="small-box-footer">To orders <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-12">
        <!-- small box -->
        <div class="small-box bg-green">
            <div class="inner">
                <h3>{{ $products }}</h3>
                <p>Products</p>
            </div>
            <div class="icon">
                <i class="ion ion-stats-bars"></i>
            </div>
            <a href="{{ url('/admin/shop/products') }}" class="small-box-footer">To products <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
    <div class="col-lg-12">
        <!-- small box -->
        <div class="small-box bg-red">
            <div class="inner">
                <h3>{{ $categories }}</h3>
                <p>Categories</p>
            </div>
            <div class="icon">
                <i class="ion ion-pie-graph"></i>
            </div>
            <a href="{{ url('/admin/shop/categories') }}" class="small-box-footer">To caterories <i class="fa fa-arrow-circle-right"></i></a>
        </div>
    </div>
    <!-- ./col -->
</div>
<!-- /.row -->
