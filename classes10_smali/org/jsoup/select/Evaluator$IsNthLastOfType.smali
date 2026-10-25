.class public Lorg/jsoup/select/Evaluator$IsNthLastOfType;
.super Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.source "Evaluator.java"


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;-><init>(II)V

    return-void
.end method


# virtual methods
.method protected calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
    .registers 7

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_8

    return v0

    :cond_8
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result v1

    :goto_14
    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result v2

    if-ge v1, v2, :cond_33

    invoke-virtual {p1, v1}, Ljava/util/AbstractList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jsoup/nodes/Element;

    invoke-virtual {v2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    :cond_30
    add-int/lit8 v1, v1, 0x1

    goto :goto_14

    :cond_33
    return v0
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-last-of-type"

    return-object v0
.end method
