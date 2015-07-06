precede each name with a testId


CRUD ACCOUNTS


  1) sucessfully create teacher account with name = 'test' + testId + '_' + 't1'

  2) create 3 classrooms with names = 'test' + testId + '_' + c_i for c_i in set {c1, c2, c3}

  # from here on out, a name of the form test3_c1 will be referred to by its abbreviated version c1

  3) give c1 and c3 two students
      name : 'test' + testId + '_' + c_i + '.' + s_j
      for c_i in set {c1, c2}
      for s_j in set {s1, s2}

  4) give c2 three students
      name : 'test' + testId + '_c2' + '.' + s_j
      for s_j in set {s1, s2, s3}



  5) while logged in as t1, successfully update every detail of c1.s1
  6) while loggged in as t1, successfuly update every detail of t1
  7) while logged in as admin, successfully update every detail of c1.s1
  8) while logged in as admin, successfully update every detail of c1.t1
  9) log in as t1 to check that admin updates to your account (including subscription) have manifest



CRUD ASSIGNMENTS
  CREATE_UNIT

  1) go to create unit page, enter in unit name :
      'test' + testId + '_' + 'unit1'

  2) select following activities
    "Test A1 (And, Or)" (of activity type practice_questions)
    "Test A2 (Snow Day, Fiction)" (of activity type story)
  these will heretofere be referred to as A1, A2 respectively
  3) click continue, which results in bringing you to stage2 of unit creating process

  4) check classroom checkbox next to c1
  5) check student checkbox next to c2.s1 and c2.s2

  6) select the following due dates for each selected activity :
   A1 : June 25
   A2 : June 26

  CHECK_THAT_UNIT_MANIFESTED_PROPERLY

    SCOREBOOK

      1) shown directly under student c1.s1, c1.s2, c2.s1, and c2.s2 is exactly following :
          a gray box for A1, a gray box for A2

      2) c2.s3, c3.s1, and c3.s2 have no boxes below their names


    STUDENT PROFILES
      In the profile of X (as seen when logged in as X), there is exactly the following :
        a gray box for A1 showing due date June 25
        a gray box for A2 showing due date June 26

      1) when X = c1.s1
      2) when X = c1.s2
      3) when X = c2.s1
      4) when X = c2.s2

      In the profile of Y (as seen when logged in as Y), there are no boxes representing any assignments.

      5) when Y = c2.s3
      6) when Y = c3.s1
      7) when Y = c3.s2


  CHECK_THAT_NEW_STUDENTS_ARE_HANDLED_ACCORDINGLY
  (new students created for c1 should receive assignments, new students created for c2 should NOT receive assignments)
    1) when logged in as t1, create a new student for c1 :
        name : 'test' + testId + '_c1.s3' +
    2) when logged in as t1, create a new student for c2 :
        name : 'test' + testId + '_c2.s4'
    3) check in the scorebook to make sure that :
    4) these students have exactly 2 grey boxes under their names each, 1 corresponding to A1 and 1 corresponding to A2 :
        c1.s1, c1.s2, c1.s3, c2.s1, c2.s2
    5) confirm that c2.s3 has no gray boxes under its name
    6) login as c1.s3 and confirm that in your profile there are 2 gray boxes (for A1 and A2)
    7) login as c2.s4 and confirm that in your profile there are no boxes corresonding to assignmnets


  DO ASSIGNMNETS
    1) login as c1.s1 and complete A1, get a score of 0%
    2) check that c1.s1 profile has changed such that it shows a red box for A1, and still shows a gray box for A2.
    3) login as t1 to make sure that every student still has two gray boxes under their names, except for c1.s1, who has
       1 red box for A1 and one gray box for A2
    4) login as c1.s1 and retry A1, this time getting 100%
    5) check that c1.s1 profile has changed such that it shows a green box for A1, and still shows a gray box for A2.
    6) login as t1 and make sure that every student still has two gray boxes under their names, except fo c1.s1, who has 1 green box for A1 and one gray box for A2

  UPDATE UNIT
    1) click on edit button next to unit1 in units manager
    2) change name of unit1 to unit1_version2
    3) remove A1 from the set of selected activities
    4) add "Test A3 (So, Because)" to the set of selected activities
    5) click 'continue', which should take you to stage2 of the edit unit process
    6) unselect c1.s1
    7) unselect c2.s1
    8) select c2.s3
    9) select c3 (the entire classroom)
    10) change the due date for A2 from June 26 to July 26
    11) give A3 a due date of July 27



  CHECK THAT UNIT UPDATE MANIFESTED
    TEACHER SIDE
      UNITS_MANAGER
        1) the name of unit1 changed to unit1_version2
        2) the A1 no longer appears in unit1_version2. A3 appears instead alongside A2
        3) the due_date of A2 is now July 26

      CREATE_NEW_STUDENT
        1) create new student in c1
            name : 'test' + testId + '_c1.s4'

      SCOREBOOK
        for student X,
        there are exactly two gray boxes under its name.
        one corresponds to A2, one to A3
        when X = :
        1) c1.s2
        2) c1.s3
        3) c2.s2
        4) c2.s3
        5) c3.s1
        6) c3.s2

        for student Y,
        there are no boxes corresponding to assignments under its name.
        when Y = :
        1) c1.s1
        2) c1.s4
        3) c2.s1

    STUDENT_SIDE
      Log in to profile of student X.
      Make sure that X has exactly 2 gray boxes in its profile,
      one corresopnding to A2, which shows due date July 26,
      and one corresponding to A3, which shows due date July 27
      when X = :
      1) c1.s2
      2) c1.s3
      3) c2.s2
      4) c2.s3
      5) c3.s1
      6) c3.s2

      Log in to profile of student Y.
      Make sure that Y has no boxes in its profile corresopnding to assignmnets
      when Y = :
      1) c1.s1
      2) c1.s4
      3) c2.s1













