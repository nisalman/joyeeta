<?php

namespace App\Providers;

use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use Illuminate\Support\Facades\Gate;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        // 'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        /* define a admin user role */
        Gate::define('isSuperAdmin', function($user) {
            return $user->user_role_id == 1;
        });

        /* define a Local Admin role */
        Gate::define('isAdmin', function($user) {
            return $user->user_role_id == 2;
        });

        /* define a operator role */
        Gate::define('isOperator', function($user) {
            return $user->user_role_id == 3;
        });

    }

}
