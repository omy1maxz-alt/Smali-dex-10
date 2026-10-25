.class Lorg/jsoup/select/StructuralEvaluator$Root;
.super Lorg/jsoup/select/Evaluator;
.source "StructuralEvaluator.java"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 3

    if-ne p1, p2, :cond_4

    const/4 p1, 0x1

    goto :goto_5

    :cond_4
    const/4 p1, 0x0

    :goto_5
    return p1
.end method
