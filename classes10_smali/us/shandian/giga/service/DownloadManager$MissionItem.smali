.class public Lus/shandian/giga/service/DownloadManager$MissionItem;
.super Ljava/lang/Object;
.source "DownloadManager.java"


# instance fields
.field public mission:Lus/shandian/giga/get/Mission;

.field public special:I


# direct methods
.method constructor <init>(I)V
    .registers 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lus/shandian/giga/service/DownloadManager$MissionItem;-><init>(ILus/shandian/giga/get/Mission;)V

    return-void
.end method

.method constructor <init>(ILus/shandian/giga/get/Mission;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lus/shandian/giga/service/DownloadManager$MissionItem;->special:I

    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager$MissionItem;->mission:Lus/shandian/giga/get/Mission;

    return-void
.end method
