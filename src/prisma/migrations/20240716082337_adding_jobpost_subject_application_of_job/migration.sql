-- CreateTable
CREATE TABLE "JobPost" (
    "JobPostID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "StudentID" INTEGER NOT NULL,
    "SubjectID" INTEGER NOT NULL,
    "Description" TEXT NOT NULL,
    "PostedDate" DATETIME NOT NULL,
    "Status" TEXT NOT NULL,
    CONSTRAINT "JobPost_StudentID_fkey" FOREIGN KEY ("StudentID") REFERENCES "Student" ("StudentID") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "JobPost_SubjectID_fkey" FOREIGN KEY ("SubjectID") REFERENCES "Subject" ("SubjectID") ON DELETE RESTRICT ON UPDATE CASCADE
);

-- CreateTable
CREATE TABLE "Subject" (
    "SubjectID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "SubjectName" TEXT NOT NULL,
    "Description" TEXT NOT NULL
);

-- CreateTable
CREATE TABLE "JobApplication" (
    "JobApplicationID" INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT,
    "JobPostID" INTEGER NOT NULL,
    "TutorID" INTEGER NOT NULL,
    "ApplicationDate" DATETIME NOT NULL,
    "Status" TEXT NOT NULL,
    CONSTRAINT "JobApplication_JobPostID_fkey" FOREIGN KEY ("JobPostID") REFERENCES "JobPost" ("JobPostID") ON DELETE RESTRICT ON UPDATE CASCADE,
    CONSTRAINT "JobApplication_TutorID_fkey" FOREIGN KEY ("TutorID") REFERENCES "Tutor" ("TutorID") ON DELETE RESTRICT ON UPDATE CASCADE
);
