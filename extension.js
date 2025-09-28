const vscode = require('vscode');

function activate(context) {
    let disposable = vscode.commands.registerCommand('tester.insertTstartWithAutoNumber', function () {
        const editor = vscode.window.activeTextEditor;
        if (!editor) return;

        const doc = editor.document;
        const text = doc.getText();
        // 匹配所有序号 tstart
        const matches = text.match(/(\d+)\s+tstart=/g);
        let nextNum = 1;
        if (matches && matches.length > 0) {
            // 获取最大序号
            const nums = matches.map(m => parseInt(m.match(/(\d+)/)[1], 10));
            nextNum = Math.max(...nums) + 1;
        }
        // 插入片段
        const snippet = new vscode.SnippetString(`${nextNum} tstart=\${1:用例描述}\n  \${2}\ntend\n`);
        editor.insertSnippet(snippet, editor.selection.active);
    });

    context.subscriptions.push(disposable);
}

function deactivate() {}

module.exports = {
    activate,
    deactivate
};
