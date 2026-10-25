.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;
.super Ljava/lang/Object;
.source "ChallengeInput.java"


# instance fields
.field private final challenges:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;->challenges:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getChallenges()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 13
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;->challenges:Ljava/util/List;

    return-object p0
.end method
