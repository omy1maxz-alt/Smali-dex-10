.class public abstract Lorg/jsoup/select/CombiningEvaluator;
.super Lorg/jsoup/select/Evaluator;
.source "CombiningEvaluator.java"


# instance fields
.field final evaluators:Ljava/util/ArrayList;

.field num:I


# direct methods
.method constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lorg/jsoup/select/Evaluator;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jsoup/select/CombiningEvaluator;->num:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    return-void
.end method

.method constructor <init>(Ljava/util/Collection;)V
    .registers 3

    invoke-direct {p0}, Lorg/jsoup/select/CombiningEvaluator;-><init>()V

    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {p0}, Lorg/jsoup/select/CombiningEvaluator;->updateNumEvaluators()V

    return-void
.end method


# virtual methods
.method replaceRightMostEvaluator(Lorg/jsoup/select/Evaluator;)V
    .registers 4

    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    iget v1, p0, Lorg/jsoup/select/CombiningEvaluator;->num:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method rightMostEvaluator()Lorg/jsoup/select/Evaluator;
    .registers 3

    iget v0, p0, Lorg/jsoup/select/CombiningEvaluator;->num:I

    if-lez v0, :cond_f

    iget-object v1, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jsoup/select/Evaluator;

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return-object v0
.end method

.method updateNumEvaluators()V
    .registers 2

    iget-object v0, p0, Lorg/jsoup/select/CombiningEvaluator;->evaluators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iput v0, p0, Lorg/jsoup/select/CombiningEvaluator;->num:I

    return-void
.end method
