<!-- resources/views/add-task.blade.php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Task - Laravel API Example</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/styles.css') }}">
</head>
<body>
    <div class="nav">
        <ul style="list-style: none">
            <li><a href="{{ route('reminder.create') }}">ADD TASK</a></li>
            <li><a href="{{ route('reminder.delete') }}">DELETE TASK</a></li>
            <li><a href="{{ route('reminder.view') }}">VIEW TASK</a></li>
            <li><a href="{{ route('reminder.change') }}">UPDATE TASK</a></li>
        </ul>
    </div>
    <hr>

    <div>
        <h1>Add Task</h1>
        
        @isset($message)
            <p>{{ $message }}</p>
        @endisset

        <form action="{{ route('reminder.store') }}" method="post">
            @csrf
            <textarea name="task" rows="4" cols="50" placeholder="Enter your task"></textarea>
            <br>
            <button type="submit">Submit Task</button>
        </form>
    </div>
</body>
</html>
