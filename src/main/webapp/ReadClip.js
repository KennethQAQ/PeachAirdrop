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
