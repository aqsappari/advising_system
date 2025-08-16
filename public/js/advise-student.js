let SUBJECTS = [];
let UNLISTED = [];
let LISTED = [];

const searchSubject = document.getElementById("searchSubject");
const emptySearch = document.getElementById("emptySearch");
const total = document.getElementById("total");
const max = document.getElementById("max").innerText;

function elementFromHtml(html) {
  const template = document.createElement("template");

  template.innerHTML = html.trim();

  return template.content.firstElementChild;
}

function filterUnlisted(search = "") {
  if (search.length > 0) {
    emptySearch.style.display = "inline";
    emptySearch.style.position = "absolute";
  }

  let FILTERED = [];

  UNLISTED.forEach((list) => {
    if (list != "REMOVED") {
      if (
        list["subject_code"].includes(searchSubject.value) ||
        list["subject_description"].includes(searchSubject.value)
      ) {
        FILTERED.push(list);
      }
      //   console.log(list);
    }
  });

  FILTERED.forEach((list) => {
    displayUnlisted(
      list["subject_year"],
      list["subject_semester"],
      list["subject_code"],
      list["subject_description"],
      list["subject_total_units"],
      list["subject_pre_requisite"],
      list["subject_electives"]
    );
  });
}

function displayUnlisted(
  year = "",
  semester = "",
  code = "",
  desc = "",
  unit = "",
  preq = "None",
  elec = ""
) {
  preq = preq == "" ? "None" : preq;
  elec = elec == "" ? null : elec;

  let subject = elementFromHtml(`
        <li>
          <button type="button" class="addSubject" id="addSubject">
            ${code} - ${desc}
          </button>
        </li>
        `);

  const listContainer = document.querySelector("#listContainer ul");

  subject.onclick = () => {
    // console.log(year, semester, code, desc, Number(unit), preq, elec);

    // console.log(LISTED);

    if (Number(total.innerText) < Number(max)) {
      insertToLISTED(year, semester, code, desc, Number(unit), preq, elec);

      UNLISTED.forEach((list, index) => {
        if (list["subject_code"] == code) {
          UNLISTED[index] = "REMOVED";
        }
      });

      subject.remove();
    }
  };

  listContainer.appendChild(subject);
}

function insertToUNLISTED(
  year = "",
  semester = "",
  code = "",
  desc = "",
  unit = "",
  preq = "None",
  elec = ""
) {
  preq = preq == "" ? "None" : preq;
  elec = elec == "" ? null : elec;
  let subjectJSON = {
    subject_year: year,
    subject_semester: semester,
    subject_code: code,
    subject_description: desc,
    subject_total_units: Number(unit),
    subject_pre_requisite: preq,
    subject_electives: elec,
  };

  UNLISTED.push(subjectJSON);
}

function checkUnits() {
  let totalUnits = 0;
  LISTED.forEach((subject) => {
    if (subject != "REMOVED") {
      totalUnits = totalUnits + Number(subject["subject_total_units"]);
    }
  });

  total.innerText = totalUnits;

  if (Number(total.innerText) > Number(max)) {
    total.style.color = "red";
  } else {
    total.style.color = "black";
  }
}

function insertToDisplayTable(
  year = "",
  semester = "",
  code = "",
  desc = "",
  unit = "",
  preq = "None",
  elec = "",
  tableIndex = null
) {
  preq = preq == "" ? "None" : preq;
  elec = elec == "" ? null : elec;
  tableIndex = tableIndex == "" ? null : tableIndex;

  let subject = elementFromHtml(`
      <tr>
        <td>${code}</td>
        <td class="text-left">${desc}</td>
        <td>${Number(unit)}</td>
        <td>${preq}</td>
        <td>
            <div id="action">
                <button type="button" id="removeSubject">X</button>
            </div>
        </td>
      </tr>
    `);

  const currentTable = document.getElementById("table");

  if (tableIndex == null) {
    currentTable.querySelector("tbody").appendChild(subject);
  } else {
    currentTable
      .querySelector("tbody")
      .children[tableIndex].insertAdjacentElement("afterend", subject);
    currentTable.querySelector("tbody").children[tableIndex].remove();
  }

  if (document.querySelector(`#table tfoot`) != null) {
    document.querySelector(`#table tfoot`).remove();
  }

  let action = subject.children[4].children["action"];
  action.children["removeSubject"].onclick = () => {
    insertToUNLISTED(year, semester, code, desc, unit, preq, elec);

    LISTED.forEach((list, index) => {
      if (list["subject_code"] == code) {
        LISTED[index] = "REMOVED";
      }
    });

    subject.remove();

    searchSubject.value = "";
    const listContainer = document.querySelector("#listContainer ul");
    listContainer.innerHTML = "";

    filterUnlisted();

    checkUnits();

    check_if_table_empty();
  };

  checkUnits();
}

