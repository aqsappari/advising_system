// Functions to Add Subject <-- STARTS HERE -->
function insertToSubjectJSON(
  year = "",
  semester = "",
  code = "",
  desc = "",
  lec = "",
  lab = "",
  preq = "None",
  elec = "",
  subjectIndex = "",
  tableIndex = ""
) {
  let unit = Number(lec) + Number(lab);
  preq = preq == "" ? "None" : preq;
  elec = elec == "" ? "None" : elec;
  subjectIndex = subjectIndex == "" ? null : subjectIndex;
  tableIndex = tableIndex == "" ? null : tableIndex;
  let subjectJSON = {
    subjectYear: year,
    subjectSemester: semester,
    subjectCode: code,
    subjectDesc: desc,
    subjectLec: Number(lec),
    subjectLab: Number(lab),
    subjectUnit: unit,
    subjectPreq: preq,
    subjectElec: elec,
  };

  if (subjectIndex != null) {
    SUBJECTS[subjectIndex] = subjectJSON;
  } else {
    SUBJECTS.push(subjectJSON);
  }
}

function insertToDisplayTable(
  table = "",
  code = "",
  desc = "",
  lec = "",
  lab = "",
  preq = "None",
  elec = "None",
  subjectIndex = null,
  tableIndex = null
) {
  let unit = Number(lec) + Number(lab);
  preq = preq == "" ? "None" : preq;
  elec = elec == "" ? "None" : elec;
  subjectIndex = subjectIndex == "" ? null : subjectIndex;
  tableIndex = tableIndex == "" ? null : tableIndex;

  let newSubject;
  if (elec == "None") {
    newSubject = elementFromHtml(`
      <tr>
        <td>${code}</td>
        <td class="text-left">${desc}</td>
        <td>${Number(lec)}</td>
        <td>${Number(lab)}</td>
        <td>${Number(unit)}</td>
        <td>${preq}</td>
        <td id="action-row">
            <div id="action">
                <button type="button" id="editSubject">Edit</button>
                <button type="button" id="removeSubject">X</button>
                <input type="number" id="index" value="${
                  subjectIndex ?? SUBJECTS.length
                }" hidden>
            </div>
        </td>
      </tr>
    `);
  } else if (elec == "General Elective Course") {
    newSubject = elementFromHtml(`
      <tr>
        <td></td>
        <td class="text-left">${desc}</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td id="action-row">
            <div id="action">
                <button type="button" id="removeSubject">X</button>
                <input type="number" id="index" value="${
                  subjectIndex ?? SUBJECTS.length
                }" hidden>
            </div>
        </td>
      </tr>
    `);
  } else if (elec == "Elective Course") {
    newSubject = elementFromHtml(`
      <tr>
        <td></td>
        <td class="text-left">${desc}</td>
        <td></td>
        <td></td>
        <td></td>
        <td></td>
        <td id="action-row">
            <div id="action">
                <button type="button" id="removeSubject">X</button>
                <input type="number" id="index" value="${
                  subjectIndex ?? SUBJECTS.length
                }" hidden>
            </div>
        </td>
      </tr>
    `);
    ELECNUM++;
  } else {
    newSubject = elementFromHtml(`
      <tr>
        <td>${code}</td>
        <td class="text-left">${desc}</td>
        <td>${Number(lec)}</td>
        <td>${Number(lab)}</td>
        <td>${Number(unit)}</td>
        <td>${preq}</td>
        <td id="action-row">
            <div id="action">
                <button type="button" id="editSubject">Edit</button>
                <button type="button" id="removeSubject">X</button>
                <input type="number" id="index" value="${
                  subjectIndex ?? SUBJECTS.length
                }" hidden>
            </div>
        </td>
      </tr>
    `);
  }

  const currentTable = document.getElementById(table);

  if (tableIndex == null) {
    currentTable.querySelector("tbody").appendChild(newSubject);
  } else {
    currentTable
      .querySelector("tbody")
      .children[tableIndex].insertAdjacentElement("afterend", newSubject);
    currentTable.querySelector("tbody").children[tableIndex].remove();
  }

  if (document.querySelector(`#${table} tfoot`) != null) {
    document.querySelector(`#${table} tfoot`).remove();
  }

  let action = newSubject.children["action-row"].children["action"];
  action.children["removeSubject"].onclick = () => {
    const index = action.children["index"].value;
    SUBJECTS[index] = "REMOVED";
    newSubject.remove();

    ELECNUM = ELECNUM > 1 ? ELECNUM - 1 : 1;
    check_if_table_empty(table);
  };

  if (action.children["editSubject"] != null) {
    action.children["editSubject"].onclick = (event) => {
      const subjectIndex = action.children["index"].value;
      const tableIndex = event.target.parentNode.parentNode.parentNode.rowIndex;

      let newCode = SUBJECTS[subjectIndex]["subjectCode"];
      let newDesc = SUBJECTS[subjectIndex]["subjectDesc"];
      let newLec = SUBJECTS[subjectIndex]["subjectLec"];
      let newLab = SUBJECTS[subjectIndex]["subjectLab"];
      let newPreq = SUBJECTS[subjectIndex]["subjectPreq"];
      let newElec = SUBJECTS[subjectIndex]["subjectElec"];

      openAddSubjectModal(
        "add_subject_modal",
        CURRENTTABLE,
        CURRENTSEMESTER,
        newCode,
        newDesc,
        newLec,
        newLab,
        newPreq,
        newElec,
        subjectIndex,
        tableIndex - 2
      );
    };
  }
}

