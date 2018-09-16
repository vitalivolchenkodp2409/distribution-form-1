<?php

namespace App\Providers;

use Illuminate\Support\Facades\Gate;
use Laravel\Passport\Passport;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;

class AuthServiceProvider extends ServiceProvider
{
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();
        $this->bootPassport();
    }

    protected function bootPassport()
    {
        // boot passport routes
        Passport::routes();

        Passport::tokensExpireIn(now()->addDays(15));

        Passport::refreshTokensExpireIn(now()->addDays(30));

        // register scopes
        Passport::tokensCan([
            'name' => 'Read Username',
	    'point' => 'Read Arrows',
	    'karma' => 'Read Karma',
	    'last_dub_time' => 'Read the last time you performed a DUB!'

        ]);
    }
}
