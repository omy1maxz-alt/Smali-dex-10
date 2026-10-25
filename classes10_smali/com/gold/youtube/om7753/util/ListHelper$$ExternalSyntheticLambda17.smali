.class public final synthetic Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda17;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Ljava/util/Comparator;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Comparator;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda17;->f$0:Ljava/util/Comparator;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/ListHelper$$ExternalSyntheticLambda17;->f$0:Ljava/util/Comparator;

    check-cast p1, Ljava/util/List;

    check-cast p2, Ljava/util/List;

    if-nez v0, :cond_10

    if-nez p1, :cond_10

    if-nez p2, :cond_10

    const p1, -0x1

    return p1

    :cond_10
    invoke-static {v0, p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->$r8$lambda$VMt-sZr4Luz78iud1KTbe36qq4Y(Ljava/util/Comparator;Ljava/util/List;Ljava/util/List;)I

    move-result p1

    return p1
.end method
