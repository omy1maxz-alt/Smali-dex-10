.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda4;->f$0:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

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

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda4;->f$0:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/Stream;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$ZJEOvGNqMnxvbpEQXJ0250ttSAA(Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;Lcom/gold/youtube/om7753/extractor/stream/Stream;)Z

    move-result p1

    return p1
.end method
