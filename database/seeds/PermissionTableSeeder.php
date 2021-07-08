<?php
  
namespace Database\Seeders;
  
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Permission;
  
class PermissionTableSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        $permissions = [
           'role-list',
           'role-create',
           'role-edit',
           'role-delete',
           'product-list',
           'product-create',
           'product-edit',
           'product-delete',
           'Sales-list',
           'Sales-create',
           'Sales-edit',
           'Sales-delete',
           'User-list',
           'User-create',
           'User-edit',
           'User-delete',
           'Supplier-list',
           'Supplier-create',
           'Supplier-edit',
           'Supplier-delete',
           'Customer-list',
           'Customer-create',
           'Customer-edit',
           'Customer-delete',
           'Purchase-list',
           'Purchase-create',
           'Purchase-edit',
           'Purchase-delete'
        ];
     
        foreach ($permissions as $permission) {
             Permission::create(['name' => $permission]);
        }
    }
}