// openAddSubjectModal("add_subject_modal", CURRENTTABLE, CURRENTSEMESTER);
// openAddSubjectModal("2nd_action_modal");

function openAddSubjectModal(
  modal_purpose = "",
  currentTable = "",
  currentSemester = "",
  code = "",
  desc = "",
  lec = "",
  lab = "",
  preq = "",
  elec = "",
  subjectIndex = "",
  tableIndex = ""
) {
  // Setting up the modal <-- STARTS HERE -->
  const modal = document.getElementById("modal");
  const add_subject_modal = document.getElementById("add-subject-modal");
  const add_subject_modal_content = document.querySelector(
    "#add-subject-modal .modal-content"
  );
  const close_modal = document.getElementById("close-add-subject-modal");

  add_subject_modal_content.innerHTML = "";

  switch (modal_purpose) {
    case "action_modal": // action for opening the modal
      const choose_action = elementFromHtml(`
        <div class="modal-buttons-2">
          <button type="button" id="add1">ADD NEW SUBJECT</button>
          <button type="button" id="add2">ADD ELECTIVE SUBJECT</button>
        </div>
        `);
      add_subject_modal_content.append(choose_action);

      const add_subject_button = document.querySelector(
        ".modal-buttons-2 #add1"
      );
      add_subject_button.onclick = () => {};

      const add_gec_button = document.querySelector(".modal-buttons-2 #add2");
      add_gec_button.onclick = () => {};

      break;

    case "add_subject_modal": // Modal for adding/editing subject
      const add_subject_view = elementFromHtml(`
        <form>
          <div class="input-group flex-col">
            <label for="subjectCode">Subject Code:</label>
            <input type="text" id="subjectCode" required />
          </div>
          <div class="input-group flex-col">
            <label for="subjectDesc">Subject Description:</label>
            <input type="text" id="subjectDesc" required />
            <!-- <div class="note">Separate by comma (,) if multiple subjects</div> -->
          </div>
          <div class="input-group flex-col">
            <label for="subjectLec">Lec Units:</label>
            <input type="number" id="subjectLec"
              oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null"
              Required />
          </div>
          <div class="input-group flex-col">
            <label for="subjectLab">Lab Units:</label>
            <input type="number" id="subjectLab"
              oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null"
              Required />
          </div>
          <div class="input-group flex-col">
            <label for="subjectPreq">Pre-requisite:</label>
            <input type="text" id="subjectPreq" placeholder="Separate by Comma (,)" />
            <div class="note">Leave Empty if Value is None</div>
          </div>
          <div class="input-group flex-col">
            <label for="subjectElec">Elective Name:</label>
            <input type="text" id="subjectElec" />
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

      add_subject_modal_content.append(add_subject_view);

      // Inserting the subject into the modal <-- STARTS HERE -->

      document.getElementById("subjectCode").value = code;
      document.getElementById("subjectDesc").value = desc;
      document.getElementById("subjectLec").value = lec;
      document.getElementById("subjectLab").value = lab;
      document.getElementById("subjectPreq").value = preq;
      document.getElementById("subjectElec").value = elec;
      document.getElementById("tableIndex").value = tableIndex;

      // Inserting the subject into the modal <-- ENDS HERE -->

      // Adding the subject to the new curriculum display <-- STARTS HERE -->

      document.getElementById("saveSubject").onclick = () => {
        const semesterSeparator = currentSemester.split(" - ");

        close_modal.click();

        insertToDisplayTable(
          currentTable,
          document.getElementById("subjectCode").value.trim(),
          document.getElementById("subjectDesc").value.trim(),
          document.getElementById("subjectLec").value.trim(),
          document.getElementById("subjectLab").value.trim(),
          document.getElementById("subjectPreq").value.trim(),
          document.getElementById("subjectElec").value.trim(),
          subjectIndex,
          document.getElementById("tableIndex").value.trim()
        );

        insertToSubjectJSON(
          semesterSeparator[0].substring(0, 1),
          semesterSeparator[1],
          document.getElementById("subjectCode").value.trim(),
          document.getElementById("subjectDesc").value.trim(),
          document.getElementById("subjectLec").value.trim(),
          document.getElementById("subjectLab").value.trim(),
          document.getElementById("subjectPreq").value.trim(),
          document.getElementById("subjectElec").value.trim(),
          subjectIndex
        );
      };

      // Adding the subject to the new curriculum display <-- ENDS HERE -->
      break;

    case "2nd_action_modal":
      const choose_modal_2 = elementFromHtml(`
        <div class="modal-buttons-2">
          <button type="button" id="act1">ADD ELECTIVE SUBJECTS</button>
          <button type="button" id="act2">ADD GEC SUBJECTS</button>
        </div>
        `);

      add_subject_modal_content.append(choose_modal_2);

      document.querySelector(".modal-buttons-2 #act2").onclick = () => {
        openAddSubjectModal("gec_action_modal");
      };

      document.querySelector(".modal-buttons-2 #act1").onclick = () => {
        openAddSubjectModal("elec_action_modal");
      };

      break;

    case "elec_action_modal":
      const elec_choose_modal = elementFromHtml(`
        <div class="modal-buttons-2">
          <button type="button" id="elec1">ADD / REVIEW  <br> ELECTIVE SUBJECTS</button>
          <button type="button" id="elec2">ADD HOLDER FOR <br> ELECTIVE SUBJECTS</button>
        </div>
        `);

      add_subject_modal_content.append(elec_choose_modal);

      document.querySelector(".modal-buttons-2 #elec2").onclick = () => {
        const semesterSeparator = currentSemester.split(" - ");

        close_modal.click();

        insertToDisplayTable(
          CURRENTTABLE,
          "",
          "Elective Subject **",
          "",
          "",
          "",
          "Elective Course",
          subjectIndex
        );

        insertToSubjectJSON(
          semesterSeparator[0].substring(0, 1),
          semesterSeparator[1],
          "",
          "Elective Subject **",
          "",
          "",
          "",
          "Elective Course",
          subjectIndex
        );
      };

      document.querySelector(".modal-buttons-2 #gec1").onclick = () => {
        openAddSubjectModal("elec_add_subject");
      };

      break;

    case "gec_action_modal":
      const gec_choose_modal = elementFromHtml(`
        <div class="modal-buttons-2">
          <button type="button" id="gec1">ADD / REVIEW  <br> GEC SUBJECTS</button>
          <button type="button" id="gec2">ADD HOLDER FOR <br> GEC SUBJECTS</button>
        </div>
        `);

      add_subject_modal_content.append(gec_choose_modal);

      document.querySelector(".modal-buttons-2 #gec2").onclick = () => {
        const semesterSeparator = currentSemester.split(" - ");

        close_modal.click();

        insertToDisplayTable(
          CURRENTTABLE,
          "",
          "GEC Subject **",
          "",
          "",
          "",
          "General Elective Course",
          subjectIndex
        );

        insertToSubjectJSON(
          Number(semesterSeparator[0]),
          semesterSeparator[1],
          "",
          "GEC Subject **",
          "",
          "",
          "",
          "General Elective Course",
          subjectIndex
        );
      };

      document.querySelector(".modal-buttons-2 #gec1").onclick = () => {
        openAddSubjectModal("gec_add_subject");
      };

      break;

    case "gec_add_subject":
      gec_function();
      break;

    case "add_gec_subject":
      const add_subject_view2 = elementFromHtml(`
        <form>
          <span id="alert hidden"></span>
          <div class="input-group flex-col">
            <label for="subjectCode">Subject Code:</label>
            <input type="text" id="subjectCode" required />
            <span class="err" id="err_code"></span>
          </div>
          <div class="input-group flex-col">
            <label for="subjectDesc">Subject Description:</label>
            <input type="text" id="subjectDesc" required />
            <!-- <div class="note">Separate by comma (,) if multiple subjects</div> -->
            <span class="err" id="err_desc"></span>
          </div>
          <div class="input-group flex-col">
            <label for="subjectLec">Lec Units:</label>
            <input type="number" id="subjectLec"
              oninput="this.value = !!this.value && Math.abs(this.value) >= 0 ? Math.abs(this.value) : null"
              Required />
          </div>
          <div class="input-group flex-col">
            <label for="subjectLab">Lab Units:</label>
            <input type="number" id="subjectLab"
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

        fetch("/request/uploadGEC", {
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
      break;
  }

  modal.classList.replace("hidden", "flex");
  add_subject_modal.removeAttribute("hidden");

  close_modal.onclick = () => {
    modal.classList.replace("flex", "hidden");
    add_subject_modal.setAttribute("hidden", "");
  };

  // Setting up the modal <-- ENDS HERE -->
}

const createSubject = document.getElementById("createSubject");

createSubject.onclick = () => {
  // openAddSubjectModal();
  openAddSubjectModal("action_modal");
};

// Functions to Add Subject <-- ENDS HERE -->
