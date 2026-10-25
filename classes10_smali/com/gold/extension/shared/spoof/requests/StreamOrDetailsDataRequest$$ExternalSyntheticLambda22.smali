.class public final synthetic Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)V
    .registers 4

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;->f$0:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    iput-object p2, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;->f$2:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;->f$0:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    iget-object v1, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;->f$1:Ljava/lang/String;

    iget-object p0, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda22;->f$2:Ljava/util/Map;

    invoke-static {v0, v1, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->$r8$lambda$Sa6xWm8uefg3eYqtiDQMmv1No-Y(Lcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
