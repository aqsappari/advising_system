<?php require 'partials/head.php'; ?>

<!-- dataTables -->
<link rel="stylesheet" href="css/datatables.min.css">
</head>

<body class="coe">
    <div class="w-dynamic h-mobile bg-neutral flex">
        <!-- sidebar start -->
        <?php require "partials/sidebar.php" ?>
        <!-- sidebar end -->
        <main class="sm:px-4 sm:py-10 flex-1 overflow-y-auto overflow-x-hidden">

            <div class="w-full mx-auto bg-white shadow-lg rounded-sm border border-gray-200">
                <div
                    class="px-5 py-4 border-b border-gray-100 grid gap-4 lg:gap-0 lg:flex lg:justify-between overflow-x-auto">
                    <div class="flex gap-4">
                        <h1 class="text-xl font-semibold text-contrast whitespace-nowrap leading-loose">
                            <?= $heading ?>
                        </h1>
                    </div>
                </div>

                <div class="my-3 mb-9 mx-1 p-5 relative w-full">

                    <div class="mb-6">
                        <label for="name" class="block mb-2 text-sm font-medium text-gray-900">
                            Name
                        </label>
                        <input type="text" id="name" name="name"
                            class="text-gray-900 text-sm focus:ring-blue-500 focus:outline-none block w-full p-2.5 bg-transparent border-b border-b-gray-300"
                            placeholder="Name of Curriculum" value="<?= $details['name'] ?>" required readonly />
                        <div id="errName" class="text-right text-xs text-gray-500" hidden>Required</div>
                    </div>

                    <div class="grid gap-6 mb-6 md:grid-cols-2">
                        <div>
                            <label for="year" class="block mb-2 text-sm font-medium text-gray-900">
                                Year Effective
                            </label>
                            <!--rounded-lg bg-gray-50 border border-gray-300 -->
                            <input type="tel" id="year" name="year"
                                class="text-gray-900 text-sm focus:ring-blue-500 focus:outline-none block w-full p-2.5 bg-transparent border-b border-b-gray-300"
                                placeholder="20XX - 20XX+1" pattern="20[0-9]{2} - 20[0-9]{2}"
                                value="<?= $details['effective_from_ay'] ?>" required readonly />
                            <div id="errYear" class="text-right text-xs text-gray-500" hidden>Required</div>
                        </div>
                        <div>
                            <label for="mname" class="block mb-2 text-sm font-medium text-gray-900">
                                Department
                            </label>
                            <input type="text" id="dept" name="dept"
                                class="text-gray-900 text-sm focus:ring-blue-500 focus:outline-none block w-full p-2.5 bg-transparent border-b border-b-gray-300"
                                placeholder="BS Computer Engineering" value="<?= $details['department'] ?>" required
                                readonly />
                        </div>
                    </div>

                    <div class="my-3 mx-1 p-5  relative w-full">

                        <div id="yearDivisor" class="w-full grid lg:grid-cols-2 gap-4">
                            <?php

                            function getYearOrdinalString(int $year): string
                            {
                                $lastDigit = $year % 10;
                                $suffix = 'th';
                                if ($lastDigit === 1) {
                                    $suffix = 'st';
                                } elseif ($lastDigit === 2) {
                                    $suffix = 'nd';
                                } elseif ($lastDigit === 3) {
                                    $suffix = 'rd';
                                }
                                return $year . $suffix . ' Year';
                            }


                            foreach ($years as $year) {
                                foreach ($semesters as $semester) {

                                    $yearDivisor = getYearOrdinalString($year['subject_year']);


                                    $termDivisor = $semester['subject_semester'];


                                    $subjectReturn = [];
                                    foreach ($subjects as $subject) {
                                        if ($subject['subject_year'] == $year['subject_year'] && $subject['subject_semester'] == $semester['subject_semester']) {
                                            $subjectReturn[] = $subject;
                                        }
                                    }

                                    if (sizeof($subjectReturn) > 0) {
                                        ?>

                                        <div class="px-3 py-6 shadow">
                                            <div class="text-md  font-bold text-center"><?= "{$yearDivisor} - {$termDivisor}" ?>
                                            </div>
                                            <table width="600" class="w-full">
                                                <tr class="bg-gray-200">
                                                    <th width="75" class="font-semibold text-center py-1 border border-black">
                                                        Code</th>
                                                    <th width="300" class="font-semibold text-center py-1 border border-black">
                                                        Description</th>
                                                    <th width="30" class="font-semibold text-center py-1 border border-black">
                                                        Lec</th>
                                                    <th width="30" class="font-semibold text-center py-1 border border-black">
                                                        Lab</th>
                                                    <th width="30" class="font-semibold text-center py-1 border border-black">
                                                        Units</th>
                                                    <th width="135" class="font-semibold text-center py-1 border border-black">
                                                        Pre-requisite</th>
                                                </tr>
                                                <?php
                                                foreach ($subjectReturn as $subject) {
                                                    ?>

                                                    <tr class="bg-yellow-100/10">
                                                        <td class="text-center p-1 border border-black">
                                                            <?= $subject['subject_code'] ?>
                                                        </td>
                                                        <td class="text-center p-1 border border-black">
                                                            <?= $subject['subject_description'] ?>
                                                        </td>
                                                        <td class="text-center p-1 border border-black">
                                                            <?= $subject['subject_lecture_units'] ?>
                                                        </td>
                                                        <td class="text-center p-1 border border-black">
                                                            <?= $subject['subject_laboratory_units'] ?>
                                                        </td>
                                                        <td class="text-center p-1 border border-black">
                                                            <?= $subject['subject_total_units'] ?>
                                                        </td>
                                                        <td class="text-center p-1 border border-black">
                                                            <?= $subject['subject_pre_requisite'] ?>
                                                        </td>
                                                    </tr>

                                                    <?php
                                                }
                                                ?>

                                            </table>
                                        </div>

                                        <?php
                                    }
                                }
                            }
                            ?>
                        </div>

                    </div>

                </div>


                <div class="my-3 mb-9 mx-1 p-5 relative w-full">

                    <div class="mb-6 text-center font-bold text-xl border-t border-b py-2">
                        Curriculum Electives
                    </div>

                    <div class="my-3 mx-1 p-5  relative w-full">

                        <div id="electiveDivisor" class="w-full grid md:grid-cols-2 gap-4">
                            <?php
                            if (sizeof($electives) > 0) {
                                foreach ($electives as $elective) {
                                    $subjectReturn = [];
                                    foreach ($eSubjects as $eSubject) {
                                        if ($eSubject['subject_electives'] == $elective['subject_electives']) {
                                            $subjectReturn[] = $eSubject;
                                        }
                                    }
                                    if (sizeof($subjectReturn) > 0) {
                                        ?>

                                        <div class="p-2 shadow bg-gray-100/30">
                                            <div class="text-sm font-medium text-center"><?= "{$elective['subject_electives']}" ?>
                                            </div>
                                            <table width="600" class="w-full">
                                                <tr class="bg-gray-200">
                                                    <th width="75"
                                                        class="text-xs font-semibold text-center py-1 border border-black">
                                                        Code</th>
                                                    <th width="300"
                                                        class="text-xs font-semibold text-center py-1 border border-black">
                                                        Description</th>
                                                    <th width="30"
                                                        class="text-xs font-semibold text-center py-1 border border-black">
                                                        Lec</th>
                                                    <th width="30"
                                                        class="text-xs font-semibold text-center py-1 border border-black">
                                                        Lab</th>
                                                    <th width="30"
                                                        class="text-xs font-semibold text-center py-1 border border-black">
                                                        Units</th>
                                                    <th width="135"
                                                        class="text-xs font-semibold text-center py-1 border border-black">
                                                        Pre-requisite</th>
                                                </tr>
                                                <?php
                                                foreach ($subjectReturn as $subject) {
                                                    ?>

                                                    <tr>
                                                        <td class="text-xs text-center p-1 border border-black bg-yellow-300/10">
                                                            <?= $subject['subject_code'] ?>
                                                        </td>
                                                        <td class="text-xs text-center p-1 border border-black bg-yellow-300/10">
                                                            <?= $subject['subject_description'] ?>
                                                        </td>
                                                        <td class="text-xs text-center p-1 border border-black bg-yellow-300/10">
                                                            <?= $subject['subject_lecture_units'] ?>
                                                        </td>
                                                        <td class="text-xs text-center p-1 border border-black bg-yellow-300/10">
                                                            <?= $subject['subject_laboratory_units'] ?>
                                                        </td>
                                                        <td class="text-xs text-center p-1 border border-black bg-yellow-300/10">
                                                            <?= $subject['subject_total_units'] ?>
                                                        </td>
                                                        <td class="text-xs text-center p-1 border border-black bg-yellow-300/10">
                                                            <?= $subject['subject_pre_requisite'] ?>
                                                        </td>
                                                    </tr>

                                                    <?php
                                                }
                                                ?>

                                            </table>
                                        </div>

                                        <?php
                                    }
                                }
                            } else {
                                ?>
                                <div class="w-full text-center text-gray-400 col-span-2">No Electives for this Curriculum
                                </div>
                                <?php
                            }
                            ?>
                        </div>

                    </div>

                </div>

                <div class="p-3">

                </div>
            </div>

        </main>
    </div>

    <!-- script starts here -->
    <script src="<?= js('datatables.min.js') ?>"></script>
    <script src="<?= js('curriculum.js') ?>"></script>

    <!-- script ends here -->

</body>

</html>