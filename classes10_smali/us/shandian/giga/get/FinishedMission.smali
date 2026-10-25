.class public Lus/shandian/giga/get/FinishedMission;
.super Lus/shandian/giga/get/Mission;
.source "FinishedMission.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/get/Mission;-><init>()V

    return-void
.end method

.method public constructor <init>(Lus/shandian/giga/get/DownloadMission;)V
    .registers 4

    invoke-direct {p0}, Lus/shandian/giga/get/Mission;-><init>()V

    iget-object v0, p1, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    iput-object v0, p0, Lus/shandian/giga/get/Mission;->source:Ljava/lang/String;

    iget-wide v0, p1, Lus/shandian/giga/get/Mission;->length:J

    iput-wide v0, p0, Lus/shandian/giga/get/Mission;->length:J

    iget-wide v0, p1, Lus/shandian/giga/get/Mission;->timestamp:J

    iput-wide v0, p0, Lus/shandian/giga/get/Mission;->timestamp:J

    iget-char v0, p1, Lus/shandian/giga/get/Mission;->kind:C

    iput-char v0, p0, Lus/shandian/giga/get/Mission;->kind:C

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iput-object p1, p0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    return-void
.end method
