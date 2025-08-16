// Functions to Save Curriculum <-- STARTS HERE -->

const saveCurriculum = document.getElementById("saveCurriculum");

saveCurriculum.onclick = () => {
  const modal = document.getElementById("curriculum-modal");
  const add_subject_modal = document.getElementById("save-curriculum-modal");
  const close_modal = document.getElementById("close-save-curriculum-modal");

  // const contentDivisor = document.getElementById("contentDivisor");

  let yearsArray = [];
  let electivesArray = [];

  SUBJECTS.forEach(function callback(subject, index) {
    if (!yearsArray.includes(subject.subjectYear)) {
      yearsArray.push(subject.subjectYear);
    }

    if (!electivesArray.includes(subject.subjectElec)) {
      if (subject.subjectElec == "None") {
        return;
      }

      if (subject.subjectElec == null) {
        return;
      }

      if (subject.subjectDesc == "Elective Subject **") {
        return;
      }

      if (subject.subjectDesc == "GEC Subject **") {
        return;
      }

      electivesArray.push(subject.subjectElec);
    }
  });

  // console.log(electivesArray);

  let semesterArray = ["1st Semester", "2nd Semester", "Summer"];

  let yearDivisor = document.getElementById("yearDivisor");
  yearDivisor.innerHTML = "";

  yearsArray.forEach((year) => {
    if (!(year == "" || year == null)) {
      let checkYear = year % 10;
      let YEARNAME = "";

      switch (checkYear) {
        case 1:
          YEARNAME = year.toString() + "st Year";
          break;
        case 2:
          YEARNAME = year.toString() + "nd Year";
          break;
        case 3:
          YEARNAME = year.toString() + "rd Year";
          break;
        default:
          YEARNAME = year.toString() + "th Year";
          break;
      }
      let headerDivisor = elementFromHtml(`
      <div id="headerDivisor">${YEARNAME}</div>
      `);
      yearDivisor.appendChild(headerDivisor);

      let contentDivisor = elementFromHtml(`
        <div id="contentDivisor"></div>
      `);
      yearDivisor.appendChild(contentDivisor);

      semesterArray.forEach((semester) => {
        let elec_exist = false;
        let subjectCount = 0;
        let table = elementFromHtml(`
        <table>
          <caption>
            ${YEARNAME} - ${semester}
          </caption>
          <tr>
            <th width="10%">Code</th>
            <th width="50%">Description</th>
            <th width="5%">Lec</th>
            <th width="5%">Lab</th>
            <th width="5%">Total</th>
            <th width="25%">Pre-requisite</th>
          </tr>
        </table>
        `);

        SUBJECTS.forEach((subject) => {
          console.log(SUBJECTS);
          console.log(subject);

          if (
            subject.subjectYear == year &&
            subject.subjectSemester == semester
          ) {
            subjectCount++;
            let tr = elementFromHtml(`
              <tr>
                <td>${subject.subjectCode}</td>
                <td>${subject.subjectDesc}</td>
                <td>${subject.subjectLec}</td>
                <td>${subject.subjectLab}</td>
                <td>${subject.subjectUnit}</td>
                <td>${subject.subjectPreq}</td>
              </tr>
            `);

            let elec_tr = elementFromHtml(`
              <tr>
                <td colspan="6">Elective Subject</td>
              </tr>
            `);

            if (subject.subjectElec != "None") {
              if (!elec_exist) {
                table.appendChild(elec_tr);
                elec_exist = true;
              }
            } else {
              table.appendChild(tr);
            }

            // table.appendChild(tr);
          }
        });

        if (subjectCount > 0) {
          contentDivisor.append(table);
        }
      });
    }
  });

  if (electivesArray.length >= 1) {
    let headerDivisor = elementFromHtml(`
      <div id="headerDivisor">ELECTIVES</div>
      `);
    yearDivisor.appendChild(headerDivisor);

    let contentDivisor = elementFromHtml(`
        <div id="contentDivisor"></div>
      `);
    yearDivisor.appendChild(contentDivisor);

    electivesArray.forEach((elective) => {
      // console.log(elective);

      if (!(elective == "" || elective == null || elective == "undefined")) {
        let subjectCount = 0;
        let table = elementFromHtml(`
        <table>
          <caption>
            ${elective}
          </caption>
          <tr>
            <th width="10%">Code</th>
            <th width="50%">Description</th>
            <th width="5%">Lec</th>
            <th width="5%">Lab</th>
            <th width="5%">Total</th>
            <th width="25%">Pre-requisite</th>
          </tr>
        </table>
        `);

        SUBJECTS.forEach((subject) => {
          if (subject.subjectElec == elective) {
            subjectCount++;
            let tr = elementFromHtml(`
              <tr>
                <td>${subject.subjectCode}</td>
                <td>${subject.subjectDesc}</td>
                <td>${subject.subjectLec}</td>
                <td>${subject.subjectLab}</td>
                <td>${subject.subjectUnit}</td>
                <td>${subject.subjectPreq}</td>
              </tr>
            `);

            table.appendChild(tr);
          }
        });

        if (subjectCount > 0) {
          contentDivisor.append(table);
        }
      }
    });
  }

  const name = document.getElementById("cname").value;
  const year = document.getElementById("cyear").value;
  const coll = document.getElementById("ccoll").value;
  const dept = document.getElementById("cdept").value;

  document.getElementById("curriculumName").value = name;
  document.getElementById("curriculumYear").value = year;
  document.getElementById("curriculumCollege").value = coll;
  document.getElementById("curriculumDept").value = dept;

  modal.classList.replace("hidden", "flex");
  add_subject_modal.removeAttribute("hidden");

  let saveButton = document.getElementById("save-button");
  let subjectsJSON = document.getElementById("subjectsJSON");
  let saveSubmit = document.getElementById("save-submit");

  saveButton.onclick = () => {
    function filterRemove(subject) {
      return subject != "REMOVED";
    }
    let UPDATEDSUBJECTS = SUBJECTS.filter(filterRemove);
    UPDATEDSUBJECTS = JSON.stringify(UPDATEDSUBJECTS);
    subjectsJSON.innerText = UPDATEDSUBJECTS;

    saveSubmit.click();
  };

  close_modal.onclick = () => {
    modal.classList.replace("flex", "hidden");
    add_subject_modal.setAttribute("hidden", "");
  };
};

// Functions to Save Curriculum <-- ENDS HERE -->
