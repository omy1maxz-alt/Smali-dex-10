.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda18;->f$0:Ljava/util/Comparator;

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
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda18;->f$0:Ljava/util/Comparator;

    check-cast p1, Ljava/util/List;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$t_Aek5FfSry8OfqvLmYwz6s6d0U(Ljava/util/Comparator;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public synthetic compose(Ljava/util/function/Function;)Ljava/util/function/Function;
    .registers 2

    invoke-static {p0, p1}, Ljj$/util/function/Function$-CC;->$default$compose(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/function/Function;

    move-result-object p1

    return-object p1
.end method
