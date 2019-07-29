<?php

use Illuminate\Database\Seeder;
use App\User;
use App\Customer;
use Faker\Generator as Faker;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run(Faker $faker)
    {
       factory(User::class, 20)->create();

        factory(Customer::class, 30)->create();

    for ($i=0; $i < 20; $i++) { 

        DB::table('customer_user')->insert([
            'customer_id' => Customer::all()->random()->id,
            'user_id' => User::all()->random()->id,
            'activity_type' => collect(['mail', 'call'])->random(),
            'description' => $faker->sentence,
            'created_at' => now()
       
         ]);
       
    }
      


    }









}
