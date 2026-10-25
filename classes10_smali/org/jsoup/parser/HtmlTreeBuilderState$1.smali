.class final enum Lorg/jsoup/parser/HtmlTreeBuilderState$1;
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
    .registers 9

    invoke-static {p1}, Lorg/jsoup/parser/HtmlTreeBuilderState;->access$100(Lorg/jsoup/parser/Token;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    return v1

    :cond_8
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isComment()Z

    move-result v0

    if-eqz v0, :cond_16

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asComment()Lorg/jsoup/parser/Token$Comment;

    move-result-object p1

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->insert(Lorg/jsoup/parser/Token$Comment;)V

    goto :goto_5c

    :cond_16
    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->isDoctype()Z

    move-result v0

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Lorg/jsoup/parser/Token;->asDoctype()Lorg/jsoup/parser/Token$Doctype;

    move-result-object v0

    new-instance v2, Lorg/jsoup/nodes/DocumentType;

    iget-object v3, p2, Lorg/jsoup/parser/TreeBuilder;->settings:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->getPublicIdentifier()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->getSystemIdentifier()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lorg/jsoup/nodes/DocumentType;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->getPubSysKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/DocumentType;->setPubSysKey(Ljava/lang/String;)V

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jsoup/nodes/Element;->appendChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    invoke-virtual {p2, v2, p1}, Lorg/jsoup/parser/TreeBuilder;->onNodeInserted(Lorg/jsoup/nodes/Node;Lorg/jsoup/parser/Token;)V

    invoke-virtual {v0}, Lorg/jsoup/parser/Token$Doctype;->isForceQuirks()Z

    move-result p1

    if-eqz p1, :cond_57

    invoke-virtual {p2}, Lorg/jsoup/parser/HtmlTreeBuilder;->getDocument()Lorg/jsoup/nodes/Document;

    move-result-object p1

    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->quirks:Lorg/jsoup/nodes/Document$QuirksMode;

    invoke-virtual {p1, v0}, Lorg/jsoup/nodes/Document;->quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;

    :cond_57
    sget-object p1, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    :goto_5c
    return v1

    :cond_5d
    sget-object v0, Lorg/jsoup/parser/HtmlTreeBuilderState;->BeforeHtml:Lorg/jsoup/parser/HtmlTreeBuilderState;

    invoke-virtual {p2, v0}, Lorg/jsoup/parser/HtmlTreeBuilder;->transition(Lorg/jsoup/parser/HtmlTreeBuilderState;)V

    invoke-virtual {p2, p1}, Lorg/jsoup/parser/HtmlTreeBuilder;->process(Lorg/jsoup/parser/Token;)Z

    move-result p1

    return p1
.end method
