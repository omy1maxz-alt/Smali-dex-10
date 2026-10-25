.class Lorg/jsoup/select/StructuralEvaluator$ImmediateParent;
.super Lorg/jsoup/select/StructuralEvaluator;
.source "StructuralEvaluator.java"


# direct methods
.method public constructor <init>(Lorg/jsoup/select/Evaluator;)V
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/select/StructuralEvaluator;-><init>()V

    iput-object p1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    return-void
.end method


# virtual methods
.method public matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z
    .registers 5

    const/4 v0, 0x0

    if-ne p1, p2, :cond_4

    return v0

    :cond_4
    invoke-virtual {p2}, Lorg/jsoup/nodes/Element;->parent()Lorg/jsoup/nodes/Element;

    move-result-object p2

    if-eqz p2, :cond_13

    iget-object v1, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    invoke-virtual {v1, p1, p2}, Lorg/jsoup/select/Evaluator;->matches(Lorg/jsoup/nodes/Element;Lorg/jsoup/nodes/Element;)Z

    move-result p1

    if-eqz p1, :cond_13

    const/4 v0, 0x1

    :cond_13
    return v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/jsoup/select/StructuralEvaluator;->evaluator:Lorg/jsoup/select/Evaluator;

    aput-object v2, v0, v1

    const-string v1, "%s > "

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
