.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;
.super Ljava/lang/Object;
.source "SolverOutput.java"


# instance fields
.field private error:Ljava/lang/String;

.field private preprocessed_player:Ljava/lang/String;

.field private responses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;",
            ">;"
        }
    .end annotation
.end field

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getError()Ljava/lang/String;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;->error:Ljava/lang/String;

    return-object p0
.end method

.method public getPreprocessedPlayer()Ljava/lang/String;
    .registers 1

    .line 28
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;->preprocessed_player:Ljava/lang/String;

    return-object p0
.end method

.method public getResponses()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;",
            ">;"
        }
    .end annotation

    .line 36
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;->responses:Ljava/util/List;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    .line 12
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setError(Ljava/lang/String;)V
    .registers 2

    .line 24
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;->error:Ljava/lang/String;

    return-void
.end method

.method public setPreprocessedPlayer(Ljava/lang/String;)V
    .registers 2

    .line 32
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;->preprocessed_player:Ljava/lang/String;

    return-void
.end method

.method public setResponses(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;",
            ">;)V"
        }
    .end annotation

    .line 40
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;->responses:Ljava/util/List;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 16
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/SolverOutput;->type:Ljava/lang/String;

    return-void
.end method
