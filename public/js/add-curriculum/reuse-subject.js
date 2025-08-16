// Functions to List Old Subjects <-- STARTS HERE -->
function listOldSubjects(query = "") {
  let searchQuery = {
    query: query.trim(),
  };

  fetch("/request/getPreviousSubjects", {
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
      let listContainer = document.querySelector("#listContainer ul");
      listContainer.innerHTML = "";

      data.forEach((subject) => {
        let anOldSubject = elementFromHtml(`
          <li>
            <button type="button" class="addSubject" id="addSubject">
              ${subject["subject_code"]} - ${subject["subject_description"]}
            </button>
          </li>
          `);

        anOldSubject.onclick = () => {
          openAddSubjectModal(
            "add_subject_modal",
            CURRENTTABLE,
            CURRENTSEMESTER,
            subject["subject_code"],
            subject["subject_description"],
            subject["subject_lecture_units"],
            subject["subject_laboratory_units"],
            subject["subject_pre_requisite"],
            subject["subject_electives"]
          );
        };

        listContainer.appendChild(anOldSubject);
      });
    });
}

listOldSubjects();

// Event listeners for search input
const searchSubject = document.getElementById("searchSubject");
const clearSearch = document.querySelector("#searchInput button");
let SEARCH;

const updateDebounceText = debounce((text) => {
  SEARCH = text;
});

function debounce(cb, delay = 500) {
  let timeout;
  return (...args) => {
    clearTimeout(timeout);
    timeout = setTimeout(() => {
      cb(...args);
      listOldSubjects(SEARCH);
    }, delay);
  };
}

searchSubject.addEventListener("input", () => {
  if (clearSearch.style.display == "") {
    clearSearch.style.display = "inline";
    clearSearch.style.position = "absolute";
  } else if (searchSubject.value == "") {
    clearSearch.style.display = "";
    clearSearch.style.position = "";
  }

  updateDebounceText(searchSubject.value);
});

clearSearch.onclick = () => {
  searchSubject.value = "";
  clearSearch.style.display = "";
  clearSearch.style.position = "";
  updateDebounceText(searchSubject.value);
};

// Functions to List Old Subjects <-- ENDS HERE -->
