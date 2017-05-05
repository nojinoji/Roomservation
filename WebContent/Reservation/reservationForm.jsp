<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<title>Roomservation</title>
  
</head>
<body>


	<div data-role="fieldcontain">
	<form>
       <a href="main.jsp?pagefile=reservationMonday" data-role="button">월요일</a>
       <a href="main.jsp?pagefile=reservationTuesday" data-role="button">화요일</a>
       <a href="main.jsp?pagefile=reservationWednesday" data-role="button">수요일</a>
       <a href="main.jsp?pagefile=reservationThursday" data-role="button">목요일</a>
       <a href="main.jsp?pagefile=reservationFriday" data-role="button">금요일</a>
       </form>
       </div>

<div data-role="content"> 
    <p>This is a <a href="#">link</a></p>    
    <ul data-role="listview" data-inset="true">
      <li data-role="list-divider">Divider</li>
      <li><a href="#">Item 1</a></li>
      <li><a href="#">Item 2</a></li>
      <li><a href="#">Item 3</a></li>
    </ul>
    <label for="flip-1">Flip switch:</label>
    <select name="flip-1" id="flip-1" data-role="slider">
      <option value="off">Off</option>
      <option value="on">On</option>
    </select> 
    <a href="#" data-role="button">Click me</a>
    <fieldset data-role="controlgroup">
      <legend>Choose a pet:</legend>
      <input type="radio" name="radio-choice" id="radio-choice-1" value="choice-1" checked="checked" />
      <label for="radio-choice-1">Cat</label>

      <input type="radio" name="radio-choice" id="radio-choice-2" value="choice-2"  />
      <label for="radio-choice-2">Dog</label>

      <input type="radio" name="radio-choice" id="radio-choice-3" value="choice-3"  />
      <label for="radio-choice-3">Hamster</label>

      <input type="radio" name="radio-choice" id="radio-choice-4" value="choice-4"  />
      <label for="radio-choice-4">Lizard</label>
    </fieldset>

</body>
</body>
</html>