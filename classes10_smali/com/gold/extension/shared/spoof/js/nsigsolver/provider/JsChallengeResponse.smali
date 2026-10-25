.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;
.super Ljava/lang/Object;
.source "JsChallengeResponse.java"


# instance fields
.field private final output:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;

.field private final type:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;


# direct methods
.method public constructor <init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;)V
    .registers 3

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;->type:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    .line 9
    iput-object p2, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;->output:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;

    return-void
.end method


# virtual methods
.method public getOutput()Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;->output:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;

    return-object p0
.end method

.method public getType()Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;
    .registers 1

    .line 13
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;->type:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    return-object p0
.end method
