.class public Lus/shandian/giga/ui/fragment/MissionsFragment;
.super Lbz;
.source "MissionsFragment.java"


# instance fields
.field private mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

.field private mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

.field private mClear:Landroid/view/MenuItem;

.field private final mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mEmpty:Landroid/view/View;

.field private mForceUpdate:Z

.field private mGridManager:Landroid/support/v7/widget/GridLayoutManager;

.field private mLinear:Z

.field private mLinearManager:Landroid/support/v7/widget/LinearLayoutManager;

.field private mList:Landroid/support/v7/widget/RecyclerView;

.field private mPause:Landroid/view/MenuItem;

.field private mPrefs:Landroid/content/SharedPreferences;

.field private mStart:Landroid/view/MenuItem;

.field private mSwitch:Landroid/view/MenuItem;

.field private final requestDownloadSaveAsLauncher:Lrx;

.field private unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;


# direct methods
.method public static synthetic $r8$lambda$6l6ObTl3BewbM2_CjjVQuMDEMwU(Lus/shandian/giga/ui/fragment/MissionsFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->lambda$onOptionsItemSelected$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OH26o4b77PGumr6_-wGPv9MgBZs(Lus/shandian/giga/ui/fragment/MissionsFragment;Lru;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->requestDownloadSaveAsResult(Lru;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oblEigXRfbPbmHhGAhrWbqUZdiQ(Lus/shandian/giga/ui/fragment/MissionsFragment;Landroid/content/DialogInterface;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lus/shandian/giga/ui/fragment/MissionsFragment;->lambda$onOptionsItemSelected$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lbz;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    new-instance v0, Lus/shandian/giga/ui/fragment/MissionsFragment$1;

    invoke-direct {v0, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$1;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-object p0
.end method

.method static synthetic access$002(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;)Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;
    .registers 2

    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    return-object p1
.end method

.method static synthetic access$100(Lus/shandian/giga/ui/fragment/MissionsFragment;)Lus/shandian/giga/ui/adapter/MissionAdapter;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    return-object p0
.end method

.method static synthetic access$102(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/ui/adapter/MissionAdapter;)Lus/shandian/giga/ui/adapter/MissionAdapter;
    .registers 2

    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    return-object p1
.end method

.method static synthetic access$200(Lus/shandian/giga/ui/fragment/MissionsFragment;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lus/shandian/giga/ui/fragment/MissionsFragment;)Landroid/view/View;
    .registers 1

    iget-object p0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mEmpty:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$400(Lus/shandian/giga/ui/fragment/MissionsFragment;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->setAdapterButtons()V

    return-void
.end method

.method static synthetic access$500(Lus/shandian/giga/ui/fragment/MissionsFragment;)V
    .registers 1

    invoke-direct {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->updateList()V

    return-void
.end method

.method static synthetic access$600(Lus/shandian/giga/ui/fragment/MissionsFragment;Lus/shandian/giga/get/DownloadMission;)V
    .registers 2

    invoke-direct {p0, p1}, Lus/shandian/giga/ui/fragment/MissionsFragment;->recoverMission(Lus/shandian/giga/get/DownloadMission;)V

    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$0(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->clearFinishedDownloads(Z)V

    return-void
.end method

.method private synthetic lambda$onOptionsItemSelected$1(Landroid/content/DialogInterface;I)V
    .registers 3

    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->clearFinishedDownloads(Z)V

    return-void
.end method

.method private recoverMission(Lus/shandian/giga/get/DownloadMission;)V
    .registers 6

    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/NewSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    goto :goto_2f

    :cond_c
    iget-object v0, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/NewSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_27

    :cond_21
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/NewSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_27
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_2f
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->requestDownloadSaveAsLauncher:Lrx;

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    iget-object v3, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getName()Ljava/lang/String;

    move-result-object v3

    iget-object p1, p1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getType()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, v3, p1, v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {v1, p1}, Lrx;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private requestDownloadSaveAsResult(Lru;)V
    .registers 7

    invoke-virtual {p1}, Lru;->getResultCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    return-void

    :cond_8
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    if-eqz v0, :cond_5d

    invoke-virtual {p1}, Lru;->getData()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_13

    goto :goto_5d

    :cond_13
    :try_start_13
    invoke-virtual {p1}, Lru;->getData()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_31

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_31

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :cond_31
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    iget-object v0, v0, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getTag()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    new-instance v2, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v3, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4, p1, v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    iput-object v2, v1, Lus/shandian/giga/get/Mission;->storage:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->unsafeMissionTarget:Lus/shandian/giga/get/DownloadMission;

    invoke-virtual {p1, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->recoverMission(Lus/shandian/giga/get/DownloadMission;)V
    :try_end_4c
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_4c} :catch_4d

    goto :goto_5d

    :catch_4d
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    const-string v0, "general_error"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    :cond_5d
    :goto_5d
    return-void
.end method

.method private setAdapterButtons()V
    .registers 4

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    if-eqz v0, :cond_1b

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    if-eqz v1, :cond_1b

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    if-nez v1, :cond_d

    goto :goto_1b

    :cond_d
    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v1, v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setClearButton(Landroid/view/MenuItem;)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    invoke-virtual {v0, v1, v2}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setMasterButtons(Landroid/view/MenuItem;Landroid/view/MenuItem;)V

    :cond_1b
    :goto_1b
    return-void
.end method

.method private updateList()V
    .registers 4

    iget-boolean v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v0, :cond_c

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mGridManager:Landroid/support/v7/widget/GridLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->am(Loa;)V

    goto :goto_13

    :cond_c
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinearManager:Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->am(Loa;)V

    :goto_13
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lnr;->ql()V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    invoke-virtual {v0, v1}, Lus/shandian/giga/ui/adapter/MissionAdapter;->setLinear(Z)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->ai(Lnr;)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    if-eqz v0, :cond_6f

    invoke-virtual {p0}, Lbz;->id()Landroid/content/Context;

    move-result-object v1

    iget-boolean v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v2, :cond_3b

    const-string v2, "ic_grid"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getAttrByName(Ljava/lang/String;)I

    move-result v2

    goto :goto_41

    :cond_3b
    const-string v2, "ic_list"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getAttrByName(Ljava/lang/String;)I

    move-result v2

    :goto_41
    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/util/ThemeHelper;->resolveResourceIdFromAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    if-eqz v1, :cond_55

    const-string v1, "list"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    goto :goto_5b

    :cond_55
    const-string v1, "grid"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    :goto_5b
    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    const-string v2, "linear"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :cond_6f
    return-void
.end method


# virtual methods
.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    const-string p3, "za_missions"

    invoke-static {p3}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result p3

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0}, Lbz;->ii()Lcc;

    move-result-object p2

    invoke-static {p2}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string p3, "linear"

    invoke-interface {p2, p3, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    iput-boolean p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    iget-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    new-instance p3, Landroid/content/Intent;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    const-class v1, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p3, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v1, 0x1

    invoke-virtual {p2, p3, v0, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    const-string p2, "list_empty_view"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mEmpty:Landroid/view/View;

    const-string p2, "mission_recycler"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/support/v7/widget/RecyclerView;

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mList:Landroid/support/v7/widget/RecyclerView;

    new-instance p2, Landroid/support/v7/widget/GridLayoutManager;

    const/4 v0, 0x2

    invoke-direct {p2, v0}, Landroid/support/v7/widget/GridLayoutManager;-><init>(I)V

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mGridManager:Landroid/support/v7/widget/GridLayoutManager;

    new-instance p3, Lus/shandian/giga/ui/fragment/MissionsFragment$2;

    invoke-direct {p3, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$2;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    iput-object p3, p2, Landroid/support/v7/widget/GridLayoutManager;->g:Lms;

    new-instance p2, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {p2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>()V

    iput-object p2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinearManager:Landroid/support/v7/widget/LinearLayoutManager;

    return-object p1
.end method

.method public YY(Landroid/view/MenuItem;)Z
    .registers 5

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "switch_mode"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_26

    const-string v2, "start_downloads"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_2f

    const-string v2, "pause_downloads"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_39

    const-string v2, "clear_list"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_49

    goto :goto_8a

    :cond_26
    iget-boolean p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mLinear:Z

    invoke-direct {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->updateList()V

    return v1

    :cond_2f
    iget-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-virtual {p1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lus/shandian/giga/service/DownloadManager;

    move-result-object p1

    invoke-virtual {p1}, Lus/shandian/giga/service/DownloadManager;->startAllMissions()V

    return v1

    :cond_39
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-virtual {v0}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->getDownloadManager()Lus/shandian/giga/service/DownloadManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManager;->pauseAllMissions(Z)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->refreshMissionItems()V

    goto :goto_8a

    :cond_49
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "clear_download_history"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    const-string v2, "confirm_prompt"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    new-instance v2, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda1;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "delete_downloaded_files"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    new-instance v2, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lus/shandian/giga/ui/fragment/MissionsFragment$$ExternalSyntheticLambda0;-><init>(Lus/shandian/giga/ui/fragment/MissionsFragment;)V

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    const-string v0, "cancel"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    return v1

    :goto_8a
    invoke-super {p0, p1}, Lbz;->YY(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public ZZ(Landroid/view/Menu;)V
    .registers 3

    const-string v0, "switch_mode"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mSwitch:Landroid/view/MenuItem;

    const-string v0, "clear_list"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mClear:Landroid/view/MenuItem;

    const-string v0, "start_downloads"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mStart:Landroid/view/MenuItem;

    const-string v0, "pause_downloads"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mPause:Landroid/view/MenuItem;

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    if-eqz v0, :cond_37

    invoke-direct {p0}, Lus/shandian/giga/ui/fragment/MissionsFragment;->setAdapterButtons()V

    :cond_37
    return-void
.end method

.method public af(Landroid/app/Activity;)V
    .registers 3

    invoke-super {p0, p1}, Lbz;->af(Landroid/app/Activity;)V

    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-void
.end method

.method public ag()V
    .registers 3

    invoke-super {p0}, Lbz;->ag()V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_26

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    if-nez v1, :cond_c

    goto :goto_26

    :cond_c
    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->removeMissionEventListener(Landroid/os/Handler$Callback;)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    iput-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    :cond_26
    :goto_26
    return-void
.end method

.method public ai()V
    .registers 4

    invoke-super {p0}, Lbz;->ai()V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    const/4 v1, 0x1

    if-eqz v0, :cond_14

    iput-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    invoke-virtual {v2, v0}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->removeMissionEventListener(Landroid/os/Handler$Callback;)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onPaused()V

    :cond_14
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_1b

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    :cond_1b
    return-void
.end method

.method public ak()V
    .registers 4

    invoke-super {p0}, Lbz;->ak()V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->onResume()V

    iget-boolean v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    if-eqz v0, :cond_16

    iput-boolean v1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mForceUpdate:Z

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->forceUpdate()V

    :cond_16
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    iget-object v2, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0, v2}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->addMissionEventListener(Landroid/os/Handler$Callback;)V

    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mAdapter:Lus/shandian/giga/ui/adapter/MissionAdapter;

    invoke-virtual {v0}, Lus/shandian/giga/ui/adapter/MissionAdapter;->checkMasterButtonsVisibility()V

    :cond_22
    iget-object v0, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mBinder:Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;

    if-eqz v0, :cond_29

    invoke-virtual {v0, v1}, Lus/shandian/giga/service/DownloadManagerService$DownloadManagerBinder;->enableNotifications(Z)V

    :cond_29
    return-void
.end method

.method public jf(Landroid/content/Context;)V
    .registers 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Lbz;->N:Z

    invoke-super {p0, p1}, Lbz;->jf(Landroid/content/Context;)V

    iput-object p1, p0, Lus/shandian/giga/ui/fragment/MissionsFragment;->mContext:Landroid/content/Context;

    return-void
.end method
