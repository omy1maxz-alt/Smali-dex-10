.class public Lus/shandian/giga/service/DownloadManager$MissionIterator;
.super Lhq;
.source "DownloadManager.java"


# instance fields
.field final FINISHED:Ljava/lang/Object;

.field final PENDING:Ljava/lang/Object;

.field current:Ljava/util/ArrayList;

.field hasFinished:Z

.field hidden:Ljava/util/ArrayList;

.field snapshot:Ljava/util/ArrayList;

.field final synthetic this$0:Lus/shandian/giga/service/DownloadManager;


# direct methods
.method public static synthetic $r8$lambda$z3NDeZWGaZRL_9SeGweH4rF2GN4(Lus/shandian/giga/service/DownloadManager$MissionIterator;Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/shandian/giga/get/Mission;)Z
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->lambda$getSpecialItems$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/shandian/giga/get/Mission;)Z

    move-result p0

    return p0
.end method

.method private constructor <init>(Lus/shandian/giga/service/DownloadManager;)V
    .registers 4

    iput-object p1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-direct {p0}, Lhq;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    return-void
.end method

.method synthetic constructor <init>(Lus/shandian/giga/service/DownloadManager;Lus/shandian/giga/service/DownloadManager-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lus/shandian/giga/service/DownloadManager$MissionIterator;-><init>(Lus/shandian/giga/service/DownloadManager;)V

    return-void
.end method

.method private getSpecialItems()Ljava/util/ArrayList;
    .registers 8

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    monitor-enter v0

    :try_start_3
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-static {v2}, Lus/shandian/giga/service/DownloadManager;->-$$Nest$fgetmMissionsPending(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-static {v3}, Lus/shandian/giga/service/DownloadManager;->-$$Nest$fgetmMissionsFinished(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    new-instance v4, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;

    invoke-direct {v4, p0, v1, v2}, Lus/shandian/giga/service/DownloadManager$MissionIterator$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/service/DownloadManager$MissionIterator;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-interface {v3, v4}, Ljava/util/List;->removeIf(Ljava/util/function/Predicate;)Z

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_30

    add-int/lit8 v4, v4, 0x1

    :cond_30
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_3d

    add-int/lit8 v4, v4, 0x1

    :cond_3d
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5, v4}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_50

    iget-object v6, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_50
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_5e

    iget-object v6, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    :cond_5e
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_66

    const/4 v6, 0x1

    goto :goto_67

    :cond_66
    const/4 v6, 0x0

    :goto_67
    iput-boolean v6, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    monitor-exit v0

    return-object v5

    :catchall_6b
    move-exception v1

    monitor-exit v0
    :try_end_6d
    .catchall {:try_start_3 .. :try_end_6d} :catchall_6b

    throw v1
.end method

.method private synthetic lambda$getSpecialItems$0(Ljava/util/ArrayList;Ljava/util/ArrayList;Lus/shandian/giga/get/Mission;)Z
    .registers 7

    instance-of v0, p3, Lus/shandian/giga/get/DownloadMission;

    const/4 v1, 0x0

    if-eqz v0, :cond_11

    move-object v0, p3

    check-cast v0, Lus/shandian/giga/get/DownloadMission;

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManager;->canRecoverMission(Lus/shandian/giga/get/DownloadMission;)Z

    move-result v2

    if-eqz v2, :cond_11

    return v1

    :cond_11
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    invoke-virtual {p2, p3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b()I
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public d(II)Z
    .registers 7

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v0, Lus/shandian/giga/get/Mission;

    if-eqz v2, :cond_23

    instance-of v2, v1, Lus/shandian/giga/get/Mission;

    if-eqz v2, :cond_23

    move-object v2, v0

    check-cast v2, Lus/shandian/giga/get/Mission;

    iget-object v2, v2, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-object v3, v1

    check-cast v3, Lus/shandian/giga/get/Mission;

    iget-object v3, v3, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v2, v3}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->equals(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Z

    move-result v2

    return v2

    :cond_23
    const/4 v2, 0x0

    return v2
.end method

.method public e(II)Z
    .registers 5

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method public end()V
    .registers 2

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    return-void
.end method

.method public getItem(I)Lus/shandian/giga/service/DownloadManager$MissionItem;
    .registers 6

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    if-ne v0, v1, :cond_11

    new-instance v1, Lus/shandian/giga/service/DownloadManager$MissionItem;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lus/shandian/giga/service/DownloadManager$MissionItem;-><init>(I)V

    return-object v1

    :cond_11
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    if-ne v0, v1, :cond_1c

    new-instance v1, Lus/shandian/giga/service/DownloadManager$MissionItem;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Lus/shandian/giga/service/DownloadManager$MissionItem;-><init>(I)V

    return-object v1

    :cond_1c
    new-instance v1, Lus/shandian/giga/service/DownloadManager$MissionItem;

    const/4 v2, 0x0

    move-object v3, v0

    check-cast v3, Lus/shandian/giga/get/Mission;

    invoke-direct {v1, v2, v3}, Lus/shandian/giga/service/DownloadManager$MissionItem;-><init>(ILus/shandian/giga/get/Mission;)V

    return-object v1
.end method

.method public getSpecialAtItem(I)I
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->snapshot:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->PENDING:Ljava/lang/Object;

    if-ne v0, v1, :cond_c

    const/4 v1, 0x1

    return v1

    :cond_c
    iget-object v1, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->FINISHED:Ljava/lang/Object;

    if-ne v0, v1, :cond_12

    const/4 v1, 0x2

    return v1

    :cond_12
    const/4 v1, 0x0

    return v1
.end method

.method public hasFinishedMissions()Z
    .registers 2

    iget-boolean v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hasFinished:Z

    return v0
.end method

.method public hasValidPendingMissions()[Z
    .registers 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    monitor-enter v2

    :try_start_5
    iget-object v3, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->this$0:Lus/shandian/giga/service/DownloadManager;

    invoke-static {v3}, Lus/shandian/giga/service/DownloadManager;->-$$Nest$fgetmMissionsPending(Lus/shandian/giga/service/DownloadManager;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_f
    :goto_f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_32

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lus/shandian/giga/get/DownloadMission;

    iget-object v5, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f

    invoke-virtual {v4}, Lus/shandian/giga/get/DownloadMission;->isCorrupt()Z

    move-result v5

    if-eqz v5, :cond_2a

    goto :goto_f

    :cond_2a
    iget-boolean v5, v4, Lus/shandian/giga/get/DownloadMission;->running:Z

    if-eqz v5, :cond_30

    const/4 v0, 0x1

    goto :goto_31

    :cond_30
    const/4 v1, 0x1

    :goto_31
    goto :goto_f

    :cond_32
    monitor-exit v2
    :try_end_33
    .catchall {:try_start_5 .. :try_end_33} :catchall_3d

    const/4 v2, 0x2

    new-array v2, v2, [Z

    const/4 v3, 0x0

    aput-boolean v0, v2, v3

    const/4 v3, 0x1

    aput-boolean v1, v2, v3

    return-object v2

    :catchall_3d
    move-exception v3

    :try_start_3e
    monitor-exit v2
    :try_end_3f
    .catchall {:try_start_3e .. :try_end_3f} :catchall_3d

    throw v3
.end method

.method public hide(Lus/shandian/giga/get/Mission;)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public start()V
    .registers 2

    invoke-direct {p0}, Lus/shandian/giga/service/DownloadManager$MissionIterator;->getSpecialItems()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->current:Ljava/util/ArrayList;

    return-void
.end method

.method public unHide(Lus/shandian/giga/get/Mission;)V
    .registers 3

    iget-object v0, p0, Lus/shandian/giga/service/DownloadManager$MissionIterator;->hidden:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method
