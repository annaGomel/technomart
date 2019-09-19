<?php
namespace App\Admin\Controllers\Shop;
use App\Http\Controllers\Controller;
use App\Category;
use App\Product;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
class ProductController extends Controller
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
            $content->header('Products');
            $content->breadcrumb(
                ['text' => 'Shop'],
                ['text' => 'Products', 'url' => '/shop/products']
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
        return Admin::grid(Product::class, function (Grid $grid) {

            $grid->id();
            $grid->title()->editable();
            $grid->slug();
//          $grid->photo()->image();
            $grid->cost();
//          $grid->disableActions();
//          $grid->disableBatchDeletion();
            $grid->disableExport();
//          $grid->disableCreation();
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
                ['text' => 'Products', 'url' => '/shop/products'],
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
                ['text' => 'Products', 'url' => '/shop/products'],
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
        return Product::form(function (Form $form) {
            $form->display('id', 'ID');
            $form->text('title')->rules('required');
            $form->text('slug')->rules('required');
            $form->select('category_id', 'Category')->options(Category::all()->pluck('title','id'));
            $form->image('image', 'photo');
            $form->textarea('content', 'Description');
            $form->text('price');
            $form->textarea('meta_description', 'Meta Description')->rows(2);
            $form->textarea('seo_title', 'SEO Title')->rows(2);
            $form->switch('is_active', 'Active');
            $form->display('created_at', 'Created At');
            $form->display('updated_at', 'Updated At');
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
        $show = new Show(Product::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('category_id', 'Category');
        $show->field('image', 'Photo');
        $show->field('content', 'Description');
        $show->field('price');
        $show->field('meta_description', 'Meta Description');
        $show->field('seo_title', 'SEO Title');
        $show->field('is_active', 'Active');
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));


        return $show;
    }


}
