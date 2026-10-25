.class abstract Lorg/jsoup/nodes/LeafNode;
.super Lorg/jsoup/nodes/Node;
.source "LeafNode.java"


# instance fields
.field value:Ljava/lang/Object;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jsoup/nodes/Node;-><init>()V

    return-void
.end method

.method private ensureAttributes()V
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    new-instance v1, Lorg/jsoup/nodes/Attributes;

    invoke-direct {v1}, Lorg/jsoup/nodes/Attributes;-><init>()V

    iput-object v1, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    if-eqz v0, :cond_1a

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v2

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lorg/jsoup/nodes/Attributes;->put(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Attributes;

    :cond_1a
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_15

    iget-object p1, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    goto :goto_17

    :cond_15
    const-string p1, ""

    :goto_17
    return-object p1

    :cond_18
    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    iput-object p2, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    goto :goto_19

    :cond_13
    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    invoke-super {p0, p1, p2}, Lorg/jsoup/nodes/Node;->attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;

    :goto_19
    return-object p0
.end method

.method public final attributes()Lorg/jsoup/nodes/Attributes;
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    iget-object v0, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/nodes/Attributes;

    return-object v0
.end method

.method public baseUri()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->hasParent()Z

    move-result v0

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v0

    goto :goto_11

    :cond_f
    const-string v0, ""

    :goto_11
    return-object v0
.end method

.method public childNodeSize()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method coreValue()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/LeafNode;->attr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/LeafNode;
    .registers 3

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/LeafNode;

    invoke-virtual {p0}, Lorg/jsoup/nodes/LeafNode;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    check-cast v0, Lorg/jsoup/nodes/Attributes;

    invoke-virtual {v0}, Lorg/jsoup/nodes/Attributes;->clone()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    iput-object v0, p1, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    :cond_16
    return-object p1
.end method

.method protected bridge synthetic doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/LeafNode;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/LeafNode;

    move-result-object p1

    return-object p1
.end method

.method protected doSetBaseUri(Ljava/lang/String;)V
    .registers 2

    return-void
.end method

.method public empty()Lorg/jsoup/nodes/Node;
    .registers 1

    return-object p0
.end method

.method protected ensureChildNodes()Ljava/util/List;
    .registers 2

    sget-object v0, Lorg/jsoup/nodes/Node;->EmptyNodes:Ljava/util/List;

    return-object v0
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/nodes/LeafNode;->ensureAttributes()V

    invoke-super {p0, p1}, Lorg/jsoup/nodes/Node;->hasAttr(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected final hasAttributes()Z
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/LeafNode;->value:Ljava/lang/Object;

    instance-of v0, v0, Lorg/jsoup/nodes/Attributes;

    return v0
.end method
