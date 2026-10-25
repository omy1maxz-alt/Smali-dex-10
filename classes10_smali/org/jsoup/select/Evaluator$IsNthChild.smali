.class public final Lorg/jsoup/select/Evaluator$IsNthChild;
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

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->elementSiblingIndex()I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    return p1
.end method

.method protected getPseudoClass()Ljava/lang/String;
    .registers 2

    const-string v0, "nth-child"

    return-object v0
.end method
