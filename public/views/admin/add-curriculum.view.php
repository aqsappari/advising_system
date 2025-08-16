<?php

if (!isset($_SESSION['role'])) {
  header('location: /system');
  die();
}

if ($_SESSION['role'] != 'Admin') {
  header('location : /system/auth/logout.php');
  die();
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <title>Add Curriculum</title>

  <link rel="icon" href="/system/public/img/Western_Mindanao_State_University.png" type="image/png" />
  <link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/output.css">
  <link rel="stylesheet" href="/css/add-curriculum.css" />
</head>

<body>
  <div class="container-addCurriculum">
    <div id="gobackContainer">
      <a href="/curriculums" id="goback" class="non-highlight">
        < Go Back </a>
    </div>
    <div id="headerContent">
      <div class="input-group">
        <label for="cname">Curriculum Name:</label>
        <input type="text" class="border border-black rounded-md" id="cname" required />
      </div>
      <div class="input-group">
        <label for="cyear">Year Effective:</label>
        <input type="text" class="border border-black rounded-md" id="cyear" required />
      </div>
      <div class="input-group">
        <label for="ccoll">College:</label>
        <select id="ccoll" class="non-highlight border-black rounded-md" required>
          <option value="College of Engineering" selected>
            College of Engineering
          </option>
        </select>
      </div>
      <div class="input-group">
        <label for="cdept">Department:</label>
        <select id="cdept" class="non-highlight border-black rounded-md" required>
          <option value="BS Computer Engineering" selected>
            BS Computer Engineering
          </option>
        </select>
      </div>
    </div>
    <div id="mainContent">
      <div id="displayOldSubjects">
        <div id="searchContainer">
          <div id="searchInput">
            <input type="text" class="border border-black rounded-md" name="searchSubject" id="searchSubject"
              placeholder="Subject Code or Name" />
            <button type="button">X</button>
          </div>
          <button type="button" id="createSubject">CREATE</button>
        </div>
        <div id="resultContainer">
          <div id="listContainer">
            <ul>
            </ul>
          </div>
        </div>
        <div id="buttonContainer">
          <button type="button" id="addSemester">Add Semester</button>
          <button type="button" id="saveCurriculum">Save</button>
        </div>
      </div>
      <div id="displayNewSubjects">
        <div id="displayHeader">
          <div id="arrowHead">
            <button type="button" id="prevSemester">
              < </button>
                <button type="button" id="nextSemester">></button>
          </div>
          <div id="header"></div>
          <div id="selectHeader"><select id="selectSemester"></select></div>
        </div>
        <div id="displayContent">
          <div id="tableContent"></div>
        </div>
      </div>
    </div>
  </div>

  <div class="bg-modal hidden" id="modal">
    <div class="modal-container">
      <div id="add-subject-modal">
        <div class="modal-header">
          <h3>Create Subject Info</h3>
          <button type="button" id="close-add-subject-modal">X</button>
        </div>
        <div class="modal-content">

        </div>
      </div>
    </div>
  </div>

  <div class="bg-modal hidden" id="curriculum-modal">
    <div class="modal-container">
      <div id="save-curriculum-modal" hidden>
        <div class="modal-header">
          <h3>Save Curriculum</h3>
          <button type="button" id="close-save-curriculum-modal">X</button>
        </div>
        <div class="modal-content">
          <form action="/action/add" method="post">
            <div id="curriculum-details">
              <div class="input-group flex-col">
                <label for="curriculumName">Name:</label>
                <input type="text" class="border border-black" name="curriculumName" id="curriculumName" readonly
                  required />
                <div class="err"></div>
              </div>
              <div class="input-group flex-col">
                <label for="curriculumYear">Year Effective:</label>
                <input type="text" class="border border-black" name="curriculumYear" id="curriculumYear" readonly
                  required />
                <div class="err"></div>
              </div>
              <div class="input-group flex-col">
                <label for="curriculumCollege">College:</label>
                <input type="text" class="border border-black" name="curriculumCollege" id="curriculumCollege" readonly
                  required />
                <div class="err"></div>
              </div>
              <div class="input-group flex-col">
                <label for="curriculumDept">Department:</label>
                <input type="text" class="border border-black" name="curriculumDept" id="curriculumDept" readonly
                  required />
                <div class="err"></div>
              </div>
            </div>

            <div id="curriculum-subjects">
              <div id="yearDivisor">
              </div>
            </div>

            <textarea name="subjectsJSON" id="subjectsJSON" hidden></textarea>
            <input type="submit" value="Add Curriculum" name="submit" id="save-submit" hidden>
          </form>
        </div>
        <div class="modal-footer">
          <button type="button" id="save-button">Save Curriculum</button>
        </div>
      </div>
    </div>
  </div>

  <script src="<?= js('add-curriculum/init.js') ?>"></script>
  <script src="<?= js('add-curriculum/create-subject.js') ?>"></script>
  <script src="<?= js('add-curriculum/reuse-subject.js') ?>"></script>
  <!-- <script>
    // this area will create a new subject

    // open the modal when the create subject button is clicked
    document.getElementById('createSubject').addEventListener('click', function () {
      document.getElementById('modal').classList.replace('hidden', 'flex');
    });

    // close the modal when the close button is clicked
    document.getElementById('close-add-subject-modal').addEventListener('click', function () {
      document.getElementById('modal').classList.replace('flex', 'hidden');
      document.getElementById('add-subject-modal').reset();
    });
    // or when the user clicks outside the modal
    document.getElementById('modal').addEventListener('click', function (e) {
      if (e.target === this) {
        this.classList.replace('flex', 'hidden');
        document.getElementById('add-subject-modal').reset();
      }
    });

    // create 3 buttons for type of subject: regular, elective, and general elective
    // use elementFromHtml to create the buttons, which is already defined in init.js
    // use tailwindcss to make it eye-pleasing
    const subjectTypes = ['Regular', 'Elective', 'General Elective'];

    createSubjectButtons(subjectTypes);

  </script> -->
  <script src="<?= js('add-curriculum/save-button.js') ?>"></script>

</body>

</html>