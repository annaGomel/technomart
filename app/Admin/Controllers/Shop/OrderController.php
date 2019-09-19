<?php
namespace App\Admin\Controllers\Shop;

use App\Http\Controllers\Controller;
//use App\Models\Shop\Category;
//use App\Models\Shop\Product;
use App\Order;
use Encore\Admin\Show;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
//use Encore\Admin\Tree;

class OrderController extends Controller
{
    use ModelForm;
    /**
     * Index interface.
     *
     * @return Content
     */
    public function index()
    {
        return Admin::content(function (Content $content) {
            $content->header('Orders');
            $content->breadcrumb(
                ['text' => 'Shop'],
                ['text' => 'Orders', 'url' => '/shop/orders']
            );
            $content->body($this->grid());
        });
    }

    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Admin::grid(Order::class, function (Grid $grid) {
            $grid->model()->orderBy('created_at', 'desc');
            $grid->id();
            $grid->customer_id()->editable();
            $grid->order_number()->editable();
            $grid->transaction_date()->editable();
            $grid->status()->editable();
            /**
            $grid->order_number()->display(function ($order) {
                return html_entity_decode($order);
            });
             */

            $grid->total_amount()->editable();
            $grid->disableExport();
            $grid->disableFilter();
            $grid->created_at();
            $grid->updated_at();

        });
    }

    /**
     * Edit interface.
     *
     * @param $id
     * @return Content
     */
    public function edit($id)
    {
        return Admin::content(function (Content $content) use ($id) {
            $content->header('Edit');
            $content->breadcrumb(
                ['text' => 'Shop'],
                ['text' => 'Orders', 'url' => '/shop/orders'],
                ['text' => 'Edit']
            );
            $content->body($this->form()->edit($id));
        });
    }
    /**
     * Create interface.
     *
     * @return Content
     */
    public function create()
    {
        return Admin::content(function (Content $content) {
            $content->header('Create new');
            $content->breadcrumb(
                ['text' => 'Shop'],
                ['text' => 'Orders', 'url' => '/shop/orders'],
                ['text' => 'Create new']
            );
            $content->body($this->form());
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {

        return Order::form(function (Form $form) {
            $form->display('id', 'ID');
            $form->text('status');
            $form->text('customer_id');
            $form->textarea('order_number', 'Order');
            $form->text('total_amount');
            $form->date('transaction_date', 'Transaction At');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
       //   $form->display('deleted_at', 'deleted At');
        });
    }


    /**
     * Make a show builder.
     *
     * @param mixed   $id
     * @return Show
     */
    protected function show($id)
    {
        $show = new Show(Order::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('customer_id', __('Customer'));
        $show->field('order_number', __('Order'));
        $show->field('total_amount', 'Total amount');
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));
        $show->field('transaction_date', __('Transaction At'));

        return $show;
    }
}
