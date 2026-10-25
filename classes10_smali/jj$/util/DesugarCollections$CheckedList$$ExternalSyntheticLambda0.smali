.class public final synthetic Ljj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/UnaryOperator;


# instance fields
.field public final synthetic f$0:Ljj$/util/DesugarCollections$CheckedList;

.field public final synthetic f$1:Ljava/util/function/UnaryOperator;


# direct methods
.method public synthetic constructor <init>(Ljj$/util/DesugarCollections$CheckedList;Ljava/util/function/UnaryOperator;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;->f$0:Ljj$/util/DesugarCollections$CheckedList;

    iput-object p2, p0, Ljj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/UnaryOperator;

    return-void
.end method


# virtual methods
.method public synthetic andThen(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$andThen(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method

.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    iget-object v0, p0, Ljj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;->f$0:Ljj$/util/DesugarCollections$CheckedList;

    iget-object v1, p0, Ljj$/util/DesugarCollections$CheckedList$$ExternalSyntheticLambda0;->f$1:Ljava/util/function/UnaryOperator;

    invoke-virtual {v0, v1, p1}, Ljj$/util/DesugarCollections$CheckedList;->lambda$replaceAll$0$java-util-DesugarCollections$CheckedList(Ljava/util/function/UnaryOperator;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
