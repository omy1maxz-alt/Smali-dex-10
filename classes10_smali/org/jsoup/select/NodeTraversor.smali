.class public abstract Lorg/jsoup/select/NodeTraversor;
.super Ljava/lang/Object;
.source "NodeTraversor.java"


# direct methods
.method static constructor <clinit>()V
    .registers 0

    return-void
.end method

.method public static filter(Lorg/jsoup/select/NodeFilter;Lorg/jsoup/nodes/Node;)Lorg/jsoup/select/NodeFilter$FilterResult;
    .registers 9

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_3
    if-eqz v1, :cond_6a

    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeFilter;->head(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v3

    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_e

    return-object v3

    :cond_e
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_1f

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v4

    if-lez v4, :cond_1f

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_1f
    :goto_1f
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v4

    if-nez v4, :cond_49

    if-gtz v2, :cond_28

    goto :goto_49

    :cond_28
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v3, v4, :cond_30

    sget-object v5, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v5, :cond_39

    :cond_30
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v3

    sget-object v5, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v5, :cond_39

    return-object v3

    :cond_39
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v5

    add-int/lit8 v2, v2, -0x1

    sget-object v6, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v6, :cond_46

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_46
    move-object v3, v4

    move-object v1, v5

    goto :goto_1f

    :cond_49
    :goto_49
    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-eq v3, v4, :cond_51

    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->SKIP_CHILDREN:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_5a

    :cond_51
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeFilter;->tail(Lorg/jsoup/nodes/Node;I)Lorg/jsoup/select/NodeFilter$FilterResult;

    move-result-object v3

    sget-object v4, Lorg/jsoup/select/NodeFilter$FilterResult;->STOP:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v4, :cond_5a

    return-object v3

    :cond_5a
    if-ne v1, p1, :cond_5d

    return-object v3

    :cond_5d
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v4

    sget-object v5, Lorg/jsoup/select/NodeFilter$FilterResult;->REMOVE:Lorg/jsoup/select/NodeFilter$FilterResult;

    if-ne v3, v5, :cond_68

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->remove()V

    :cond_68
    move-object v1, v4

    goto :goto_3

    :cond_6a
    sget-object p0, Lorg/jsoup/select/NodeFilter$FilterResult;->CONTINUE:Lorg/jsoup/select/NodeFilter$FilterResult;

    return-object p0
.end method

.method public static traverse(Lorg/jsoup/select/NodeVisitor;Lorg/jsoup/nodes/Node;)V
    .registers 9

    invoke-static {p0}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    invoke-static {p1}, Lorg/jsoup/helper/Validate;->notNull(Ljava/lang/Object;)V

    const/4 v0, 0x0

    move-object v1, p1

    const/4 v2, 0x0

    :goto_9
    if-eqz v1, :cond_68

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-eqz v3, :cond_16

    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v4

    goto :goto_17

    :cond_16
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v5

    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->head(Lorg/jsoup/nodes/Node;I)V

    if-eqz v3, :cond_3d

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->hasParent()Z

    move-result v6

    if-nez v6, :cond_3d

    invoke-virtual {v3}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v6

    if-ne v4, v6, :cond_35

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->siblingIndex()I

    move-result v1

    invoke-virtual {v3, v1}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    goto :goto_3d

    :cond_35
    if-nez v5, :cond_3b

    add-int/lit8 v2, v2, -0x1

    move-object v1, v3

    goto :goto_9

    :cond_3b
    move-object v1, v5

    goto :goto_9

    :cond_3d
    :goto_3d
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->childNodeSize()I

    move-result v3

    if-lez v3, :cond_4a

    invoke-virtual {v1, v0}, Lorg/jsoup/nodes/Node;->childNode(I)Lorg/jsoup/nodes/Node;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_9

    :cond_4a
    :goto_4a
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v3

    if-nez v3, :cond_5d

    if-gtz v2, :cond_53

    goto :goto_5d

    :cond_53
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->parentNode()Lorg/jsoup/nodes/Node;

    move-result-object v1

    add-int/lit8 v2, v2, -0x1

    goto :goto_4a

    :cond_5d
    :goto_5d
    invoke-interface {p0, v1, v2}, Lorg/jsoup/select/NodeVisitor;->tail(Lorg/jsoup/nodes/Node;I)V

    if-ne v1, p1, :cond_63

    goto :goto_68

    :cond_63
    invoke-virtual {v1}, Lorg/jsoup/nodes/Node;->nextSibling()Lorg/jsoup/nodes/Node;

    move-result-object v1

    goto :goto_9

    :cond_68
    :goto_68
    return-void
.end method
