.class public final Lorg/jsoup/select/Evaluator$IsOnlyOfType;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 7

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_36

    instance-of v1, p1, Lorg/jsoup/nodes/Document;

    if-eqz v1, :cond_c

    goto :goto_36

    :cond_c
    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :cond_15
    :goto_15
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_15

    add-int/lit8 v1, v1, 0x1

    goto :goto_15

    :cond_32
    const/4 p1, 0x1

    if-ne v1, p1, :cond_36

    const/4 v0, 0x1

    :cond_36
    :goto_36
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, ":only-of-type"

    return-object v0
.end method
