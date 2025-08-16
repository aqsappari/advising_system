// Global Variable <-- STARTS HERE -->
let SUBJECTS = [];
let SEMESTERS = ["1st Semester", "2nd Semester", "Summer"];
let YEARS = [1];
let SEMESTERFLAG = [];

let SEMESTER = 0;
let YEAR = -1;
let YEARDELAY = 3;
let FLAG = 0;
let FLAGGING = 0;
let CURRENTSEMESTER = null;
let CURRENTTABLE = null;
let ELECNUM = 1;

// all related elemeents
let selectSemester = document.getElementById("selectSemester");
let tableContent = document.getElementById("tableContent");
// call all related elemeents <-- ENDS HERE -->

// Function to create an HTML element from a string

function elementFromHtml(html) {
  const template = document.createElement("template");

  template.innerHTML = html.trim();

  return template.content.firstElementChild;
}

function check_if_table_empty(table) {
  const currentTable = document.getElementById(table);

  if (currentTable.querySelector("tbody").childElementCount != 0) {
    if (document.querySelector(`#${table} tfoot`) != null) {
      document.querySelector(`#${table} tfoot`).remove();
    }
    return;
  }

  let tfoot = elementFromHtml(
    `<tfoot><tr><td colspan="7">Leave EMPTY if no subject for this Semester</td></tr></tfoot>`
  );
  currentTable.appendChild(tfoot);
}

// Global Variable <-- ENDS HERE -->

// Functions to Add New Semester <-- STARTS HERE -->

function addSemesterToNewCurriculum() {
  let selectSemester = document.getElementById("selectSemester");
  let tableContent = document.getElementById("tableContent");

  function pushingSemester() {
    function namingSemester() {
      SEMESTER = SEMESTER % 3;

      if (SEMESTER == 0) {
        let THISYEAR = YEAR + YEARDELAY;
        YEARS.push(THISYEAR);
        YEAR++;
      }

      let checkYear = YEARS[YEAR] % 10;
      let YEARNAME = "";

      switch (checkYear) {
        case 1:
          YEARNAME = YEARS[YEAR].toString() + "st Year";
          break;
        case 2:
          YEARNAME = YEARS[YEAR].toString() + "nd Year";
          break;
        case 3:
          YEARNAME = YEARS[YEAR].toString() + "rd Year";
          break;
        default:
          YEARNAME = YEARS[YEAR].toString() + "th Year";
          break;
      }
      SEMESTERFLAG.push(`${YEARNAME} - ${SEMESTERS[SEMESTER]}`);
      SEMESTER++;

      FLAG = SEMESTERFLAG.length;
      FLAGGING = FLAG - 1;
    }

    namingSemester();

    let optionSemester = elementFromHtml(`
        <option value="${FLAGGING}">${SEMESTERFLAG[FLAGGING]}</option>
        `);

    selectSemester.appendChild(optionSemester);

    let displayTable = elementFromHtml(`
      <table id="table${FLAGGING}">
          <thead>
              <tr>
                  <th rowspan="2" width="10%">Code</th>
                  <th rowspan="2" width="50%">Description</th>
                  <th colspan="3" width="10%">Units</th>
                  <th rowspan="2" width="20%">Pre-requisite</th>
                  <th rowspan="2" width="10%"></th>
              </tr>
              <tr>
                  <th>Lec</th>
                  <th>Lab</th>
                  <th>Total</th>
              </tr>
          </thead>
          <tbody>
          </tbody>
      </table>
      `);
    tableContent.appendChild(displayTable);

    moveSemester();
  }

  function moveSemester(index = FLAGGING) {
    function pagingSemester(index) {
      document.querySelectorAll("#selectSemester option").forEach((option) => {
        option.removeAttribute("selected");
      });

      let header = document.getElementById("header");
      header.innerText = SEMESTERFLAG[index];
      selectSemester.children[index].setAttribute("selected", "");
    }

    FLAGGING = index;

    index == 0
      ? prev.setAttribute("disabled", "")
      : prev.removeAttribute("disabled");

    index == SEMESTERFLAG.length - 1
      ? next.setAttribute("disabled", "")
      : next.removeAttribute("disabled");

    pagingSemester(FLAGGING);

    document.querySelectorAll("#displayContent table").forEach((table) => {
      table.setAttribute("hidden", "");
      if (table.getAttribute("id") == `table${FLAGGING}`) {
        table.removeAttribute("hidden");
        CURRENTSEMESTER = SEMESTERFLAG[FLAGGING];
        CURRENTTABLE = table.getAttribute("id");
      }
    });
  }

  selectSemester.onchange = () => {
    moveSemester(Number(selectSemester.value));
  };

  let next = document.getElementById("nextSemester");
  let prev = document.getElementById("prevSemester");

  next.onclick = () => {
    moveSemester(FLAGGING + 1);
  };
  prev.onclick = () => {
    moveSemester(FLAGGING - 1);
  };
  pushingSemester();
  check_if_table_empty(CURRENTTABLE);
}

