.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$11;
.super Lorg/jsoup/parser/HtmlTreeBuilderState;
.source "HtmlTreeBuilderState.java"


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilderState;-><init>(Ljava/lang/String;ILorg/jsoup/parser/HtmlTreeBuilderState$1;)V

    return-void
.end method


# virtual methods
.method process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilder;)Z
    .registers 7

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "caption"

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->inTableScope(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_29

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v1

    :cond_29
    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->generateImpliedEndTags()V

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->currentElementIs(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_35

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :cond_35
    invoke-virtual {p2, v2}, Lorg/jsoup/parser/HtmlTreeBuilder;->popStackToClose(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->clearFormattingElementsToLastMarker()V

    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->InTable:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    goto :goto_7c

    :cond_41
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isStartTag()Z

    move-result v0

    if-eqz v0, :cond_57

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asStartTag()Lorg/jsoup/parser/Token$StartTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCellCol:[Ljava/lang/String;

    invoke-static {v0, v3}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_6e

    :cond_57
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_7e

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v3, "table"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    :cond_6e
    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, v2}, Lorg/jsoup/parser/TreeBuilder;->processEndTag(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7c

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1

    :cond_7c
    :goto_7c
    const/4 p1, 0x1

    return p1

    :cond_7e
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isEndTag()Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asEndTag()Lorg/jsoup/parser/Token$EndTag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Tag;->normalName()Ljava/lang/String;

    move-result-object v0

    sget-object v2, Lorg/jsoup/parser/HtmlTreeBuilderState$Constants;->InCaptionIgnore:[Ljava/lang/String;

    invoke-static {v0, v2}, Lorg/jsoup/internal/StringUtil;->inSorted(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_98

    invoke-virtual {p2, p0}, Lorg/jsoup/parser/HtmlTreeBuilder;->error(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    return v1

    :cond_98
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->InBody:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;Lorg/jsoup/parser/HtmlTreeBuilderState;)Z

    move-result p1

    return p1
.end method
