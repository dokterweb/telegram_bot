<?php

namespace Database\Seeders;

use App\Models\User;
use Illuminate\Database\Seeder;
use Spatie\Permission\Models\Role;
use Illuminate\Database\Console\Seeds\WithoutModelEvents;

class Roleseeder extends Seeder
{
    /**
     * Run the database seeds.
     */
    public function run(): void
    {
        $adminRole = Role::create(['name'=> 'admin']);

        $workerRole = Role::create(['name'=> 'worker']);

        $spvRole = Role::create(['name'=> 'spv']);

        $userOwner =  User::create([
            'name'  => 'Fulan',
            'avatar'  => 'images/default-avatar.png',
            'email'  => 'admin@admin.com',
            'password'  => bcrypt('123123123'),
        ]);

        $userOwner->assignRole($adminRole);
    }
}
