<!-- resources/views/welcome.blade.php -->

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Laravel API Example</title>
    <link rel="stylesheet" type="text/css" href="{{ asset('css/styles.css') }}">
    <style>
        table {
            border-collapse: collapse;
            width: 100%;
        }

        table, th, td {
            border: 1px solid white; /* Set border color to white */
        }

        th, td {
            padding: 10px;
            text-align: left;
        }
    </style>
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

    <div id="reminder-details"></div>

    <script>
        document.addEventListener('DOMContentLoaded', function () {
            // Fetch all reminders from the API
            fetch('http://127.0.0.1:8000/api/reminders')
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Error fetching reminders');
                    }
                    return response.json();
                })
                .then(reminders => {
                    // Update the HTML content with details of all reminders
                    const reminderDetails = document.getElementById('reminder-details');
                    
                    if (reminders.length > 0) {
                        const table = document.createElement('table');
    
                        reminders.forEach(reminder => {
                            const row = table.insertRow();
    
                            // Create cells for Task and Completed
                            const cell1 = row.insertCell(0);
                            const cell2 = row.insertCell(1);
    
                            const checkbox = document.createElement('input');
                            checkbox.type = 'checkbox';
                            checkbox.disabled = false; // Enable the checkbox
    
                            // Set the checkbox state based on the task_completed value
                            checkbox.checked = reminder.task_completed === 'Y';
    
                            // Add an event listener to update the task_completed value on checkbox change
                            checkbox.addEventListener('change', function () {
                                // Update the task_completed value based on the checkbox state
                                reminder.task_completed = checkbox.checked ? 'Y' : 'N';
                                // Perform API call to update the database
                                updateTaskCompleted(reminder.id, reminder.task_completed);
                            });
    
                            cell1.textContent = `Task: ${reminder.task}`;
                            cell2.appendChild(checkbox);
    
                            // Append the row to the table
                            table.appendChild(row);
                        });
    
                        reminderDetails.appendChild(table);
                    } else {
                        reminderDetails.textContent = 'No reminders found';
                    }
                })
                .catch(error => {
                    console.error('Error fetching data:', error);
                    const reminderDetails = document.getElementById('reminder-details');
                    reminderDetails.textContent = 'Error fetching reminders';
                });
    
            // Function to update the task_completed value in the database
            function updateTaskCompleted(reminderId, taskCompleted) {
                fetch(`http://127.0.0.1:8000/api/reminders/${reminderId}`, {
                    method: 'PUT',
                    headers: {
                        'Content-Type': 'application/json',
                    },
                    body: JSON.stringify({ task_completed: taskCompleted }),
                })
                .then(response => {
                    if (!response.ok) {
                        throw new Error('Error updating task_completed value');
                    }
                    return response.json();
                })
                .catch(error => {
                    console.error('Error updating task_completed value:', error);
                });
            }
        });
    </script>
    
</body>
</html>
