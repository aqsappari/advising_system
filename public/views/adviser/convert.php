<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Excel to JSON Converter</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: rgba(239, 223, 197, 1);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }

        .container {
            width: 90%;
            max-width: 800px;
            background: #ffffff;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
            text-align: center;
            border: 2px solid black;
        }

        h2 {
            color: #333;
            margin-bottom: 20px;
        }

        .input-container {
            margin-bottom: 20px;
        }

        .input-container input[type="file"] {
            display: none;
        }

        .input-container label {
            display: inline-block;
            padding: 12px 20px;
            background-color: #007bff;
            color: #fff;
            font-weight: 500;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .input-container label:hover {
            background-color: #0056b3;
        }

        #data-table-container {
            margin-top: 20px;
            overflow-x: auto;
            max-height: 400px;
            overflow-y: auto;
            border: 1px solid #ccc;
            border-radius: 8px;
            display: none;
        }

        #data-table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 10px;
            background-color: #fff;
        }

        #data-table th,
        #data-table td {
            border: 1px solid #ddd;
            padding: 8px;
            text-align: left;
        }

        #data-table th {
            background-color: #f0f0f0;
            font-weight: bold;
        }

        #data-table tbody tr:nth-child(odd) {
            background-color: #f9f9f9;
        }

        .btn {
            display: inline-block;
            width: 100%;
            padding: 12px;
            background-color: #28a745;
            color: #fff;
            font-weight: 500;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .btn:hover {
            background-color: #218838;
        }

        .back-btn {
            position: absolute;
            top: 10px;
            left: 10px;
            padding: 10px 25px;
            background-color: #dc3545;
            color: #fff;
            font-weight: 500;
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: 0.3s;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.2);
        }

        .back-btn:hover {
            background-color: #c82333;
        }

        #submit_btn {
            margin-top: 20px;
        }

        #no-file-message {
            margin-top: 20px;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 8px;
            background-color: #f9f9f9;
            text-align: center;
        }
    </style>
</head>

<body>
    <div class="container">
        <a class="back-btn" href="/students">
            <i class="fas fa-arrow-left"> Back</i> </a>
        <h2>Add Students</h2>
        <form action="/bulk-add-students" method="post" id="student-form">
            <div class="input-container">
                <input type="file" id="excel_file" accept=".xlsx, .xls" />
                <label for="excel_file">Select Excel File</label>
            </div>
            <div id="data-table-container" style="display: none;">
                <table id="data-table">
                    <thead>
                        <tr></tr>
                    </thead>
                    <tbody></tbody>
                </table>
            </div>
            <div id="no-file-message">No excel file read</div>
            <input type="hidden" name="json_data" id="json_data">
            <button type="submit" id="submit_btn" class="btn">Add Students</button>
        </form>
    </div>
    <script src="https://unpkg.com/read-excel-file@5.x/bundle/read-excel-file.min.js"></script>
    <script>
        document.getElementById("excel_file").addEventListener("change", function () {
            if (this.files.length === 0) {
                document.getElementById("data-table-container").style.display = "none";
                document.getElementById("no-file-message").style.display = "block";
                return;
            }
            const file = this.files[0];

            if (!file.name.endsWith('.xlsx') && !file.name.endsWith('.xls')) {
                alert("Please upload a valid Excel file.");
                return;
            }

            readXlsxFile(file).then(function (data) {
                const headers = data[0].map(header => header.toLowerCase().trim());
                let studentData = [];

                for (let i = 1; i < data.length; i++) {
                    let student = {};
                    for (let j = 0; j < headers.length; j++) {
                        student[headers[j]] = data[i][j] !== undefined ? String(data[i][j]).trim() : null;
                    }

                    studentData.push({
                        fname: student["first name"] == "null" ? "" : student["first name"],
                        mname: student["middle name"] == "null" ? "" : student["middle name"],
                        lname: student["last name"] == "null" ? "" : student["last name"],
                        studentId: student["student id"] == "null" ? "" : student["student id"],
                        contact: student["contact no."] == "null" ? "" : student["contact no."],
                        email: student["email"] == "null" ? "" : student["email"],
                    });
                }
                document.getElementById("json_data").value = JSON.stringify(studentData);
                displayTable(studentData);
            }).catch(error => {
                alert("Error reading the Excel file.");
                console.error("Error:", error);
            });
        });

        function displayTable(data) {
            const tableContainer = document.getElementById("data-table-container");
            const table = document.getElementById("data-table");
            const thead = table.querySelector("thead tr");
            const tbody = table.querySelector("tbody");
            const noFileMessage = document.getElementById("no-file-message");


            thead.innerHTML = "";
            tbody.innerHTML = "";

            if (data.length === 0) {
                tableContainer.style.display = "none";
                noFileMessage.style.display = "block";
                return;
            } else {
                tableContainer.style.display = "block";
                noFileMessage.style.display = "none";
            }

            const displayHeaders = ["First Name", "Middle Name", "Last Name", "Student ID", "Contact No.", "Email Address"];
            const jsonKeys = ["fname", "mname", "lname", "studentId", "contact", "email"];

            displayHeaders.forEach(header => {
                const th = document.createElement("th");
                th.textContent = header;
                thead.appendChild(th);
            });

            data.forEach(item => {
                const tr = document.createElement("tr");
                jsonKeys.forEach(key => {
                    const td = document.createElement("td");
                    td.textContent = item[key];
                    tr.appendChild(td);
                });
                tbody.appendChild(tr);
            });
        }
    </script>
</body>

</html>