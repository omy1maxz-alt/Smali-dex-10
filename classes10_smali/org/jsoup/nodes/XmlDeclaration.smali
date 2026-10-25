.class public Lorg/jsoup/nodes/XmlDeclaration;
.super Lorg/jsoup/nodes/LeafNode;
.source "XmlDeclaration.java"


# instance fields
.field private final isProcessingInstruction:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    iput-boolean p2, p0, Lorg/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    return-void
.end method

.method private getWholeDeclaration(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 13

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    :goto_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Attribute;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lorg/jsoup/nodes/XmlDeclaration;->nodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    const/16 v1, 0x20

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    const-string v1, "=\""

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v3, p1

    move-object v5, p2

    invoke-static/range {v3 .. v9}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZZ)V

    const/16 v1, 0x22

    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    goto :goto_8

    :cond_48
    return-void
.end method


# virtual methods
.method public bridge synthetic absUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic attr(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 3

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic baseUri()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->baseUri()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic childNodeSize()I
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->childNodeSize()I

    move-result v0

    return v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/XmlDeclaration;->clone()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/XmlDeclaration;->clone()Lorg/jsoup/nodes/XmlDeclaration;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/XmlDeclaration;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/XmlDeclaration;

    return-object v0
.end method

.method public bridge synthetic empty()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->empty()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic hasAttr(Ljava/lang/String;)Z
    .registers 2

    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public name()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .registers 2

    const-string v0, "#declaration"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 7

    const-string p2, "<"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    iget-boolean v0, p0, Lorg/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    const-string v1, "!"

    const-string v2, "?"

    if-eqz v0, :cond_10

    move-object v0, v1

    goto :goto_11

    :cond_10
    move-object v0, v2

    :goto_11
    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    invoke-direct {p0, p1, p3}, Lorg/jsoup/nodes/XmlDeclaration;->getWholeDeclaration(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    iget-boolean p2, p0, Lorg/jsoup/nodes/XmlDeclaration;->isProcessingInstruction:Z

    if-eqz p2, :cond_24

    goto :goto_25

    :cond_24
    move-object v1, v2

    :goto_25
    invoke-interface {p1, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, ">"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 4

    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
