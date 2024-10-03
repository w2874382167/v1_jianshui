$(function () {
    let editor = editormd.markdownToHTML("article_content", {
        width: "20%",
        height: "20%",
        path: "/static/editor-md/lib/",
        htmlDecode: true,
        codeFold: true,
    });
});