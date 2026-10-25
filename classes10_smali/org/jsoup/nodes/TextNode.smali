.class public Lorg/jsoup/nodes/TextNode;
.super Lorg/jsoup/nodes/LeafNode;
.source "TextNode.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    return-void
.end method

.method static lastCharIsWhitespace(Ljava/lang/StringBuilder;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p0

    const/16 v0, 0x20

    if-ne p0, v0, :cond_15

    goto :goto_16

    :cond_15
    const/4 v1, 0x0

    :goto_16
    return v1
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

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->clone()Lorg/jsoup/nodes/TextNode;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/TextNode;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    return-object v0
.end method

.method public bridge synthetic empty()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->empty()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public getWholeText()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isBlank()Z
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .registers 2

    const-string v0, "#text"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 16

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v2, v1, Lorg/jsoup/nodes/Element;

    if-eqz v2, :cond_e

    move-object v2, v1

    check-cast v2, Lorg/jsoup/nodes/Element;

    goto :goto_f

    :cond_e
    const/4 v2, 0x0

    :goto_f
    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_1b

    invoke-static {v1}, Lorg/jsoup/nodes/Element;->preserveWhitespace(Lorg/jsoup/nodes/Node;)Z

    move-result v0

    if-nez v0, :cond_1b

    const/4 v9, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v9, 0x0

    :goto_1c
    if-eqz v2, :cond_34

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->isBlock()Z

    move-result v0

    if-nez v0, :cond_32

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-eqz v0, :cond_34

    :cond_32
    const/4 v0, 0x1

    goto :goto_35

    :cond_34
    const/4 v0, 0x0

    :goto_35
    if-eqz v9, :cond_c6

    if-eqz v0, :cond_3d

    iget v1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-eqz v1, :cond_43

    :cond_3d
    iget-object v1, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v1, v1, Lorg/jsoup/nodes/Document;

    if-eqz v1, :cond_45

    :cond_43
    const/4 v1, 0x1

    goto :goto_46

    :cond_45
    const/4 v1, 0x0

    :goto_46
    if-eqz v0, :cond_50

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    if-nez v0, :cond_50

    const/4 v0, 0x1

    goto :goto_51

    :cond_50
    const/4 v0, 0x0

    :goto_51
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v5

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object v6

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v7

    instance-of v8, v5, Lorg/jsoup/nodes/Element;

    const-string v10, "br"

    if-eqz v8, :cond_6c

    move-object v8, v5

    check-cast v8, Lorg/jsoup/nodes/Element;

    invoke-virtual {v8, p3}, Lorg/jsoup/nodes/Element;->shouldIndent(Lorg/jsoup/nodes/Document$OutputSettings;)Z

    move-result v8

    if-nez v8, :cond_8d

    :cond_6c
    instance-of v8, v5, Lorg/jsoup/nodes/TextNode;

    if-eqz v8, :cond_78

    check-cast v5, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v5}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v5

    if-nez v5, :cond_8d

    :cond_78
    instance-of v5, v6, Lorg/jsoup/nodes/Element;

    if-eqz v5, :cond_8c

    move-object v5, v6

    check-cast v5, Lorg/jsoup/nodes/Element;

    invoke-virtual {v5}, Lorg/jsoup/nodes/Element;->isBlock()Z

    move-result v5

    if-nez v5, :cond_8d

    invoke-virtual {v6, v10}, Lorg/jsoup/nodes/Node;->isNode(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8c

    goto :goto_8d

    :cond_8c
    const/4 v3, 0x0

    :cond_8d
    :goto_8d
    if-eqz v3, :cond_92

    if-eqz v7, :cond_92

    return-void

    :cond_92
    iget v3, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-nez v3, :cond_a4

    if-eqz v2, :cond_a4

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v2

    if-eqz v2, :cond_a4

    if-eqz v7, :cond_c0

    :cond_a4
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v2

    if-eqz v2, :cond_b6

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->siblingNodes()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_b6

    if-eqz v7, :cond_c0

    :cond_b6
    iget v2, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-lez v2, :cond_c3

    invoke-static {v6, v10}, Lorg/jsoup/nodes/Node;->isNode(Lorg/jsoup/nodes/Node;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c3

    :cond_c0
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Node;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_c3
    move v11, v0

    move v10, v1

    goto :goto_c8

    :cond_c6
    const/4 v10, 0x0

    const/4 v11, 0x0

    :goto_c8
    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object v6

    const/4 v8, 0x0

    move-object v5, p1

    move-object v7, p3

    invoke-static/range {v5 .. v11}, Lorg/jsoup/nodes/Entities;->escape(Ljava/lang/Appendable;Ljava/lang/String;Lorg/jsoup/nodes/Document$OutputSettings;ZZZZ)V

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 4

    return-void
.end method

.method public text()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/TextNode;->getWholeText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->normaliseWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
