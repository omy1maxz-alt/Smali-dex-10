.class abstract Lorg/jsoup/nodes/NodeUtils;
.super Ljava/lang/Object;
.source "NodeUtils.java"


# direct methods
.method static outputSettings(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_7

    goto :goto_e

    :cond_7
    new-instance p0, Lorg/jsoup/nodes/Document;

    const-string v0, ""

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    :goto_e
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object p0

    return-object p0
.end method

.method static parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object p0

    if-eqz p0, :cond_11

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->parser()Lorg/jsoup/parser/Parser;

    move-result-object p0

    goto :goto_1b

    :cond_11
    new-instance p0, Lorg/jsoup/parser/Parser;

    new-instance v0, Lorg/jsoup/parser/HtmlTreeBuilder;

    invoke-direct {v0}, Lorg/jsoup/parser/HtmlTreeBuilder;-><init>()V

    invoke-direct {p0, v0}, Lorg/jsoup/parser/Parser;-><init>(Lorg/jsoup/parser/TreeBuilder;)V

    :goto_1b
    return-object p0
.end method
