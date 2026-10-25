.class public final synthetic Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda15;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/spoof/ClientType;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda15;->f$0:Lcom/gold/extension/shared/spoof/ClientType;

    iput-object p2, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda15;->f$0:Lcom/gold/extension/shared/spoof/ClientType;

    iget-object p0, p0, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest$$ExternalSyntheticLambda15;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/spoof/requests/StreamOrDetailsDataRequest;->$r8$lambda$5Q5aUeNJjvdQL_FfXzUkvIwvuFw(Lcom/gold/extension/shared/spoof/ClientType;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
