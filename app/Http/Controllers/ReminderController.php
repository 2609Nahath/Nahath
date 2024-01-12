<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Reminder;
use Exception;
use Illuminate\Support\Facades\Log;
use Illuminate\Routing\Controller;

class ReminderController extends Controller
{
    public function index()
    {
        $reminders = Reminder::all();
        if($reminders->isEmpty())
            return response()->json([
                "data" => "No records found"
            ], 404);
        else
            return response()->json($reminders);
    }

    public function show($id)
    {
        $reminder = Reminder::find($id);

        if (!$reminder) {
            return response()->json(['error' => 'Reminder not found'], 404);
        }

        return response()->json($reminder);
    }

    public function store(Request $request)
    {
        try {
            $request->validate([
                'task' => 'required|string',
                'task_completed' => 'nullable|string|in:Y,N',
            ]);
    
            $reminder = Reminder::create($request->all());
    
            return view('add-task', [
                'message' => 'Task inserted successfully',
                'reminder' => $reminder,
            ]);
        } catch (Exception $e) {
            Log::error('Error: ' . $e->getMessage());
    
            return view('add-task', [
                'message' => 'Task not inserted',
            ]);
        }
    }
    
    public function update(Request $request)
    {
        $request->validate([
            'task_name' => 'required|string|exists:reminders,task',
            'updated_task' => 'required|string',
        ]);

        $reminder = Reminder::where('task', $request->input('task_name'))->first();

        if ($reminder) {
            $reminder->update(['task' => $request->input('updated_task')]);
            return view('update', ['message' => 'Task updated successfully']);
        } else {
            return view('update', ['message' => 'Task not found']);
        }
    }

    public function destroy(Request $request)
    {
        $request->validate([
            'task' => 'required|string',
        ]);

        $reminder = Reminder::where('task', $request->input('task'))->first();

        if ($reminder) {
            $reminder->delete();
            return view('delete', ['message' => 'Task deleted successfully']);
        } else {
            return view('delete', ['message' => 'Task not found']);
        }
    }


    public function create()
    {
        return view('add-task');
    }

    public function view()
    {
        return view('welcome');
    }

   public function delete()
    {
        $tasks = Reminder::all();
        return view('delete', compact('tasks'));
    }

    public function change()
    {
        $tasks = Reminder::all();
        return view('update', compact('tasks'));
    }
}
