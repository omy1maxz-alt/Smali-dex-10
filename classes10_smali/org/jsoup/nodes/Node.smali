.class public abstract Lorg/jsoup/nodes/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field static final EmptyNodes:Ljava/util/List;


# instance fields
.field parentNode:Lorg/jsoup/nodes/Node;

.field siblingIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/jsoup/nodes/Node;->EmptyNodes:Ljava/util/List;

    return-void
.end method

.method protected constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isNode(Lorg/jsoup/nodes/Node;Ljava/lang/String;)Z
    .registers 2

    if-eqz p0, :cond_e

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_e

    const/4 p0, 0x1

    goto :goto_f

    :cond_e
    const/4 p0, 0x0

    :goto_f
    return p0
.end method

.method private reindexChildren(I)V
    .registers 5

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v1

    :goto_b
    if-ge p1, v0, :cond_19

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    invoke-virtual {v2, p1}, Lorg/jsoup/nodes/Node;->setSiblingIndex(I)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_b

    :cond_19
    return-void
.end method


# virtual methods
.method public absUrl(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notEmpty(Ljava/lang/String;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_14

    goto :goto_25

    :cond_14
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->baseUri()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lorg/jsoup/internal/StringUtil;->resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_25
    :goto_25
    const-string p1, ""

    return-object p1
.end method

.method protected varargs addChildren(I[Lorg/jsoup/nodes/Node;)V
    .registers 11

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    array-length v0, p2

    if-nez v0, :cond_7

    return-void

    :cond_7
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v2, p2, v1

    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->parent()Lorg/jsoup/nodes/Node;

    move-result-object v2

    if-eqz v2, :cond_5d

    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    array-length v4, p2

    if-ne v3, v4, :cond_5d

    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v3

    array-length v4, p2

    :goto_20
    add-int/lit8 v5, v4, -0x1

    const/4 v6, 0x1

    if-lez v4, :cond_31

    aget-object v4, p2, v5

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-eq v4, v7, :cond_2f

    const/4 v3, 0x0

    goto :goto_32

    :cond_2f
    move v4, v5

    goto :goto_20

    :cond_31
    const/4 v3, 0x1

    :goto_32
    if-eqz v3, :cond_5d

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    if-nez v3, :cond_3b

    goto :goto_3c

    :cond_3b
    const/4 v6, 0x0

    :goto_3c
    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->empty()Lorg/jsoup/nodes/Node;

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, p1, v2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    array-length v0, p2

    :goto_47
    add-int/lit8 v2, v0, -0x1

    if-lez v0, :cond_51

    aget-object v0, p2, v2

    iput-object p0, v0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    move v0, v2

    goto :goto_47

    :cond_51
    if-eqz v6, :cond_59

    aget-object p2, p2, v1

    iget p2, p2, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-eqz p2, :cond_5c

    :cond_59
    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Node;->reindexChildren(I)V

    :cond_5c
    return-void

    :cond_5d
    invoke-static {p2}, Lorg/jsoup/helper/Validate;->noNullElements([Ljava/lang/Object;)V

    array-length v2, p2

    :goto_61
    if-ge v1, v2, :cond_6b

    aget-object v3, p2, v1

    invoke-virtual {p0, v3}, Lorg/jsoup/nodes/Node;->reparentChild(Lorg/jsoup/nodes/Node;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_61

    :cond_6b
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    invoke-direct {p0, p1}, Lorg/jsoup/nodes/Node;->reindexChildren(I)V

    return-void
.end method

.method public attr(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_c

    return-object v1

    :cond_c
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->getIgnoreCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    return-object v0

    :cond_1b
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2d

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_2d
    return-object v1
.end method

.method public attr(Ljava/lang/String;Ljava/lang/String;)Lorg/jsoup/nodes/Node;
    .registers 4

    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->parser(Lorg/jsoup/nodes/Node;)Lorg/jsoup/parser/Parser;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jsoup/parser/Parser;->settings()Lorg/jsoup/parser/ParseSettings;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/parser/ParseSettings;->normalizeAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/jsoup/nodes/Attributes;->putIgnoreCase(Ljava/lang/String;Ljava/lang/String;)V

    return-object p0
.end method

.method public abstract attributes()Lorg/jsoup/nodes/Attributes;
.end method

.method public abstract baseUri()Ljava/lang/String;
.end method

.method public before(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .registers 6

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    iget-object v1, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-ne v0, v1, :cond_11

    invoke-virtual {p1}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_11
    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    iget v1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    const/4 v2, 0x1

    new-array v2, v2, [Lorg/jsoup/nodes/Node;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Lorg/jsoup/nodes/Node;->addChildren(I[Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method

.method public childNode(I)Lorg/jsoup/nodes/Node;
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/jsoup/nodes/Node;

    return-object p1
.end method

.method public abstract childNodeSize()I
.end method

.method public childNodes()Ljava/util/List;
    .registers 4

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lorg/jsoup/nodes/Node;->EmptyNodes:Ljava/util/List;

    return-object v0

    :cond_9
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->clone()Lorg/jsoup/nodes/Node;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lorg/jsoup/nodes/Node;
    .registers 8

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v0

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    :cond_d
    invoke-virtual {v1}, Ljava/util/AbstractCollection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_37

    invoke-virtual {v1}, Ljava/util/LinkedList;->remove()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    const/4 v4, 0x0

    :goto_1e
    if-ge v4, v3, :cond_d

    invoke-virtual {v2}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jsoup/nodes/Node;

    invoke-virtual {v6, v2}, Lorg/jsoup/nodes/Node;->doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;

    move-result-object v6

    invoke-interface {v5, v4, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v6}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    :cond_37
    return-object v0
.end method

.method protected doClone(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Node;
    .registers 4

    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;
    :try_end_6
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_6} :catch_2a

    iput-object p1, v0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-nez p1, :cond_c

    const/4 v1, 0x0

    goto :goto_e

    :cond_c
    iget v1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    :goto_e
    iput v1, v0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-nez p1, :cond_29

    instance-of p1, p0, Lorg/jsoup/nodes/Document;

    if-nez p1, :cond_29

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ownerDocument()Lorg/jsoup/nodes/Document;

    move-result-object p1

    if-eqz p1, :cond_29

    invoke-virtual {p1}, Lorg/jsoup/nodes/Document;->shallowClone()Lorg/jsoup/nodes/Document;

    move-result-object p1

    iput-object p1, v0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->ensureChildNodes()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_29
    return-object v0

    :catch_2a
    move-exception p1

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected abstract doSetBaseUri(Ljava/lang/String;)V
.end method

.method public abstract empty()Lorg/jsoup/nodes/Node;
.end method

.method protected abstract ensureChildNodes()Ljava/util/List;
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 2

    if-ne p0, p1, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method

.method public hasAttr(Ljava/lang/String;)Z
    .registers 4

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->hasAttributes()Z

    move-result v0

    if-nez v0, :cond_b

    const/4 p1, 0x0

    return p1

    :cond_b
    const-string v0, "abs:"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2e

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2e

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->absUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2e

    const/4 p1, 0x1

    return p1

    :cond_2e
    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->attributes()Lorg/jsoup/nodes/Attributes;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/jsoup/nodes/Attributes;->hasKeyIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method protected abstract hasAttributes()Z
.end method

.method public hasParent()Z
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method public hashCode()I
    .registers 2

    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method protected indent(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
    .registers 5

    const/16 v0, 0xa

    invoke-interface {p1, v0}, Ljava/lang/Appendable;->append(C)Ljava/lang/Appendable;

    move-result-object p1

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->indentAmount()I

    move-result v0

    mul-int p2, p2, v0

    invoke-virtual {p3}, Lorg/jsoup/nodes/Document$OutputSettings;->maxPaddingWidth()I

    move-result p3

    invoke-static {p2, p3}, Lorg/jsoup/internal/StringUtil;->padding(II)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;

    return-void
.end method

.method final isEffectivelyFirst()Z
    .registers 5

    iget v0, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    const/4 v1, 0x1

    if-nez v0, :cond_6

    return v1

    :cond_6
    const/4 v2, 0x0

    if-ne v0, v1, :cond_1c

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->previousSibling()Lorg/jsoup/nodes/Node;

    move-result-object v0

    instance-of v3, v0, Lorg/jsoup/nodes/TextNode;

    if-eqz v3, :cond_1a

    check-cast v0, Lorg/jsoup/nodes/TextNode;

    invoke-virtual {v0}, Lorg/jsoup/nodes/TextNode;->isBlank()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_1b

    :cond_1a
    const/4 v1, 0x0

    :goto_1b
    return v1

    :cond_1c
    return v2
.end method

.method final isNode(Ljava/lang/String;)Z
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->normalName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public nextSibling()Lorg/jsoup/nodes/Node;
    .registers 5

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    iget v2, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v2, v2, 0x1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v2, :cond_1b

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    return-object v0

    :cond_1b
    return-object v1
.end method

.method public abstract nodeName()Ljava/lang/String;
.end method

.method nodelistChanged()V
    .registers 1

    return-void
.end method

.method public normalName()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->nodeName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public outerHtml()Ljava/lang/String;
    .registers 2

    invoke-static {}, Lorg/jsoup/internal/StringUtil;->borrowBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jsoup/nodes/Node;->outerHtml(Ljava/lang/Appendable;)V

    invoke-static {v0}, Lorg/jsoup/internal/StringUtil;->releaseBuilder(Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected outerHtml(Ljava/lang/Appendable;)V
    .registers 4

    new-instance v0, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;

    invoke-static {p0}, Lorg/jsoup/nodes/NodeUtils;->outputSettings(Lorg/jsoup/nodes/Node;)Lorg/jsoup/nodes/Document$OutputSettings;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lorg/jsoup/nodes/Node$OuterHtmlVisitor;-><init>(Ljava/lang/Appendable;Lorg/jsoup/nodes/Document$OutputSettings;)V

    invoke-static {v0, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method abstract outerHtmlHead(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method abstract outerHtmlTail(Ljava/lang/Appendable;ILorg/jsoup/nodes/Document$OutputSettings;)V
.end method

.method public ownerDocument()Lorg/jsoup/nodes/Document;
    .registers 3

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->root()Lorg/jsoup/nodes/Node;

    move-result-object v0

    instance-of v1, v0, Lorg/jsoup/nodes/Document;

    if-eqz v1, :cond_b

    check-cast v0, Lorg/jsoup/nodes/Document;

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return-object v0
.end method

.method public parent()Lorg/jsoup/nodes/Node;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-object v0
.end method

.method public final parentNode()Lorg/jsoup/nodes/Node;
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-object v0
.end method

.method public previousSibling()Lorg/jsoup/nodes/Node;
    .registers 4

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    :cond_6
    iget v2, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    if-lez v2, :cond_19

    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/nodes/Node;

    return-object v0

    :cond_19
    return-object v1
.end method

.method public remove()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_7

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    :cond_7
    return-void
.end method

.method protected removeChild(Lorg/jsoup/nodes/Node;)V
    .registers 4

    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    iget v0, p1, Lorg/jsoup/nodes/Node;->siblingIndex:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    invoke-direct {p0, v0}, Lorg/jsoup/nodes/Node;->reindexChildren(I)V

    const/4 v0, 0x0

    iput-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-void
.end method

.method protected reparentChild(Lorg/jsoup/nodes/Node;)V
    .registers 2

    invoke-virtual {p1, p0}, Lorg/jsoup/nodes/Node;->setParentNode(Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method protected replaceChild(Lorg/jsoup/nodes/Node;Lorg/jsoup/nodes/Node;)V
    .registers 5

    iget-object v0, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-ne v0, p0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    invoke-static {v0}, Lorg/jsoup/helper/Validate;->isTrue(Z)V

    invoke-static {p2}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    if-ne p1, p2, :cond_10

    return-void

    :cond_10
    iget-object v0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_17

    invoke-virtual {v0, p2}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    :cond_17
    iget v0, p1, Lorg/jsoup/nodes/Node;->siblingIndex:I

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    iput-object p0, p2, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {p2, v0}, Lorg/jsoup/nodes/Node;->setSiblingIndex(I)V

    const/4 p2, 0x0

    iput-object p2, p1, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-void
.end method

.method public replaceWith(Lorg/jsoup/nodes/Node;)V
    .registers 3

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-static {v0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    invoke-virtual {v0, p0, p1}, Lorg/jsoup/nodes/Node;->replaceChild(Lorg/jsoup/nodes/Node;Lorg/jsoup/nodes/Node;)V

    return-void
.end method

.method public root()Lorg/jsoup/nodes/Node;
    .registers 3

    move-object v0, p0

    :goto_1
    iget-object v1, v0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v1, :cond_7

    move-object v0, v1

    goto :goto_1

    :cond_7
    return-object v0
.end method

.method public setBaseUri(Ljava/lang/String;)V
    .registers 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1}, Lorg/jsoup/nodes/Node;->doSetBaseUri(Ljava/lang/String;)V

    return-void
.end method

.method protected setParentNode(Lorg/jsoup/nodes/Node;)V
    .registers 3

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-eqz v0, :cond_a

    invoke-virtual {v0, p0}, Lorg/jsoup/nodes/Node;->removeChild(Lorg/jsoup/nodes/Node;)V

    :cond_a
    iput-object p1, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    return-void
.end method

.method protected setSiblingIndex(I)V
    .registers 2

    iput p1, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    return-void
.end method

.method public siblingIndex()I
    .registers 2

    iget v0, p0, Lorg/jsoup/nodes/Node;->siblingIndex:I

    return v0
.end method

.method public siblingNodes()Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lorg/jsoup/nodes/Node;->parentNode:Lorg/jsoup/nodes/Node;

    if-nez v0, :cond_9

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_9
    invoke-virtual {v0}, Lorg/jsoup/nodes/Node;->ensureChildNodes()Ljava/util/List;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    :goto_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Node;

    if-eq v2, p0, :cond_1c

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1c

    :cond_2e
    return-object v1
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    invoke-virtual {p0}, Lorg/jsoup/nodes/Node;->outerHtml()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public traverse(Lorg/jsoup/select/NodeVisitor;)Lorg/jsoup/nodes/Node;
    .registers 2

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-static {p1, p0}, Lorg/jsoup/select/NodeTraversor;->traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V

    return-object p0
.end method
