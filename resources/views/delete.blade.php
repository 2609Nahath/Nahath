<!-- resources/views/delete.blade.php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Task - Laravel API Example</title>
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
        <h1>Delete Task</h1>

        @isset($message)
            <p>{{ $message }}</p>
        @else
        <form action="{{ route('reminder.destroy') }}" method="post">
            @csrf
            <label for="task">Task Name:</label>
            <select name="task" required>
                @foreach ($tasks as $task)
                    <option value="{{ $task->task }}">{{ $task->task }}</option>
                @endforeach
            </select>
            <button type="submit">Delete Task</button>
        </form>
        @endisset
    </div>
</body>
</html>
