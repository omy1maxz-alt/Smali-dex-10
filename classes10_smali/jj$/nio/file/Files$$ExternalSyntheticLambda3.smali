.class public final synthetic Ljj$/nio/file/Files$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Ljava/util/function/BiPredicate;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/BiPredicate;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/nio/file/Files$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/BiPredicate;

    return-void
.end method


# virtual methods
.method public synthetic and(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Predicate$-CC;->$default$and(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public synthetic negate()Ljava/util/function/Predicate;
    .registers 2

    invoke-static {p0}, Ljj$/util/function/Predicate$-CC;->$default$negate(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object v0

    return-object v0
.end method

.method public synthetic or(Ljava/util/function/Predicate;)Ljava/util/function/Predicate;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Predicate$-CC;->$default$or(Ljava/util/function/Predicate;Ljava/util/function/Predicate;)Ljava/util/function/Predicate;

    move-result-object p1

    return-object p1
.end method

.method public final test(Ljava/lang/Object;)Z
    .registers 3

    iget-object v0, p0, Ljj$/nio/file/Files$$ExternalSyntheticLambda3;->f$0:Ljava/util/function/BiPredicate;

    check-cast p1, Ljj$/nio/file/FileTreeWalker$Event;

    invoke-static {v0, p1}, Ljj$/nio/file/Files;->lambda$find$2(Ljava/util/function/BiPredicate;Ljj$/nio/file/FileTreeWalker$Event;)Z

    move-result p1

    return p1
.end method
