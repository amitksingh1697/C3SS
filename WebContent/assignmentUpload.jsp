<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Assignment Upload to Database</title>
</head>
<body>
    <center>
        <h1>Assignment Upload to Database</h1>
        <form method="post" action="uploadAssignment" enctype="multipart/form-data">
            <table border="0">
                <tr>
                    <td>Department: </td>
                    <td><input type="text" name="dep" size="50"/></td>
                </tr>
                <tr>
                    <td>name: </td>
                    <td><input type="text" name="name" size="50"/></td>
                </tr>
                <tr>
                    <td>Assignment: </td>
                    <td><input type="file" name="book" size="50"/></td>
                </tr>
                <tr>
                    <td colspan="2">
                        <input type="submit" value="Save">
                    </td>
                </tr>
            </table>
        </form>
    </center>
</body>
</html>