addSemesterToNewCurriculum();

document.getElementById("addSemester").onclick = () => {
  addSemesterToNewCurriculum();
};

// Functions to Add New Semester <-- ENDS HERE -->

function gec_function() {
  let GEC_RESULT = [];
  const add_subject_modal_content = document.querySelector(
    "#add-subject-modal .modal-content"
  );
  const gec_list = elementFromHtml(`
    <div>
      <div id="search_gec">
        <input type="text" name="search_gec_input" id="search_gec_input">
        <button type="button" id="gec_input_add">CREATE</button>
      </div>
      <div id="display_gec">
        <h3>Available Subjects:</h3>
        <table width="400">
          <thead>
            <tr>
              <th rowspan="2" width="75">Code</th>
              <th rowspan="2" width="200">Description</th>
              <th colspan="3" width="60">Units</th>
              <th rowspan="2" width="65"></th>
            </tr>
            <tr>
              <th width="20">Lec</th>
              <th width="20">Lab</th>
              <th width="20">Total</th>
            </tr>
          </thead>
          <tbody>
          </tbody>
        </table>
      </div>
    </div>
  `);

  add_subject_modal_content.append(gec_list);

  fetch("/request/readGEC", {
    method: "GET",
    headers: {
      "Content-Type": "application/json; charset=utf-8",
    },
  })
    .then(function (response) {
      return response.json();
    })
    .then(function (data) {
      GEC_RESULT = data;
      gec_result(GEC_RESULT);
    });

  checkThisTable();

  add_subject_modal_content.querySelector("#gec_input_add").onclick = () => {
    openAddSubjectModal("add_gec_subject");
  };

  document.getElementById("search_gec_input").oninput = () => {
    let new_result = [];

    let inputValue = document.getElementById("search_gec_input").value;

    if (inputValue == "") {
      gec_result(GEC_RESULT);
      return;
    }

    GEC_RESULT.forEach((subject) => {
      if (
        subject.subject_code.includes(inputValue) ||
        subject.subject_description.includes(inputValue)
      ) {
        new_result.push(subject);
      }
    });

    gec_result(new_result);
  };

  /* FUNCTIONS */
  function checkThisTable() {
    const tbody = document.querySelector("#display_gec table tbody");
    if (document.querySelector("#display_gec table tfoot") != null) {
      document.querySelector("#display_gec table tfoot").remove();
    }

    if (tbody.childElementCount == 0) {
      const tfoot = elementFromHtml(`
          <tfoot>
            <tr>
              <td colspan="6">No Data Yet</td>
            </tr>
          </tfoot>
        `);
      document.querySelector("#display_gec table").append(tfoot);
      return;
    }
  }

  function gec_result(data) {
    document.querySelector("#display_gec table tbody").innerHTML = "";
    data.forEach((subject) => {
      const tr = elementFromHtml(`
        <tr>
            <td>${subject["subject_code"]}</td>
            <td style="text-transform: capitalize;">${subject["subject_description"]}</td>
            <td>${subject["subject_lecture_units"]}</td>
            <td>${subject["subject_laboratory_units"]}</td>
            <td>${subject["subject_total_units"]}</td>
            <td>
              <div id="action">
                <button type="button" id="editSubject">Edit</button>
                <button type="button" id="removeSubject">X</button>
              </div>
            </td>
          </tr>
      `);

      document.querySelector("#display_gec table tbody").append(tr);

      tr.querySelector("#removeSubject").onclick = () => {
        delete_gec_subject(`${subject["id"]}`);
      };

      tr.querySelector("#editSubject").onclick = () => {
        edit_gec_subject(
          `${subject["id"]}`,
          `${subject["subject_code"]}`,
          `${subject["subject_description"]}`,
          `${subject["subject_lecture_units"]}`,
          `${subject["subject_laboratory_units"]}`
        );
      };
    });
    checkThisTable();
  }

  function delete_gec_subject(id) {
    let subjectdata = {
      id: id,
    };
    fetch("/request/deleteGEC", {
      method: "POST",
      headers: {
        "Content-Type": "application/json; charset=utf-8",
      },
      body: JSON.stringify(subjectdata),
    })
      .then(function (response) {
        return response.json();
      })
      .then(function (data) {
        openAddSubjectModal("gec_add_subject");
      });
  }

  function edit_gec_subject(id, code, desc, lec, lab) {
    const add_subject_modal_content = document.querySelector(
      "#add-subject-modal .modal-content"
    );

    add_subject_modal_content.innerHTML = "";

    const add_subject_view2 = elementFromHtml(`
      <form>
        <span id="alert hidden"></span>
        <div class="input-group flex-col">
          <label for="subjectCode">Subject Code:</label>
          <input type="text" id="subjectCode" value="${code}" required />
          <span class="err" id="err_code"></span>
        </div>
        <div class="input-group flex-col">
          <label for="subjectDesc">Subject Description:</label>
          <input type="text" id="subjectDesc" value="${desc}" required />
          <!-- <div class="note">Separate by comma (,) if multiple subjects</div> -->
          <span class="err" id="err_desc"></span>
        </div>
        <div class="input-group flex-col">
          <label for="subjectLec">Lec Units:</label>
          <input type="number" id="subjectLec" value="${lec}"
            oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null"
            Required />
        </div>
        <div class="input-group flex-col">
          <label for="subjectLab">Lab Units:</label>
          <input type="number" id="subjectLab" value="${lab}"
            oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null"
            Required />
        </div>
        <div class="input-group flex-col hidden">
          <label for="subjectPreq">Pre-requisite:</label>
          <input type="text" id="subjectPreq" placeholder="Separate by Comma (,)" />
          <div class="note">Leave Empty if Value is None</div>
        </div>
        <div class="input-group flex-col hidden">
          <label for="subjectElec">Elective Name:</label>
          <input type="text" id="subjectElec"/>
          <div class="note">Leave Empty if Value is None</div>
        </div>
        <input type="text" id="tableIndex" hidden />
  
        <div class="modal-footer">
          <button type="button" class="text-nowrap" id="saveSubject">
            Add Subject
          </button>
        </div>
      </form>
      `);

    add_subject_modal_content.append(add_subject_view2);

    document.getElementById("subjectCode").oninput = () => {
      document.getElementById("subjectCode").value = document
        .getElementById("subjectCode")
        .value.toUpperCase();
    };

    // Inserting the subject into the modal <-- STARTS HERE -->

    document.getElementById("subjectPreq").value = "NONE";
    document.getElementById("subjectElec").value = "GENERAL ELECTIVE COURSES";

    // Inserting the subject into the modal <-- ENDS HERE -->

    // Adding the subject to the new curriculum display <-- STARTS HERE -->

    document.getElementById("saveSubject").onclick = () => {
      if (document.getElementById("subjectCode").value == "") {
        document.getElementById("err_code").innerText = "Required Field!";
        document.getElementById("subjectCode").style.border =
          "1px solid rgb(214, 73, 73)";
        return;
      } else {
        document.getElementById("subjectCode").style.border = "none";
        document.getElementById("err_code").innerText = "";
      }

      if (document.getElementById("subjectDesc").value == "") {
        document.getElementById("err_desc").innerText = "Required Field!";
        document.getElementById("subjectDesc").style.border =
          "1px solid rgb(214, 73, 73)";
        return;
      } else {
        document.getElementById("subjectDesc").style.border = "none";
        document.getElementById("err_desc").innerText = "";
      }

      let subjectdata = {
        id: id,
        subject_code: document.getElementById("subjectCode").value.trim(),
        subject_description: document
          .getElementById("subjectDesc")
          .value.toLowerCase()
          .trim(),
        subject_lecture_units: document
          .getElementById("subjectLec")
          .value.trim(),
        subject_laboratory_units: document
          .getElementById("subjectLab")
          .value.trim(),
      };

      fetch("/request/editGEC", {
        method: "POST",
        headers: {
          "Content-Type": "application/json; charset=utf-8",
        },
        body: JSON.stringify(subjectdata),
      })
        .then(function (response) {
          return response.json();
        })
        .then(function (data) {
          if (!data["result"]) {
            document.getElementById("alert").classList.remove("hidden");
            document.getElementById("alert").innerText =
              "Error! Something went wrong, please try again.";
            return;
          }

          openAddSubjectModal("gec_add_subject");
        });
    };
  }
}
