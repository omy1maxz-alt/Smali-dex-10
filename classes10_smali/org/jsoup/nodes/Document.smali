.class public Lorg/jsoup/nodes/Document;
.super Lorg/jsoup/nodes/Element;
.source "Document.java"


# static fields
.field private static final titleEval:Lorg/jsoup/select/Evaluator;


# instance fields
.field private final location:Ljava/lang/String;

.field private outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

.field private parser:Lorg/jsoup/parser/Parser;

.field private quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

.field private updateMetaCharset:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Lorg/jsoup/select/Evaluator$Tag;

    const-string/jumbo v1, "title"

    invoke-direct {v0, v1}, Lorg/jsoup/select/Evaluator$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/jsoup/nodes/Document;->titleEval:Lorg/jsoup/select/Evaluator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 4

    const-string v0, "#root"

    sget-object v1, Lorg/jsoup/parser/ParseSettings;->htmlDefault:Lorg/jsoup/parser/ParseSettings;

    invoke-static {v0, v1}, Lorg/jsoup/parser/Tag;->valueOf(Ljava/lang/String;Lorg/jsoup/parser/ParseSettings;)Lorg/jsoup/parser/Tag;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lorg/jsoup/nodes/Element;-><init>(Lorg/jsoup/parser/Tag;Ljava/lang/String;)V

    new-instance v0, Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {v0}, Lorg/jsoup/nodes/Document$OutputSettings;-><init>()V

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    sget-object v0, Lorg/jsoup/nodes/Document$QuirksMode;->noQuirks:Lorg/jsoup/nodes/Document$QuirksMode;

    iput-object v0, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->location:Ljava/lang/String;

    invoke-static {}, Lorg/jsoup/parser/Parser;->htmlParser()Lorg/jsoup/parser/Parser;

    move-result-object p1

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    return-void
.end method

.method private ensureMetaCharsetElement()V
    .registers 8

    iget-boolean v0, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    if-eqz v0, :cond_b0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object v0

    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_45

    const-string v0, "meta[charset]"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->selectFirst(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v1, "charset"

    if-eqz v0, :cond_26

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    goto :goto_3b

    :cond_26
    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->head()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const-string v2, "meta"

    invoke-virtual {v0, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Element;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    :goto_3b
    const-string v0, "meta[name=charset]"

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->select(Ljava/lang/String;)Lorg/jsoup/select/Elements;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/select/Elements;->remove()Lorg/jsoup/select/Elements;

    goto :goto_b0

    :cond_45
    sget-object v1, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->xml:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    if-ne v0, v1, :cond_b0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    instance-of v2, v0, Lorg/jsoup/nodes/XmlDeclaration;

    const-string v3, "encoding"

    const-string v4, "1.0"

    const-string/jumbo v5, "xml"

    const-string/jumbo v6, "version"

    if-eqz v2, :cond_9a

    check-cast v0, Lorg/jsoup/nodes/XmlDeclaration;

    invoke-virtual {v0}, Lorg/jsoup/nodes/XmlDeclaration;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_83

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, v6}, Lorg/jsoup/nodes/XmlDeclaration;->hasAttr(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b0

    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    goto :goto_b0

    :cond_83
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    invoke-direct {v0, v5, v1}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    goto :goto_b0

    :cond_9a
    new-instance v0, Lorg/jsoup/nodes/XmlDeclaration;

    invoke-direct {v0, v5, v1}, Lorg/jsoup/nodes/XmlDeclaration;-><init>(Ljava/lang/String;Z)V

    invoke-virtual {v0, v6, v4}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->charset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lorg/jsoup/nodes/XmlDeclaration;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Element;->prependChild(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Element;

    :cond_b0
    :goto_b0
    return-void
.end method

.method private htmlEl()Lorg/jsoup/nodes/Element;
    .registers 5

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_8
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "html"

    if-eqz v1, :cond_21

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-object v1

    :cond_21
    invoke-virtual {p0, v2}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public body()Lorg/jsoup/nodes/Element;
    .registers 6

    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->htmlEl()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "body"

    if-eqz v2, :cond_31

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_30

    const-string v3, "frameset"

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    :cond_30
    return-object v2

    :cond_31
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->appendElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public charset()Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Document$OutputSettings;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    return-object v0
.end method

.method public charset(Ljava/nio/charset/Charset;)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Document;->updateMetaCharsetElement(Z)V

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Document$OutputSettings;->charset(Ljava/nio/charset/Charset;)Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->ensureMetaCharsetElement()V

    return-void
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Document;
    .registers 3

    invoke-super {p0}, Lorg/jsoup/nodes/Element;->clone()Lorg/jsoup/nodes/Element;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Document;

    iget-object v1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Element;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Document;->clone()Lorg/jsoup/nodes/Document;

    move-result-object v0

    return-object v0
.end method

.method public head()Lorg/jsoup/nodes/Element;
    .registers 6

    invoke-direct {p0}, Lorg/jsoup/nodes/Document;->htmlEl()Lorg/jsoup/nodes/Element;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Element;->childElementsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const-string v3, "head"

    if-eqz v2, :cond_25

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->normalName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    return-object v2

    :cond_25
    invoke-virtual {v0, v3}, Lorg/jsoup/nodes/Element;->prependElement(Ljava/lang/String;)Lorg/jsoup/nodes/Element;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .registers 2

    const-string v0, "#document"

    return-object v0
.end method

.method public outerHtml()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/Element;->html()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outputSettings()Lorg/jsoup/nodes/Document$OutputSettings;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public parser(Lorg/jsoup/parser/Parser;)Lorg/jsoup/nodes/Document;
    .registers 2

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    return-object p0
.end method

.method public parser()Lorg/jsoup/parser/Parser;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->parser:Lorg/jsoup/parser/Parser;

    return-object v0
.end method

.method public quirksMode()Lorg/jsoup/nodes/Document$QuirksMode;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object v0
.end method

.method public quirksMode(Lorg/jsoup/nodes/Document$QuirksMode;)Lorg/jsoup/nodes/Document;
    .registers 2

    iput-object p1, p0, Lorg/jsoup/nodes/Document;->quirksMode:Lorg/jsoup/nodes/Document$QuirksMode;

    return-object p0
.end method

.method public shallowClone()Lorg/jsoup/nodes/Document;
    .registers 3

    new-instance v0, Lorg/jsoup/nodes/Document;

    invoke-virtual {p0}, Lorg/jsoup/nodes/Element;->baseUri()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/jsoup/nodes/Document;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Element;->attributes:Lorg/jsoup/nodes/Attributes;

    :cond_13
    iget-object v1, p0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Document$OutputSettings;->clone()Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    iput-object v1, v0, Lorg/jsoup/nodes/Document;->outputSettings:Lorg/jsoup/nodes/Document$OutputSettings;

    return-object v0
.end method

.method public updateMetaCharsetElement(Z)V
    .registers 2

    iput-boolean p1, p0, Lorg/jsoup/nodes/Document;->updateMetaCharset:Z

    return-void
.end method
