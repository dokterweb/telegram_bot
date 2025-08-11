<?php

namespace App\Providers;
use App\Models\Suratlain;
use Illuminate\Support\Facades\View;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        View::composer('*', function ($view) {
            $latestSurat = SuratLain::with('worker')
                ->where('is_notified', false)
                ->orderBy('created_at', 'desc')
                ->first();
    
            $view->with('globalSuratNotif', $latestSurat);
        });
    }
}
