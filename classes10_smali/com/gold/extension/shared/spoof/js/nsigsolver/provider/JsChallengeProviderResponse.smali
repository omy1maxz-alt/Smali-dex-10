.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;
.super Ljava/lang/Object;
.source "JsChallengeProviderResponse.java"


# instance fields
.field private final error:Ljava/lang/Exception;

.field private final request:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;

.field private final response:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;)V
    .registers 4

    const/4 v0, 0x0

    .line 15
    invoke-direct {p0, p1, p2, v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;-><init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;Ljava/lang/Exception;)V

    return-void
.end method

.method public constructor <init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;Ljava/lang/Exception;)V
    .registers 4

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;->request:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;

    .line 10
    iput-object p2, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;->response:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;

    .line 11
    iput-object p3, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;->error:Ljava/lang/Exception;

    return-void
.end method

.method public constructor <init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;Ljava/lang/Exception;)V
    .registers 4

    const/4 v0, 0x0

    .line 19
    invoke-direct {p0, p1, v0, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;-><init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/Exception;
    .registers 1

    .line 31
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;->error:Ljava/lang/Exception;

    return-object p0
.end method

.method public getRequest()Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;
    .registers 1

    .line 23
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;->request:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;

    return-object p0
.end method

.method public getResponse()Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;
    .registers 1

    .line 27
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;->response:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;

    return-object p0
.end method
