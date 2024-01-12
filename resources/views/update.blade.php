<!-- resources/views/update.blade.php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Update Task - Laravel API Example</title>
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
        <h1>Update Task</h1>

        @isset($message)
            <p>{{ $message }}</p>
        @else
            <form action="{{ route('reminder.update') }}" method="post">
                @csrf
                <label for="task_name">Select Task:</label>
                <select name="task_name" required>
                    @foreach ($tasks as $task)
                        <option value="{{ $task->task }}">{{ $task->task }}</option>
                    @endforeach
                </select>
                <br>
                <label for="updated_task">Updated Task:</label>
                <input type="text" name="updated_task" required>
                <button type="submit">Update Task</button>
            </form>
        @endisset
    </div>
</body>
</html>