function insertToLISTED(
  year = "",
  semester = "",
  code = "",
  desc = "",
  unit = "",
  preq = "None",
  elec = ""
) {
  preq = preq == "" ? "None" : preq;
  elec = elec == "" ? null : elec;
  let subjectJSON = {
    subject_year: year,
    subject_semester: semester,
    subject_code: code,
    subject_description: desc,
    subject_total_units: Number(unit),
    subject_pre_requisite: preq,
    subject_electives: elec,
  };

  LISTED.push(subjectJSON);

  insertToDisplayTable(year, semester, code, desc, Number(unit), preq, elec);
}

function check_if_table_empty() {
  const currentTable = document.getElementById("table");

  if (currentTable.querySelector("tbody").childElementCount != 0) {
    if (document.querySelector(`#table tfoot`) != null) {
      document.querySelector(`#table tfoot`).remove();
    }
    return;
  }

  let tfoot = elementFromHtml(
    `<tfoot><tr><td colspan="7">Leave EMPTY if no subject for this Semester</td></tr></tfoot>`
  );
  currentTable.appendChild(tfoot);
}

let tableContent = document.getElementById("tableContent");

let displayTable = elementFromHtml(`
    <table id="table">
        <thead>
            <tr>
                <th width="10%">Code</th>
                <th width="50%">Description</th>
                <th width="10%">Units</th>
                <th width="20%">Pre-requisite</th>
                <th width="10%"></th>
            </tr>
        </thead>
        <tbody>
        </tbody>
    </table>
    `);
tableContent.appendChild(displayTable);

check_if_table_empty();

let searchQuery = {
  name: document.getElementById("studentTable").innerText,
  year: parseInt(document.getElementById("header").innerText.split(" - ")[0]),
  semester: document.getElementById("header").innerText.split(" - ")[1],
};

fetch("/request/getAvailableSubjects", {
  method: "POST",
  headers: {
    "Content-Type": "application/json; charset=utf-8",
  },
  body: JSON.stringify(searchQuery),
})
  .then(function (response) {
    return response.json();
  })
  .then(function (data) {
    data.forEach(function callback(subject, index) {
      if (subject["subject_electives"] != "None") {
        if (subject["subject_electives"] != "General Elective Course") {
          return;
        }
      }

      if (
        subject["subject_year"] == searchQuery["year"] &&
        subject["subject_semester"] == searchQuery["semester"]
      ) {
        if (Number(total.innerText) < Number(max)) {
          insertToLISTED(
            subject["subject_year"],
            subject["subject_semester"],
            subject["subject_code"],
            subject["subject_description"],
            subject["subject_total_units"],
            subject["subject_pre_requisite"],
            subject["subject_electives"]
          );
        } else {
          insertToUNLISTED(
            subject["subject_year"],
            subject["subject_semester"],
            subject["subject_code"],
            subject["subject_description"],
            subject["subject_total_units"],
            subject["subject_pre_requisite"],
            subject["subject_electives"]
          );
        }
      } else {
        insertToUNLISTED(
          subject["subject_year"],
          subject["subject_semester"],
          subject["subject_code"],
          subject["subject_description"],
          subject["subject_total_units"],
          subject["subject_pre_requisite"],
          subject["subject_electives"]
        );
      }
    });

    filterUnlisted();
  });

searchSubject.addEventListener("keyup", () => {
  const listContainer = document.querySelector("#listContainer ul");
  listContainer.innerHTML = "";
  filterUnlisted(searchSubject.value.trim());
});

emptySearch.onclick = () => {
  searchSubject.value = "";
  emptySearch.style.display = "none";
  const listContainer = document.querySelector("#listContainer ul");
  listContainer.innerHTML = "";
  filterUnlisted();
};

document.getElementById("saveSubject").onclick = () => {
  let FILTERED2 = [];

  LISTED.forEach((list) => {
    if (list != "REMOVED") {
      FILTERED2.push(list);
    }
  });

  document.getElementById("subjectJSON").innerText = JSON.stringify(FILTERED2);

  document.getElementById("submit").click();
};
