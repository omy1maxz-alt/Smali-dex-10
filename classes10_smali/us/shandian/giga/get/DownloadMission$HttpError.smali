.class Lus/shandian/giga/get/DownloadMission$HttpError;
.super Ljava/lang/Exception;
.source "DownloadMission.java"


# instance fields
.field final statusCode:I


# direct methods
.method constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    iput p1, p0, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    return-void
.end method


# virtual methods
.method public getMessage()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "HTTP "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lus/shandian/giga/get/DownloadMission$HttpError;->statusCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
