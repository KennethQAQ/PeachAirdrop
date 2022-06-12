function ReadText(text){
    navigator
        .clipboard
        .readText()
        .then(res => {
            text = res
            console.log('读取文本res: ', text)
            document.write(text)
        })
        .catch(err => console.error('读取文本失败err: ', err))
}
function readClipText(){
    var clipPromise = navigator.clipboard.readText();
    clipPromise.then(function(clipText){
        alert(clipText);
    });

}
let content = document.getElementById('bar');

function setBar() {
    var clipPromise = navigator.clipboard.readText();
    clipPromise.then(function(clipText){
        content.value = clipText;
    });
}