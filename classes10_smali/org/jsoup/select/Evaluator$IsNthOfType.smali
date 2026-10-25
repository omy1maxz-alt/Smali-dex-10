.class public Lorg/jsoup/select/Evaluator$IsNthOfType;
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

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_14
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_32

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jsoup/nodes/Element;

    invoke-virtual {v1}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v2

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->tag()Lorg/jsoup/parser/Tag;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jsoup/parser/Tag;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_30

    add-int/lit8 v0, v0, 0x1

    :cond_30
    if-ne v1, p2, :cond_14

    :cond_32
    return v0
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-of-type"

    return-object v0
.end method
