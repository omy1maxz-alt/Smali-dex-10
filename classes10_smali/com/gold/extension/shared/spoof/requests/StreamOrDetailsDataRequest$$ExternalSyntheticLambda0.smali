.class public final synthetic Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# direct methods
.method public synthetic constructor <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 2

    .line 0
    check-cast p1, Lcom/gold/extension/shared/spoof/ClientType;

    invoke-static {p1}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->$r8$lambda$vy4V66Kr0Q6EyFc2ytjl3yKX3bs(Lcom/gold/extension/shared/spoof/ClientType;)Z

    move-result p0

    return p0
.end method
