function showAddTable(){
    var stdForm = document.getElementById("addNewStudentForm");
    stdForm.style.position="absolute";
    stdForm.style.zIndex = "50";
    stdForm.style.display="block";
    stdForm.style.maxWidth="810px";
    stdForm.style.left = "150px";
    stdForm.style.top = "150px";
}

function closeAddTable(){
    var element = document.getElementById("addNewStudentForm")
    element.style.display="none";
}