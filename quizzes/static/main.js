console.log("Hllsdfss");
const modalBtns = [...document.getElementsByClassName('modal-button')]
//to use forEach emthod, the const should be an array,

const modalBody = document.getElementById('modal-body-confirm')
const startBtn = document.getElementById('start-button')
const url = window.location.href
modalBtns.forEach(modalBtn => modalBtn.addEventListener(
'click', ()=>{

const pk =  modalBtn.getAttribute('data-pk')
const name =  modalBtn.getAttribute('data-quiz')
const numQuestions =  modalBtn.getAttribute('data-questions')
const difficulty =  modalBtn.getAttribute('data-difficulty')
const scoreToPass =  modalBtn.getAttribute('data-pass')
const time =  modalBtn.getAttribute('data-time')

modalBody.innerHTML =`
<div class ='h5 mb-3'> Are you ready "<b>${name}</b>"? </div>
<div class ='text-muted'>
<ul>
<li>Difficulty:<b>${difficulty}</b></li>
<li>NUmber of Questions:<b>${numQuestions}</b></li>
<li>Score To pass:<b>${scoreToPass}</b></li>
<li>Time limit:<b>${time} min </b></li>


</ul>
`
startBtn.addEventListener(
'click', ()=>{
window.location.href = url + pk



})
}))
