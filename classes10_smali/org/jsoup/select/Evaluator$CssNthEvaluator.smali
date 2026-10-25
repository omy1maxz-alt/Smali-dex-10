.class public abstract Lorg/jsoup/select/Evaluator$CssNthEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "Evaluator.java"


# instance fields
.field protected final a:I

.field protected final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    iput p1, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    iput p2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    return-void
.end method


# virtual methods
.method protected abstract calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I
.end method

.method protected abstract getPseudoClass()Ljava/lang/String;
.end method

.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 7

    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_28

    instance-of v0, v0, Lorg/jsoup/nodes/Document;

    if-eqz v0, :cond_c

    goto :goto_28

    :cond_c
    invoke-virtual {p0, p1, p2}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->calculatePosition(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)I

    move-result p1

    iget p2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    const/4 v0, 0x1

    if-nez p2, :cond_1b

    iget p2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    if-ne p1, p2, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    :cond_1b
    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    sub-int v3, p1, v2

    mul-int v3, v3, p2

    if-ltz v3, :cond_28

    sub-int/2addr p1, v2

    rem-int/2addr p1, p2

    if-nez p1, :cond_28

    const/4 v1, 0x1

    :cond_28
    :goto_28
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget v0, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-nez v0, :cond_1e

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1e
    iget v0, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    if-nez v0, :cond_39

    new-array v0, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v0, v2

    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, ":%s(%dn)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_39
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->getPseudoClass()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    iget v2, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->a:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    iget v1, p0, Lorg/jsoup/select/Evaluator$CssNthEvaluator;->b:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, ":%s(%dn%+d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
