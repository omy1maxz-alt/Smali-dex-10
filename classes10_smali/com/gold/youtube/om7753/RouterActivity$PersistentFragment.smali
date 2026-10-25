.class public Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;
.super Lbz;
.source "RouterActivity.java"


# instance fields
.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private running:I

.field private weakContext:Ljava/lang/ref/WeakReference;


# direct methods
.method public static synthetic $r8$lambda$6npVMDQkB_vguEI1F23zSSq497k(Ljava/lang/String;Lfy;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$openDownloadDialog$10(Ljava/lang/String;Lfy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$DyvSkJpnqO-0FDSi3rsxMscQidk(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lio/reactivex/rxjava3/core/SingleEmitter;Lfy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$pleaseWait$6(Lio/reactivex/rxjava3/core/SingleEmitter;Lfy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EBGy99AO8vLM42OaXZ8E3hhhUSs(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;Lfy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$runOnVisible$3(Ljava/util/function/Consumer;Lfy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ej6QwFqRBn5X5x4aANQEI6xPJk0(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;Lfy;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$runOnVisible$2(Ljava/util/function/Consumer;Lfy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Ozi8C_ksclSdA4VujUlM5J3LSZY(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$runOnVisible$4()V

    return-void
.end method

.method public static synthetic $r8$lambda$TOsI43vS00y68Sd7bWHpEasPbuc(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$openDownloadDialog$11(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$fc42nzVVfGv2HQ95JoddUlrJp8I(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lfy;Lio/reactivex/rxjava3/core/SingleEmitter;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$pleaseWait$5(Lfy;Lio/reactivex/rxjava3/core/SingleEmitter;)V

    return-void
.end method

.method public static synthetic $r8$lambda$iLMZyz4AnF1y0Q2iOoswg5koryQ(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lfy;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$openDownloadDialog$8(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lfy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$kr1u0SC_rLu2gKNPfS1Q_LAg7bk(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lfy;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$inFlight$0(Lfy;)V

    return-void
.end method

.method public static synthetic $r8$lambda$vmyGWubOITG-A5hTd-PcuYSMxKM(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$openDownloadDialog$9(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;)V

    return-void
.end method

.method public static synthetic $r8$lambda$w7hzGHYU7FHR_QdqY6u3ItPTOJc(Lfy;)Z
    .registers 1

    invoke-static {p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$getActivityContext$1(Lfy;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$yTrTsq9Z1iFBPBmwli-xdm1xNdg(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lio/reactivex/rxjava3/core/SingleEmitter;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->lambda$pleaseWait$7(Lio/reactivex/rxjava3/core/SingleEmitter;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetActivityContext(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)Ljava/util/Optional;
    .registers 1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->getActivityContext()Ljava/util/Optional;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$minFlight(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->inFlight(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenAddToPlaylistDialog(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->openAddToPlaylistDialog(ILjava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mopenDownloadDialog(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;ILjava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->openDownloadDialog(ILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lbz;-><init>()V

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->running:I

    return-void
.end method

.method private getActivityContext()Ljava/util/Optional;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->weakContext:Ljava/lang/ref/WeakReference;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method private declared-synchronized inFlight(Z)V
    .registers 3

    monitor-enter p0

    if-eqz p1, :cond_a

    :try_start_3
    iget p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->running:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->running:I

    goto :goto_1e

    :cond_a
    iget p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->running:I

    add-int/lit8 p1, p1, -0x1

    iput p1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->running:I

    if-gtz p1, :cond_1e

    invoke-direct {p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->getActivityContext()Ljava/util/Optional;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda7;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V
    :try_end_1e
    .catchall {:try_start_3 .. :try_end_1e} :catchall_20

    :cond_1e
    :goto_1e
    monitor-exit p0

    return-void

    :catchall_20
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private static synthetic lambda$getActivityContext$1(Lfy;)Z
    .registers 1

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private synthetic lambda$inFlight$0(Lfy;)V
    .registers 4

    invoke-virtual {p1}, Lcc;->getSupportFragmentManager()Lcv;

    move-result-object p1

    new-instance v0, Lat;

    invoke-direct {v0, p1}, Lat;-><init>(Lcv;)V

    invoke-virtual {v0, p0}, Ldf;->o(Lbz;)V

    invoke-virtual {v0}, Ldf;->a()I

    return-void
.end method

.method private static synthetic lambda$openDownloadDialog$10(Ljava/lang/String;Lfy;)V
    .registers 2

    check-cast p1, Lcom/gold/youtube/om7753/RouterActivity;

    invoke-virtual {p1, p0}, Lcom/gold/youtube/om7753/RouterActivity;->showUnsupportedUrlDialog(Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$openDownloadDialog$11(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    new-instance p2, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda5;

    invoke-direct {p2, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda5;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->runOnVisible(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private static synthetic lambda$openDownloadDialog$8(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lfy;)V
    .registers 5

    invoke-virtual {p1}, Lcc;->getSupportFragmentManager()Lcv;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/download/DownloadDialog;

    check-cast p1, Lcom/gold/youtube/om7753/RouterActivity;

    invoke-direct {v1, p1, p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;-><init>(Landroid/content/Context;Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/RouterActivity;)V

    const-string p0, "downloadDialog"

    invoke-virtual {v1, v0, p0}, Lbm;->s(Lcv;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcv;->aj()V

    return-void
.end method

.method private synthetic lambda$openDownloadDialog$9(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;)V
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda6;-><init>(Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;)V

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->runOnVisible(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$pleaseWait$5(Lfy;Lio/reactivex/rxjava3/core/SingleEmitter;)V
    .registers 5

    const-string v0, "may_take_a_moment"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda10;-><init>(Landroid/widget/Toast;)V

    invoke-interface {p2, v0}, Lio/reactivex/rxjava3/core/SingleEmitter;->setCancellable(Lio/reactivex/rxjava3/functions/Cancellable;)V

    return-void
.end method

.method private synthetic lambda$pleaseWait$6(Lio/reactivex/rxjava3/core/SingleEmitter;Lfy;)V
    .registers 4

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0, p2, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda14;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lfy;Lio/reactivex/rxjava3/core/SingleEmitter;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private synthetic lambda$pleaseWait$7(Lio/reactivex/rxjava3/core/SingleEmitter;)V
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->getActivityContext()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda9;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Lio/reactivex/rxjava3/core/SingleEmitter;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private synthetic lambda$runOnVisible$2(Ljava/util/function/Consumer;Lfy;)V
    .registers 3

    invoke-interface {p1, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->inFlight(Z)V

    return-void
.end method

.method private synthetic lambda$runOnVisible$3(Ljava/util/function/Consumer;Lfy;)V
    .registers 5

    iget-object v0, p0, Lbz;->ac:Ldo;

    if-eqz v0, :cond_b

    invoke-virtual {v0}, Ldo;->getLifecycle()Lcrq;

    move-result-object v0

    check-cast v0, Lcrz;

    goto :goto_d

    :cond_b
    iget-object v0, p0, Lbz;->aa:Lcrz;

    :goto_d
    iget-object v0, v0, Lcrz;->d:Lcrp;

    sget-object v1, Lcrp;->d:Lcrp;

    invoke-virtual {v0, v1}, Lcrp;->a(Lcrp;)Z

    move-result v0

    if-eqz v0, :cond_1f

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda11;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;Lfy;)V

    invoke-virtual {p2, v0}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    :cond_1f
    return-void
.end method

.method private synthetic lambda$runOnVisible$4()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->inFlight(Z)V

    return-void
.end method

.method private openDownloadDialog(ILjava/lang/String;)V
    .registers 6

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-static {p1, p2, v0}, Lcom/gold/youtube/om7753/util/ExtractorHelper;->getStreamInfo(ILjava/lang/String;Z)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda2;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->compose(Lio/reactivex/rxjava3/core/SingleTransformer;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda3;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V

    new-instance v2, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0, p2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda4;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Ljava/lang/String;)V

    invoke-virtual {p1, v0, v2}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v1, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private runOnVisible(Ljava/util/function/Consumer;)V
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->getActivityContext()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda12;

    invoke-direct {v1, p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda12;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;Ljava/util/function/Consumer;)V

    new-instance p1, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;

    invoke-direct {p1, p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda13;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V

    invoke-virtual {v0, v1, p1}, Ljava/util/Optional;->ifPresentOrElse(Ljava/util/function/Consumer;Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public ag()V
    .registers 2

    invoke-super {p0}, Lbz;->ag()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lbz;->h(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lbz;->ay(Z)V

    return-void
.end method

.method public iE()V
    .registers 2

    invoke-super {p0}, Lbz;->iE()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->weakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public jf(Landroid/content/Context;)V
    .registers 3

    invoke-super {p0, p1}, Lbz;->jf(Landroid/content/Context;)V

    new-instance v0, Ljava/lang/ref/WeakReference;

    check-cast p1, Lfy;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->weakContext:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method pleaseWait(Lio/reactivex/rxjava3/core/Single;)Lio/reactivex/rxjava3/core/Single;
    .registers 3

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment$$ExternalSyntheticLambda8;-><init>(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;)V

    invoke-static {v0}, Lio/reactivex/rxjava3/core/Single;->create(Lio/reactivex/rxjava3/core/SingleOnSubscribe;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v0

    invoke-virtual {p1, v0}, Lio/reactivex/rxjava3/core/Single;->ambWith(Lio/reactivex/rxjava3/core/SingleSource;)Lio/reactivex/rxjava3/core/Single;

    move-result-object p1

    return-object p1
.end method
