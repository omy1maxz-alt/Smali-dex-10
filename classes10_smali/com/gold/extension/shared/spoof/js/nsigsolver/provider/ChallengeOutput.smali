.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;
.super Ljava/lang/Object;
.source "ChallengeOutput.java"


# instance fields
.field private final results:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;->results:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getResults()Ljava/util/Map;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;->results:Ljava/util/Map;

    return-object p0
.end method
