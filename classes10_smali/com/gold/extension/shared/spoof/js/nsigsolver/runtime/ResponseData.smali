.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;
.super Ljava/lang/Object;
.source "ResponseData.java"


# instance fields
.field private data:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private error:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getData()Ljava/util/Map;
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

    .line 27
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;->data:Ljava/util/Map;

    return-object p0
.end method

.method public getError()Ljava/lang/String;
    .registers 1

    .line 19
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;->error:Ljava/lang/String;

    return-object p0
.end method

.method public getType()Ljava/lang/String;
    .registers 1

    .line 11
    iget-object p0, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;->type:Ljava/lang/String;

    return-object p0
.end method

.method public setData(Ljava/util/Map;)V
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

    .line 31
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;->data:Ljava/util/Map;

    return-void
.end method

.method public setError(Ljava/lang/String;)V
    .registers 2

    .line 23
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;->error:Ljava/lang/String;

    return-void
.end method

.method public setType(Ljava/lang/String;)V
    .registers 2

    .line 15
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/ResponseData;->type:Ljava/lang/String;

    return-void
.end method
