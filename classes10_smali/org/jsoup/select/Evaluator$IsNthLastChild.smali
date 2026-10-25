.class public final Lorg/jsoup/select/Evaluator$IsNthLastChild;
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
    .registers 3

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    if-nez p1, :cond_8

    const/4 p1, 0x0

    return p1

    :cond_8
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p1

    invoke-virtual {p1}, Lorg/jsoup/nodes/Element;->children()Lorg/jsoup/select/Elements;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/AbstractCollection;->size()I

    move-result p1

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-last-child"

    return-object v0
.end method
