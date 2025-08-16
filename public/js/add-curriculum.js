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
