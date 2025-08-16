<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Add Curriculum</title>

  <link rel="icon" href="/system/public/img/Western_Mindanao_State_University.png" type="image/png" />
  <link rel="stylesheet" href="<?= css('style.css') ?>">
  <link rel="stylesheet" href="<?= css('advise-student.css') ?>" />
</head>

<body>
  <div class="container-addCurriculum">
    <div id="gobackContainer">
      <a href="/students/<?= $studentId ?>" id="goback" class="non-highlight">
        < Go Back </a>
    </div>
    <div id="mainContent">
      <div id="displayUNLISTED">
        <div id="searchContainer">
          <div id="searchInput">
            <input type="text" name="searchSubject" id="searchSubject" />
            <button type="button" id="emptySearch">X</button>
          </div>
        </div>
        <div id="resultContainer">
          <div id="listContainer">
            <ul>
            </ul>
          </div>
        </div>
        <div id="buttonContainer">
          <button type="button" id="saveSubject">ADVISE STUDENT</button>
        </div>
      </div>
      <div id="displayLISTED">
        <div id="displayHeader">
          <?php
          $YEARNAME = "";

          switch (strval($year)[strlen($year) - 1]) {
            case "1":
              $YEARNAME =
                strlen($year) > 1 && strval($year)[0] === "1"
                ? strval($year) . "th Year"
                : strval($year) . "st Year";
              break;
            case "2":
              $YEARNAME =
                strval($year) === "1"
                ? strval($year) . "th Year"
                : strval($year) . "nd Year";
              break;
            case "3":
              $YEARNAME =
                strval($year) === "1"
                ? strval($year) . "th Year"
                : strval($year) . "rd Year";
              break;
            default:
              $YEARNAME = strval($year) . "th Year";
              break;
          }
          ?>
          <div id="header"><?= $YEARNAME ?> - <?= $semester ?></div>
          <div id="studentTable" hidden><?= $studentTable ?></div>
          <div>Maximum Units: <span id="max"><?= $max ?></span></div>
        </div>
        <div id="displayContent">
          <div id="tableContent"></div>
        </div>
        <div id="displayFooter">
          <div>Total Units: <span id="total"></span></div>
        </div>
      </div>
    </div>
  </div>



  <form action="/update/subjects" method="post" hidden>
    <input type="text" name="year" id="year" value="<?= $year ?>">
    <input type="text" name="semester" id="semester" value="<?= $semester ?>">
    <input type="text" name="studentId" id="studentId" value="<?= $studentId ?>">

    <textarea name="subjectJSON" id="subjectJSON"></textarea>
    <input type="submit" id="submit" name="submit" value="Submit">
  </form>

  <script src="<?= js('advise-student.js') ?>"></script>

</body>

</html>