.class public Lorg/jsoup/nodes/DocumentType;
.super Lorg/jsoup/nodes/LeafNode;
.source "DocumentType.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;-><init>()V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-static {p3}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const-string v0, "name"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    const-string p1, "publicId"

    invoke-virtual {p0, p1, p2}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    const-string/jumbo p1, "systemId"

    invoke-virtual {p0, p1, p3}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    invoke-direct {p0}, Lorg/jsoup/nodes/DocumentType;->updatePubSyskey()V

    return-void
.end method

.method private has(Ljava/lang/String;)Z
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/jsoup/internal/StringUtil;->isBlank(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private updatePubSyskey()V
    .registers 3

    const-string v0, "publicId"

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "pubSysKey"

    if-eqz v0, :cond_10

    const-string v0, "PUBLIC"

    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    goto :goto_1e

    :cond_10
    const-string/jumbo v0, "systemId"

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const-string v0, "SYSTEM"

    invoke-virtual {p0, v1, v0}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    :cond_1e
    :goto_1e
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

.method public bridge synthetic empty()Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-super {p0}, Lorg/jsoup/nodes/LeafNode;->empty()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public nodeName()Ljava/lang/String;
    .registers 2

    const-string v0, "#doctype"

    return-object v0
.end method

.method outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 7

    iget p2, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-lez p2, :cond_f

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->prettyPrint()Z

    move-result p2

    if-eqz p2, :cond_f

    const/16 p2, 0xa

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_f
    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->syntax()Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    move-result-object p2

    sget-object p3, Lorg/jsoup/nodes/Document$OutputSettings$Syntax;->html:Lorg/jsoup/nodes/Document$OutputSettings$Syntax;

    const-string/jumbo v0, "systemId"

    const-string v1, "publicId"

    if-ne p2, p3, :cond_2e

    invoke-direct {p0, v1}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2e

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2e

    const-string p2, "<!doctype"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    goto :goto_33

    :cond_2e
    const-string p2, "<!DOCTYPE"

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :goto_33
    const-string p2, "name"

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p3

    const-string v2, " "

    if-eqz p3, :cond_48

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_48
    const-string p2, "pubSysKey"

    invoke-direct {p0, p2}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p3

    if-eqz p3, :cond_5b

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p3

    invoke-virtual {p0, p2}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    :cond_5b
    invoke-direct {p0, v1}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    const/16 p3, 0x22

    const-string v2, " \""

    if-eqz p2, :cond_74

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v1}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_74
    invoke-direct {p0, v0}, Lorg/jsoup/nodes/DocumentType;->has(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_89

    invoke-interface {p1, v2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    move-result-object p2

    invoke-interface {p2, p3}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    :cond_89
    const/16 p2, 0x3e

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    return-void
.end method

.method outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 4

    return-void
.end method

.method public setPubSysKey(Ljava/lang/String;)V
    .registers 3

    if-eqz p1, :cond_7

    const-string v0, "pubSysKey"

    invoke-virtual {p0, v0, p1}, Lorg/jsoup/nodes/DocumentType;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    :cond_7
    return-void
.end method
