.class public final synthetic Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lus/shandian/giga/service/DownloadManager$MissionIterator;

.field public final synthetic f$1:Ljava/util/ArrayList;

.field public final synthetic f$2:Ljava/util/ArrayList;


# direct methods
.method public synthetic constructor <init>(Lus/shandian/giga/service/DownloadManager$MissionIterator;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    iput-object p2, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iput-object p3, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;->f$0:Lus/shandian/giga/service/DownloadManager$MissionIterator;

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;->f$1:Ljava/util/ArrayList;

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;->f$2:Ljava/util/ArrayList;

    check-cast p1, Lus/shandian/giga/get/Mission;

    invoke-static {v0, v1, v2, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->$r8$lambda$z3NDeZWGaZRL_9SeGweH4rF2GN4(Lus/shandian/giga/service/DownloadManager$MissionIterator;Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/shandian/giga/get/Mission;)Z

    move-result p1

    return p1
.end method
