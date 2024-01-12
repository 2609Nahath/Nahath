<?php

use App\Http\Controllers\ReminderController;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

Route::controller(ReminderController::class)->group(function () {
    Route::get('/reminders/{id}', 'show')->name('reminder.show');
    Route::get('/reminders', 'index')->name('reminder.index');
    Route::post('/reminders/store', 'store')->name('reminder.store');
    Route::post('/reminders', 'update')->name('reminder.update');
    Route::post('/reminders/destroy', [ReminderController::class, 'destroy'])->name('reminder.destroy');
});

// routes/web.php
Route::get('/welcome', [ReminderController::class, 'view'])->name('reminder.view');
Route::get('/add-task', [ReminderController::class, 'create'])->name('reminder.create');
Route::get('/delete', [ReminderController::class, 'delete'])->name('reminder.delete');
Route::get('/update', [ReminderController::class, 'change'])->name('reminder.change');


