.class public Lorg/jsoup/nodes/Comment;
.super Lorg/jsoup/nodes/LeafNode;
.source "Comment.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    iput-object p1, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    return-void
.end method

.method private static isXmlDeclarationData(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_18

    const-string v0, "!"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_18

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    :cond_19
    :goto_19
    return v1
.end method


# virtual methods
.method public bridge synthetic absUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-super {p0, p1}, Lorg/jsoup/nodes/LeafNode;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public asXmlDeclaration()Lorg/jsoup/nodes/XmlDeclaration;
    .registers 6

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/jsoup/nodes/Comment;->isXmlDeclarationData(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    return-object v3

    :cond_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ">"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object v2

    sget-object v4, Lorg/jsoup/parser/ParseSettings;->preserveCase:Lorg/jsoup/parser/ParseSettings;

    invoke-virtual {v2, v4}, Lorg/jsoup/parser/Parser;->settings(Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Parser;

    move-result-object v2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->baseUri()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v1, v4}, Lorg/jsoup/parser/Parser;->parseInput(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Document;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-lez v2, :cond_7b

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document;->body()Lorg/jsoup/nodes/Element;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lorg/jsoup/nodes/Element;->child(I)Lorg/jsoup/nodes/Element;

    move-result-object v2

    new-instance v3, Lorg/jsoup/nodes/XmlDeclaration;

    invoke-static {v1}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v1

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jsoup/parser/ParseSettings;->normalizeTag(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "!"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    invoke-direct {v3, v1, v0}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v3}, Lorg/jsoup/nodes/LeafNode;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/jsoup/nodes/Attributes;->addAll(Lorg/jsoup/nodes/Attributes;)V

    :cond_7b
    return-object v3
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

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->clone()Lorg/jsoup/nodes/Comment;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Comment;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Comment;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->clone()Lorg/jsoup/nodes/Comment;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic empty()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->empty()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public getData()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->coreValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isXmlDeclaration()Z
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jsoup/nodes/Comment;->isXmlDeclarationData(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public nodeName()Ljava/lang/String;
    .registers 2

    const-string v0, "#comment"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 6

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result v0

    if-eqz v0, :cond_27

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->isEffectivelyFirst()Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    instance-of v1, v0, Lorg/jsoup/nodes/Element;

    if-eqz v1, :cond_1e

    check-cast v0, Lorg/jsoup/nodes/Element;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Tag;->formatAsBlock()Z

    move-result v0

    if-nez v0, :cond_24

    :cond_1e
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->outline()Z

    move-result v0

    if-eqz v0, :cond_27

    :cond_24
    invoke-virtual {p0, p1, p2, p3}, Lorg/jsoup/nodes/Node;->indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V

    :cond_27
    const-string p2, "<!--"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Comment;->getData()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p1

    const-string p2, "-->"

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
