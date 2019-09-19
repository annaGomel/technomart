<?php
namespace App\Admin\Controllers\Shop;
use App\Http\Controllers\Controller;
use App\Category;
use Encore\Admin\Form;
use Encore\Admin\Grid;
use Encore\Admin\Show;
use Encore\Admin\Facades\Admin;
use Encore\Admin\Layout\Content;
use Encore\Admin\Controllers\ModelForm;
use Encore\Admin\Tree;
class CategoryController extends Controller
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
            $content->header('Categories');
            $content->breadcrumb(
                ['text' => 'Shop'],
                ['text' => 'Categories', 'url' => '/shop/categories']
            );
            $content->body($this->tree());
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
                ['text' => 'Categories', 'url' => '/shop/categories'],
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
                ['text' => 'Categories', 'url' => '/shop/categories'],
                ['text' => 'Create new']
            );
            $content->body($this->form());
        });
    }
    /**
     * Make a grid builder.
     *
     * @return Tree
     */
    protected function tree()
    {
        return Category::tree(function (Tree $tree) {
            $tree->branch(function ($branch) {
                $src = config('admin.upload.host') . '/uploads/' . $branch['logo'] ;
                $logo = '';
                if ( trim($branch['logo']) !== '' ) {
                    $logo = "<img src='$src' style='max-width:30px;max-height:30px' class='img'/>";
                }
                return "{$branch['id']} - {$branch['title']}  - {$branch['slug']} $logo";
            });
        });
    }
    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Category::form(function (Form $form) {
            $form->display('id', 'ID');
            $form->select('parent_id','Parent Category' )->options(Category::selectOptions());
            $form->text('title', 'Title')->rules('required');
            $form->text('slug')->rules('required');
            $form->textarea('description', 'Description')->rules('required');
            $form->image('logo');
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
        $show = new Show(Category::findOrFail($id));

        $show->field('id', __('ID'));
        $show->field('parent_id', 'Parent Category');
        $show->field('title', __('Title'));
        $show->field('slug', __('Slug'));
        $show->field('logo', 'Logo');
        $show->field('description', 'Description');
        $show->field('created_at', __('Created at'));
        $show->field('updated_at', __('Updated at'));

        return $show;
    }


}
