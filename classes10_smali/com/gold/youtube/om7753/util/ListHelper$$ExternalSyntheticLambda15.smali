.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Z


# direct methods
.method public synthetic constructor <init>(Z)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda15;->f$0:Z

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

    iget-boolean v0, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda15;->f$0:Z

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$E5KAYtCjaQAxDLaoDFjd7t0o3yo(ZLcom/gold/youtube/om7753/extractor/stream/VideoStream;)Z

    move-result p1

    return p1
.end method
