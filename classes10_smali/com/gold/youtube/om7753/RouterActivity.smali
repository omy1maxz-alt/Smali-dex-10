.class public Lcom/gold/youtube/om7753/RouterActivity;
.super Lfy;
.source "RouterActivity.java"


# instance fields
.field protected currentLinkType:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

.field private currentService:Lcom/gold/youtube/om7753/extractor/StreamingService;

.field protected currentServiceId:I

.field protected currentUrl:Ljava/lang/String;

.field protected final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;


# direct methods
.method public static synthetic $r8$lambda$9wmSErOcv-aHYJ-6bF2Fx_RFcRs(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/RouterActivity;->lambda$showUnsupportedUrlDialog$3(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$MObBQoSdqyWaf213wY-dxISWerw(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity;->lambda$handleUrl$0(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TAMkS2imqcG5_k3Mfclxw0_RmA0(Lcom/gold/youtube/om7753/RouterActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity;->lambda$showUnsupportedUrlDialog$5(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eTthz90ijR_bJPUrn44BymAnpSw(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity;->lambda$handleUrl$2(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$o7wgN2oOs03N-8ws5gpf_KMbqF0(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/gold/youtube/om7753/RouterActivity;->lambda$handleUrl$1(Ljava/lang/String;Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$tB35k9bt9g_fm93kTU_BCUe8bf8(Lcom/gold/youtube/om7753/RouterActivity;Landroid/content/DialogInterface;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity;->lambda$openDownloadDialog$18(Landroid/content/DialogInterface;)V

    return-void
.end method

.method public static synthetic $r8$lambda$x8b1EPH8K_xZ7Jn-uJ2sau1LK24(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/RouterActivity;->lambda$showUnsupportedUrlDialog$4(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcurrentService(Lcom/gold/youtube/om7753/RouterActivity;)Lcom/gold/youtube/om7753/extractor/StreamingService;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentService:Lcom/gold/youtube/om7753/extractor/StreamingService;

    return-object p0
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lfy;-><init>()V

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentServiceId:I

    return-void
.end method

.method private getPersistFragment()Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;
    .registers 5

    invoke-virtual {p0}, Lcc;->getSupportFragmentManager()Lcv;

    move-result-object v0

    const-string v1, "PERSIST_FRAGMENT"

    invoke-virtual {v0, v1}, Lcv;->f(Ljava/lang/String;)Lbz;

    move-result-object v2

    check-cast v2, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    if-nez v2, :cond_1e

    new-instance v2, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;-><init>()V

    new-instance v3, Lat;

    invoke-direct {v3, v0}, Lat;-><init>(Lcv;)V

    invoke-virtual {v3, v2, v1}, Ldf;->t(Lbz;Ljava/lang/String;)V

    invoke-virtual {v3}, Ldf;->e()V

    :cond_1e
    return-object v2
.end method

.method public static getThemeWrapperContext(Landroid/content/Context;)Landroid/content/Context;
    .registers 3

    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "LightTheme"

    goto :goto_d

    :cond_b
    const-string v1, "DarkTheme"

    :goto_d
    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStyleByName(Ljava/lang/String;)I

    move-result v1

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method private getUrl(Landroid/content/Intent;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_f
    const-string v0, "android.intent.extra.TEXT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/urlfinder/UrlFinder;->firstUrlFromInput(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_21

    :cond_20
    const/4 p1, 0x0

    :goto_21
    return-object p1
.end method

.method private handleUrl(Ljava/lang/String;)V
    .registers 6

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda0;-><init>(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;)V

    invoke-static {v1}, Lio/reactivex/rxjava3/core/Observable;->fromCallable(Ljava/util/concurrent/Callable;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/schedulers/Schedulers;->io()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->subscribeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    invoke-static {}, Lio/reactivex/rxjava3/android/schedulers/AndroidSchedulers;->mainThread()Lio/reactivex/rxjava3/core/Scheduler;

    move-result-object v2

    invoke-virtual {v1, v2}, Lio/reactivex/rxjava3/core/Observable;->observeOn(Lio/reactivex/rxjava3/core/Scheduler;)Lio/reactivex/rxjava3/core/Observable;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda1;-><init>(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;)V

    new-instance v3, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda2;

    invoke-direct {v3, p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda2;-><init>(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Observable;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object p1

    invoke-virtual {v0, p1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private synthetic lambda$handleUrl$0(Ljava/lang/String;)Ljava/lang/Boolean;
    .registers 4

    :try_start_0
    iget v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentServiceId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1c

    invoke-static {p1}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getServiceByUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentService:Lcom/gold/youtube/om7753/extractor/StreamingService;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getServiceId()I

    move-result v0

    iput v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentServiceId:I

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentService:Lcom/gold/youtube/om7753/extractor/StreamingService;

    invoke-virtual {v0, p1}, Lcom/gold/youtube/om7753/extractor/StreamingService;->getLinkTypeByUrl(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentLinkType:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentUrl:Ljava/lang/String;

    goto :goto_22

    :cond_1c
    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getService(I)Lcom/gold/youtube/om7753/extractor/StreamingService;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentService:Lcom/gold/youtube/om7753/extractor/StreamingService;

    :goto_22
    iget-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentLinkType:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    sget-object v0, Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;->NONE:Lcom/gold/youtube/om7753/extractor/StreamingService$LinkType;

    if-eq p1, v0, :cond_2a

    const/4 p1, 0x1

    goto :goto_2b

    :cond_2a
    const/4 p1, 0x0

    :goto_2b
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_2f
    .catch Lcom/gold/youtube/om7753/extractor/exceptions/ExtractionException; {:try_start_0 .. :try_end_2f} :catch_30

    return-object p1

    :catch_30
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method private synthetic lambda$handleUrl$1(Ljava/lang/String;Ljava/lang/Boolean;)V
    .registers 3

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_a

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/RouterActivity;->onSuccess()V

    goto :goto_d

    :cond_a
    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity;->showUnsupportedUrlDialog(Ljava/lang/String;)V

    :goto_d
    return-void
.end method

.method private synthetic lambda$handleUrl$2(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 7

    invoke-virtual {p2}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$openDownloadDialog$18(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/RouterActivity;->finish()V

    return-void
.end method

.method private synthetic lambda$showUnsupportedUrlDialog$3(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-static {p0, p1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->openUrlInBrowser(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showUnsupportedUrlDialog$4(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 4

    const-string p2, ""

    invoke-static {p0, p2, p1}, Lcom/gold/youtube/om7753/util/external_communication/ShareUtils;->shareText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private synthetic lambda$showUnsupportedUrlDialog$5(Landroid/content/DialogInterface;)V
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/RouterActivity;->finish()V

    return-void
.end method

.method private openDownloadDialog()V
    .registers 4

    invoke-direct {p0}, Lcom/gold/youtube/om7753/RouterActivity;->getPersistFragment()Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;

    move-result-object v0

    iget v1, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentServiceId:I

    iget-object v2, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;->-$$Nest$mopenDownloadDialog(Lcom/gold/youtube/om7753/RouterActivity$PersistentFragment;ILjava/lang/String;)V

    return-void
.end method


# virtual methods
.method public finish()V
    .registers 2

    invoke-virtual {p0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_9

    invoke-super {p0}, Landroid/app/Activity;->finish()V

    :cond_9
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lfy;->onCreate(Landroid/os/Bundle;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/RouterActivity;->getUrl(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1e

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1e
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p1

    if-nez p1, :cond_27

    const-string p1, "RouterActivityThemeLight"

    goto :goto_29

    :cond_27
    const-string p1, "RouterActivityThemeDark"

    :goto_29
    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStyleByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Lfy;->setTheme(I)V

    return-void
.end method

.method protected onDestroy()V
    .registers 3

    invoke-super {p0}, Lfy;->onDestroy()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .registers 7

    invoke-super {p0, p1, p2, p3}, Lfy;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    array-length p2, p3

    const/4 v0, 0x0

    :goto_5
    if-ge v0, p2, :cond_13

    aget v1, p3, v0

    const/4 v2, -0x1

    if-ne v1, v2, :cond_10

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/RouterActivity;->finish()V

    return-void

    :cond_10
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_13
    const/16 p2, 0x30a

    if-ne p1, p2, :cond_1a

    invoke-direct {p0}, Lcom/gold/youtube/om7753/RouterActivity;->openDownloadDialog()V

    :cond_1a
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lfy;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onStart()V
    .registers 2

    invoke-super {p0}, Lfy;->onStart()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/RouterActivity;->currentUrl:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/RouterActivity;->handleUrl(Ljava/lang/String;)V

    return-void
.end method

.method protected onSuccess()V
    .registers 4

    const/16 v0, 0x30a

    invoke-static {p0, v0}, Lcom/gold/youtube/om7753/util/PermissionHelper;->checkStoragePermissions(Landroid/app/Activity;I)Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-direct {p0}, Lcom/gold/youtube/om7753/RouterActivity;->openDownloadDialog()V

    :cond_b
    return-void
.end method

.method protected showUnsupportedUrlDialog(Ljava/lang/String;)V
    .registers 6

    invoke-static {p0}, Lcom/gold/youtube/om7753/RouterActivity;->getThemeWrapperContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v2

    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v0, "unsupported_url"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "unsupported_url_dialog_message"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "ic_arrow_back"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getAttrByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/gold/youtube/om7753/util/ThemeHelper;->resolveResourceIdFromAttr(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda4;-><init>(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;)V

    const-string v2, "open_in_browser"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p1}, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda5;-><init>(Lcom/gold/youtube/om7753/RouterActivity;Ljava/lang/String;)V

    const-string p1, "share"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "cancel"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/RouterActivity$$ExternalSyntheticLambda3;-><init>(Lcom/gold/youtube/om7753/RouterActivity;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
