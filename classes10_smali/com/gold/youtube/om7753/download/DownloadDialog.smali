.class public Lcom/gold/youtube/om7753/download/DownloadDialog;
.super Lbm;
.source "DownloadDialog.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DEBUG:Z


# instance fields
.field private askForSavePath:Z

.field private audioStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

.field private audioTrackAdapter:Lcom/gold/youtube/om7753/util/AudioTrackAdapter;

.field private context:Landroid/content/Context;

.field currentInfo:Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

.field private dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

.field private final disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

.field private downloadManager:Lus/shandian/giga/service/DownloadManager;

.field private filenameTmp:Ljava/lang/String;

.field private mainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

.field private mainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

.field private mimeTmp:Ljava/lang/String;

.field private okButton:Landroid/support/v7/view/menu/ActionMenuItemView;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private prefs:Landroid/content/SharedPreferences;

.field private final requestDownloadPickAudioFolderLauncher:Lrx;

.field private final requestDownloadPickVideoFolderLauncher:Lrx;

.field private final requestDownloadSaveAsLauncher:Lrx;

.field selectedAudioIndex:I

.field selectedAudioTrackIndex:I

.field selectedSubtitleIndex:I

.field selectedVideoIndex:I

.field private subtitleStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

.field private videoStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

.field wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

.field wrappedSubtitleStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

.field wrappedVideoStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;


# direct methods
.method public static synthetic $r8$lambda$1eccqMn5EPCilvxlTlDTaP4eD98(Lcom/gold/youtube/om7753/download/DownloadDialog;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$fetchStreamsSize$6(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$EiNEmBxDYNr-psI1Y0bbmahVzg0(Lcom/gold/youtube/om7753/download/DownloadDialog;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$fetchStreamsSize$3(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$N_jwKI4VeOK5f-FjGO9JZN-oD9M(Landroid/text/Editable;)Ljava/lang/String;
    .registers 1

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RJJw5P2OedITddJmrMjlujMfZ1g(Lcom/gold/youtube/om7753/download/DownloadDialog;Lus/shandian/giga/service/MissionState;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/net/Uri;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 9

    invoke-direct/range {p0 .. p8}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$checkSelectedDownload$9(Lus/shandian/giga/service/MissionState;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/net/Uri;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$Rd9XP0aV2Cp0YNX8vFmnau9RrPM(Lcom/gold/youtube/om7753/download/DownloadDialog;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$fetchStreamsSize$2(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SBstSnojI5r9wgdr5GQa8e8SmO4(Lcom/gold/youtube/om7753/download/DownloadDialog;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$fetchStreamsSize$7(Ljava/lang/Throwable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SG5XHar2BPCanStzxoeBHAP9b9I(Lcom/gold/youtube/om7753/download/DownloadDialog;Ljava/lang/Boolean;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$fetchStreamsSize$4(Ljava/lang/Boolean;)V

    return-void
.end method

.method public static synthetic $r8$lambda$cJNHL79x5aOi7OeYlS29xdXx7jg(Lcom/gold/youtube/om7753/download/DownloadDialog;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$checkSelectedDownload$8(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cfi6DmbxxfiZf7CBKtv-UycIwU8(Lcom/gold/youtube/om7753/download/DownloadDialog;Landroid/view/View;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$initToolbar$0(Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$eftfC3lumhpNMhhwp_4dKbyeS0U(Lcom/gold/youtube/om7753/download/DownloadDialog;Landroid/view/MenuItem;)Z
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$initToolbar$1(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$liBpbzpyKRBfQ6k5_3ZkABe_ukA(Lcom/gold/youtube/om7753/download/DownloadDialog;Lru;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickAudioFolderResult(Lru;)V

    return-void
.end method

.method public static synthetic $r8$lambda$nZ9woI_4jVejnNhSPQQtyEWJkzA(Lcom/gold/youtube/om7753/download/DownloadDialog;Lru;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadSaveAsResult(Lru;)V

    return-void
.end method

.method public static synthetic $r8$lambda$oIys-BaL6re7Tfzhcp9TO0jc-IE(Lcom/gold/youtube/om7753/download/DownloadDialog;Lru;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickVideoFolderResult(Lru;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qJUfGxpGPxhiRO0bfhfSpIUKdig(Lcom/gold/youtube/om7753/download/DownloadDialog;Ljava/lang/Throwable;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->lambda$fetchStreamsSize$5(Ljava/lang/Throwable;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetcontext(Lcom/gold/youtube/om7753/download/DownloadDialog;)Landroid/content/Context;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetdialogBinding(Lcom/gold/youtube/om7753/download/DownloadDialog;)Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetokButton(Lcom/gold/youtube/om7753/download/DownloadDialog;)Landroidx/appcompat/view/menu/ActionMenuItemView;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->okButton:Landroid/support/v7/view/menu/ActionMenuItemView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetprefs(Lcom/gold/youtube/om7753/download/DownloadDialog;)Landroid/content/SharedPreferences;
    .registers 1

    iget-object p0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputaskForSavePath(Lcom/gold/youtube/om7753/download/DownloadDialog;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->askForSavePath:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputdownloadManager(Lcom/gold/youtube/om7753/download/DownloadDialog;Lus/shandian/giga/service/DownloadManager;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainStorageAudio(Lcom/gold/youtube/om7753/download/DownloadDialog;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmainStorageVideo(Lcom/gold/youtube/om7753/download/DownloadDialog;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    sget-boolean v0, Lcom/gold/youtube/om7753/App;->debug:Z

    sput-boolean v0, Lcom/gold/youtube/om7753/download/DownloadDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;Lcom/gold/youtube/om7753/RouterActivity;)V
    .registers 10

    invoke-direct {p0}, Lbm;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioIndex:I

    iput v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedSubtitleIndex:I

    new-instance v1, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda14;

    invoke-direct {v1, p3}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda14;-><init>(Lcom/gold/youtube/om7753/RouterActivity;)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->okButton:Landroid/support/v7/view/menu/ActionMenuItemView;

    new-instance v1, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v1, Lsp;

    invoke-direct {v1}, Lsp;-><init>()V

    new-instance v2, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda0;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-interface {p0, v1, v2}, Lrw;->registerForActivityResult(Lsg;Lrv;)Lrx;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadSaveAsLauncher:Lrx;

    new-instance v1, Lsp;

    invoke-direct {v1}, Lsp;-><init>()V

    new-instance v2, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-interface {p0, v1, v2}, Lrw;->registerForActivityResult(Lsg;Lrv;)Lrx;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Lrx;

    new-instance v1, Lsp;

    invoke-direct {v1}, Lsp;-><init>()V

    new-instance v2, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda2;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-interface {p0, v1, v2}, Lrw;->registerForActivityResult(Lsg;Lrv;)Lrx;

    move-result-object v1

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Lrx;

    iput-object p2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->currentInfo:Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getAudioStreams()Ljava/util/List;

    move-result-object v1

    sget-object v2, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/util/ListHelper;->getStreamsOfSpecifiedDelivery(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->getGroupedAudioStreams(Landroid/content/Context;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    new-instance v3, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-direct {v3, v1, p1}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-static {p1, v1}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultAudioTrackGroup(Landroid/content/Context;Ljava/util/List;)I

    move-result v1

    iput v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioTrackIndex:I

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getVideoStreams()Ljava/util/List;

    move-result-object v1

    invoke-static {v1, v2}, Lcom/gold/youtube/om7753/util/ListHelper;->getStreamsOfSpecifiedDelivery(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getVideoOnlyStreams()Ljava/util/List;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/gold/youtube/om7753/util/ListHelper;->getStreamsOfSpecifiedDelivery(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_86

    goto :goto_87

    :cond_86
    const/4 v5, 0x0

    :goto_87
    invoke-static {p1, v1, v3, v0, v5}, Lcom/gold/youtube/om7753/util/ListHelper;->getSortedStreamVideosList(Landroid/content/Context;Ljava/util/List;Ljava/util/List;ZZ)Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-direct {v1, v0, p1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedVideoStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    new-instance v1, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;->getSubtitles()Ljava/util/List;

    move-result-object p2

    invoke-static {p2, v2}, Lcom/gold/youtube/om7753/util/ListHelper;->getStreamsOfSpecifiedDelivery(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;)Ljava/util/List;

    move-result-object p2

    invoke-direct {v1, p2, p1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {p1, v0}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultResolutionIndex(Landroid/content/Context;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedVideoIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/gold/youtube/om7753/RouterActivity;)V
    .registers 4

    invoke-direct {p0}, Lbm;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioIndex:I

    iput v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedSubtitleIndex:I

    new-instance v0, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda14;

    invoke-direct {v0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda14;-><init>(Lcom/gold/youtube/om7753/RouterActivity;)V

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->okButton:Landroid/support/v7/view/menu/ActionMenuItemView;

    new-instance v0, Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;-><init>()V

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda0;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-interface {p0, v0, v1}, Lrw;->registerForActivityResult(Lsg;Lrv;)Lrx;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadSaveAsLauncher:Lrx;

    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda1;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-interface {p0, v0, v1}, Lrw;->registerForActivityResult(Lsg;Lrv;)Lrx;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Lrx;

    new-instance v0, Lsp;

    invoke-direct {v0}, Lsp;-><init>()V

    new-instance v1, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda2;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-interface {p0, v0, v1}, Lrw;->registerForActivityResult(Lsg;Lrv;)Lrx;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Lrx;

    return-void
.end method

.method private checkSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .registers 20

    move-object v9, p0

    move-object/from16 v0, p1

    move-object/from16 v5, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    const/4 v1, 0x0

    if-nez v0, :cond_1a

    :try_start_c
    new-instance v2, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v3, v9, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    const-string v4, ""

    invoke-direct {v2, v3, v1, v5, v4}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V

    :goto_15
    move-object v4, v2

    goto :goto_3a

    :catch_17
    move-exception v0

    goto/16 :goto_109

    :cond_1a
    if-nez v5, :cond_2a

    new-instance v2, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v7, v8, v4}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_15

    :cond_2a
    new-instance v2, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object v3, v9, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_39} :catch_17

    goto :goto_15

    :goto_3a
    iget-object v2, v9, Lcom/gold/youtube/om7753/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {v2, v4}, Lus/shandian/giga/service/DownloadManager;->checkForExistingMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)Lus/shandian/giga/service/MissionState;

    move-result-object v3

    sget-object v2, Lcom/gold/youtube/om7753/download/DownloadDialog$3;->$SwitchMap$us$shandian$giga$service$MissionState:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    aget v6, v2, v6

    const/4 v10, 0x2

    const/4 v11, 0x1

    const-string v12, "overwrite"

    invoke-static {v12}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v12

    if-eq v6, v11, :cond_ad

    if-eq v6, v10, :cond_aa

    const/4 v13, 0x3

    if-eq v6, v13, :cond_a1

    const/4 v13, 0x4

    if-eq v6, v13, :cond_5b

    return-void

    :cond_5b
    const-string v6, "error_file_creation"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v6

    if-nez v0, :cond_77

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->existsAsFile()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->create()Z

    move-result v0

    if-nez v0, :cond_73

    invoke-direct {p0, v6}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    :cond_73
    invoke-direct {p0, v4}, Lcom/gold/youtube/om7753/download/DownloadDialog;->continueSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V

    return-void

    :cond_77
    if-nez v5, :cond_9e

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->mkdirs()Z

    move-result v1

    if-nez v1, :cond_89

    const-string v0, "error_path_creation"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    :cond_89
    invoke-virtual {v0, v7, v8}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object v0

    if-eqz v0, :cond_9a

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->canWrite()Z

    move-result v1

    if-nez v1, :cond_96

    goto :goto_9a

    :cond_96
    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->continueSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V

    return-void

    :cond_9a
    :goto_9a
    invoke-direct {p0, v6}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    :cond_9e
    const-string v6, "overwrite_unrelated_warning"

    goto :goto_af

    :cond_a1
    const-string v12, "generate_unique_name"

    invoke-static {v12}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v12

    const-string v6, "download_already_running"

    goto :goto_af

    :cond_aa
    const-string v6, "download_already_pending"

    goto :goto_af

    :cond_ad
    const-string v6, "overwrite_finished_warning"

    :goto_af
    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v6

    new-instance v13, Landroid/app/AlertDialog$Builder;

    iget-object v14, v9, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v14}, Lcom/gold/youtube/om7753/RouterActivity;->getThemeWrapperContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v14

    invoke-direct {v13, v14}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v14, "download_dialog_title"

    invoke-static {v14}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v14

    invoke-virtual {v13, v14}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    invoke-virtual {v13, v6}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const/high16 v13, 0x1040000

    invoke-virtual {v6, v13, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v13

    if-nez v0, :cond_ef

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v2, v0

    if-eq v0, v11, :cond_df

    if-eq v0, v10, :cond_df

    goto :goto_e7

    :cond_df
    new-instance v0, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, v4}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda12;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V

    invoke-virtual {v13, v12, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :goto_e7
    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :cond_ef
    new-instance v10, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda13;

    move-object v1, v10

    move-object v2, p0

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    invoke-direct/range {v1 .. v8}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda13;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;Lus/shandian/giga/service/MissionState;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/net/Uri;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v13, v12, v10}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    invoke-virtual {v13}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void

    :goto_109
    return-void
.end method

.method private continueSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V
    .registers 25

    move-object/from16 v1, p0

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->canWrite()Z

    move-result v0

    if-nez v0, :cond_12

    const-string v0, "permission_denied"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    :cond_12
    :try_start_12
    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-lez v0, :cond_1f

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->truncate()V
    :try_end_1f
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1f} :catch_195

    :cond_1f
    iget-object v0, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getProgress()I

    move-result v0

    const/4 v2, 0x1

    add-int/2addr v0, v2

    iget-object v3, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v3, v3, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v3

    const-string v6, "audio_button"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eq v3, v6, :cond_e8

    const-string v6, "subtitle_button"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq v3, v6, :cond_b1

    const-string v6, "video_button"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v6

    if-eq v3, v6, :cond_4d

    return-void

    :cond_4d
    iget-object v3, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->videoStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget v6, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v3, v6}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v3

    iget-object v6, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->videoStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getAllSecondary()Lbou;

    move-result-object v6

    iget-object v10, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedVideoStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v10}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v10

    invoke-interface {v10, v3}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v10

    invoke-static {v6, v10}, Lbov;->a(Lbou;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;

    const/16 v10, 0x76

    if-eqz v6, :cond_a5

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->getStream()Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v11

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v12

    sget-object v13, Lcom/gold/youtube/om7753/extractor/MediaFormat;->MPEG_4:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-ne v12, v13, :cond_7e

    const-string v12, "mp4D-mp4"

    goto :goto_81

    :cond_7e
    const-string/jumbo v12, "webm"

    :goto_81
    iget-object v13, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedVideoStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    move-object v14, v3

    check-cast v14, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v13, v14}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getSizeInBytes(Lcom/gold/youtube/om7753/extractor/stream/Stream;)J

    move-result-wide v13

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v15

    cmp-long v17, v15, v4

    if-lez v17, :cond_9b

    cmp-long v15, v13, v4

    if-lez v15, :cond_9b

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->getSizeInBytes()J

    move-result-wide v4

    add-long/2addr v4, v13

    :cond_9b
    move/from16 v16, v0

    move-wide/from16 v20, v4

    move-object/from16 v19, v8

    move-object v8, v11

    move-object/from16 v18, v12

    goto :goto_ad

    :cond_a5
    move/from16 v16, v0

    move-wide/from16 v20, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v18

    :goto_ad
    const/16 v15, 0x76

    goto/16 :goto_11b

    :cond_b1
    iget-object v0, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget v3, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v0, v3}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v0

    sget-object v6, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TTML:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v10, 0x73

    if-ne v0, v6, :cond_dd

    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/gold/youtube/om7753/extractor/MediaFormat;->getSuffix()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v0, v9

    const-string v6, "false"

    aput-object v6, v0, v2

    const-string/jumbo v6, "ttml"

    move-object/from16 v19, v0

    move-wide/from16 v20, v4

    move-object/from16 v18, v6

    goto :goto_e3

    :cond_dd
    move-wide/from16 v20, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v18

    :goto_e3
    const/16 v15, 0x73

    const/16 v16, 0x1

    goto :goto_11b

    :cond_e8
    iget-object v3, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->audioStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget v6, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v3, v6}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v6

    sget-object v10, Lcom/gold/youtube/om7753/extractor/MediaFormat;->M4A:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    const/16 v11, 0x61

    if-ne v6, v10, :cond_105

    const-string v6, "mp4D-m4a"

    :goto_fc
    move/from16 v16, v0

    move-wide/from16 v20, v4

    move-object/from16 v18, v6

    move-object/from16 v19, v8

    goto :goto_119

    :cond_105
    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v6

    sget-object v10, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-ne v6, v10, :cond_111

    const-string/jumbo v6, "webm-ogg-d"

    goto :goto_fc

    :cond_111
    move/from16 v16, v0

    move-wide/from16 v20, v4

    move-object/from16 v18, v8

    move-object/from16 v19, v18

    :goto_119
    const/16 v15, 0x61

    :goto_11b
    if-nez v8, :cond_130

    new-array v0, v2, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    new-instance v4, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-direct {v4, v3}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lcom/gold/youtube/om7753/extractor/stream/Stream;)V

    invoke-static {v4}, Landroidx/core/provider/FontRequestWorker$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v13, v0

    goto :goto_155

    :cond_130
    invoke-virtual {v8}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getDeliveryMethod()Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    move-result-object v0

    sget-object v4, Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;->PROGRESSIVE_HTTP:Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    if-ne v0, v4, :cond_17a

    new-array v0, v7, [Ljava/lang/String;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v9

    invoke-virtual {v8}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getContent()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v2

    new-instance v5, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-direct {v5, v3}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lcom/gold/youtube/om7753/extractor/stream/Stream;)V

    new-instance v3, Lus/shandian/giga/get/MissionRecoveryInfo;

    invoke-direct {v3, v8}, Lus/shandian/giga/get/MissionRecoveryInfo;-><init>(Lcom/gold/youtube/om7753/extractor/stream/Stream;)V

    invoke-static {v5, v3}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticBackport1;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    move-object v13, v0

    :goto_155
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v22, v12

    iget-object v12, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v0, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->currentInfo:Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    move-object/from16 v17, v0

    move-object/from16 v14, p1

    invoke-static/range {v12 .. v22}, Lus/shandian/giga/service/DownloadManagerService;->startMission(Landroid/content/Context;[Ljava/lang/String;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;CILcom/gold/youtube/om7753/extractor/stream/StreamInfo;Ljava/lang/String;[Ljava/lang/String;JLjava/util/ArrayList;)V

    iget-object v0, v1, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    const-string v2, "down_started"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual/range {p0 .. p0}, Lbm;->dismiss()V

    return-void

    :cond_17a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported stream delivery format"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getDeliveryMethod()Lcom/gold/youtube/om7753/extractor/stream/DeliveryMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :catch_195
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to truncate the file: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "DialogFragment"

    invoke-static {v3, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-string v0, "overwrite_failed"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-direct {v1, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    return-void
.end method

.method private fetchStreamsSize()V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedVideoStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->fetchSizeForWrapper(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda4;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda4;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    new-instance v3, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda5;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->getWrappedAudioStreams()Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object v1

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->fetchSizeForWrapper(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda6;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda6;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    new-instance v3, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda7;

    invoke-direct {v3, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda7;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->fetchSizeForWrapper(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)Lio/reactivex/rxjava3/core/Single;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda8;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    new-instance v3, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda9;

    invoke-direct {v3, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda9;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-virtual {v1, v2, v3}, Lio/reactivex/rxjava3/core/Single;->subscribe(Lio/reactivex/rxjava3/functions/Consumer;Lio/reactivex/rxjava3/functions/Consumer;)Lio/reactivex/rxjava3/disposables/Disposable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->add(Lio/reactivex/rxjava3/disposables/Disposable;)Z

    return-void
.end method

.method private getNameEditText()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast v0, Landroid/text/Editable;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_23

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->currentInfo:Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    :cond_23
    invoke-static {v1, v0}, Lcom/gold/youtube/om7753/util/FilenameUtils;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSubtitleIndexBy(Ljava/util/List;)I
    .registers 11

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/NewExtractor;->getPreferredLocalization()Lcom/gold/youtube/om7753/extractor/localization/Localization;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5d

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->getLocale()Ljava/util/Locale;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3d

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3d

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/Locale;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getLanguageCode()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/Locale;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    const/4 v5, 0x1

    goto :goto_3e

    :cond_3d
    const/4 v5, 0x0

    :goto_3e
    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_53

    invoke-virtual {v4}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/localization/Localization;->getCountryCode()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_53

    goto :goto_54

    :cond_53
    const/4 v6, 0x0

    :goto_54
    if-eqz v5, :cond_5a

    if-eqz v6, :cond_59

    return v2

    :cond_59
    move v3, v2

    :cond_5a
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    :cond_5d
    return v3
.end method

.method private getWrappedAudioStreams()Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;
    .registers 3

    iget v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioTrackIndex:I

    if-ltz v0, :cond_1c

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v1

    if-le v0, v1, :cond_d

    goto :goto_1c

    :cond_d
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->getTracksList()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioTrackIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    return-object v0

    :cond_1c
    :goto_1c
    invoke-static {}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->empty()Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object v0

    return-object v0
.end method

.method private initToolbar(Landroid/support/v7/widget/Toolbar;)V
    .registers 4

    const-string v0, "download_dialog_title"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->A(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lbz;->id()Landroid/content/Context;

    move-result-object v0

    const-string v1, "ic_arrow_back"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getAttrByName(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/util/ThemeHelper;->resolveResourceIdFromAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1}, Landroid/support/v7/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->s(Landroid/graphics/drawable/Drawable;)V

    const-string v0, "dialog_url"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getMenuByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->m(I)V

    new-instance v0, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda10;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->t(Landroid/view/View$OnClickListener;)V

    const-string v0, "cancel"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/Toolbar;->p(I)V

    const-string v0, "okay"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/view/menu/ActionMenuItemView;

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->okButton:Landroid/support/v7/view/menu/ActionMenuItemView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    new-instance v0, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda11;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    iput-object v0, p1, Landroid/support/v7/widget/Toolbar;->t:Lpw;

    return-void
.end method

.method private synthetic lambda$checkSelectedDownload$8(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/content/DialogInterface;I)V
    .registers 4

    invoke-interface {p2}, Landroid/content/DialogInterface;->dismiss()V

    iget-object p2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p2, p1}, Lus/shandian/giga/service/DownloadManager;->forgetMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->continueSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V

    return-void
.end method

.method private synthetic lambda$checkSelectedDownload$9(Lus/shandian/giga/service/MissionState;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/net/Uri;Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .registers 9

    invoke-interface {p7}, Landroid/content/DialogInterface;->dismiss()V

    sget-object p7, Lcom/gold/youtube/om7753/download/DownloadDialog$3;->$SwitchMap$us$shandian$giga$service$MissionState:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, p7, p1

    const/4 p7, 0x1

    const-string p8, "error_file_creation"

    invoke-static {p8}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p8

    if-eq p1, p7, :cond_2c

    const/4 p7, 0x2

    if-eq p1, p7, :cond_2c

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1e

    const/4 p2, 0x4

    if-eq p1, p2, :cond_31

    goto :goto_72

    :cond_1e
    invoke-virtual {p4, p5, p6}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createUniqueFile(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object p1

    if-nez p1, :cond_28

    invoke-direct {p0, p8}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    goto :goto_72

    :cond_28
    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->continueSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V

    goto :goto_72

    :cond_2c
    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->downloadManager:Lus/shandian/giga/service/DownloadManager;

    invoke-virtual {p1, p2}, Lus/shandian/giga/service/DownloadManager;->forgetMission(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V

    :cond_31
    if-nez p3, :cond_38

    invoke-virtual {p4, p5, p6}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->createFile(Ljava/lang/String;Ljava/lang/String;)Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    move-result-object p1

    goto :goto_63

    :cond_38
    :try_start_38
    new-instance p1, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    iget-object p2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {p4}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->getUri()Landroid/net/Uri;

    move-result-object p5

    invoke-virtual {p4}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->getTag()Ljava/lang/String;

    move-result-object p4

    invoke-direct {p1, p2, p5, p3, p4}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Landroid/net/Uri;Ljava/lang/String;)V
    :try_end_47
    .catch Ljava/io/IOException; {:try_start_38 .. :try_end_47} :catch_48

    goto :goto_63

    :catch_48
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Failed to take (or steal) the file in "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "DialogFragment"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :goto_63
    if-eqz p1, :cond_6f

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->canWrite()Z

    move-result p2

    if-eqz p2, :cond_6f

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->continueSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V

    goto :goto_72

    :cond_6f
    invoke-direct {p0, p8}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    :goto_72
    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$2(Ljava/lang/Boolean;)V
    .registers 3

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const-string v0, "video_button"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_13

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupVideoSpinner()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$3(Ljava/lang/Throwable;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$4(Ljava/lang/Boolean;)V
    .registers 3

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const-string v0, "audio_button"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_13

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupAudioSpinner()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$5(Ljava/lang/Throwable;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$6(Ljava/lang/Boolean;)V
    .registers 3

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const-string v0, "subtitle_button"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_13

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupSubtitleSpinner()V

    :cond_13
    return-void
.end method

.method private synthetic lambda$fetchStreamsSize$7(Ljava/lang/Throwable;)V
    .registers 7

    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method private synthetic lambda$initToolbar$0(Landroid/view/View;)V
    .registers 2

    invoke-virtual {p0}, Lbm;->dismiss()V

    return-void
.end method

.method private synthetic lambda$initToolbar$1(Landroid/view/MenuItem;)Z
    .registers 3

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const-string v0, "okay"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_11

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->prepareSelectedDownload()V

    const/4 p1, 0x1

    return p1

    :cond_11
    const/4 p1, 0x0

    return p1
.end method

.method private launchDirectoryPicker(Lrx;)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->getPicker(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx;->c(Ljava/lang/Object;)V

    return-void
.end method

.method private onItemSelectedSetFileName()V
    .registers 9

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->currentInfo:Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/util/FilenameUtils;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v1, v1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "caption_file_name"

    invoke-static {v7}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v7

    if-nez v3, :cond_50

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_50

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v2, v3, v4

    invoke-static {v7, v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringStr(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9e

    :cond_50
    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v2

    const-string v3, "audio_button"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_91

    const-string v3, "subtitle_button"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_71

    const-string v3, "video_button"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v3

    if-eq v2, v3, :cond_91

    goto :goto_9e

    :cond_71
    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v1, v2}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v1

    check-cast v1, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;->getLanguageTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->fileName:Landroid/widget/EditText;

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v5

    aput-object v1, v3, v4

    invoke-static {v7, v3}, Lcom/gold/youtube/om7753/util/Utils;->getStringStr(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9e

    :cond_91
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9e

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v1, v1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9e
    :goto_9e
    return-void
.end method

.method private onVideoStreamSelected()V
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->videoStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v0, v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v0

    check-cast v0, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v0

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v1, v1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x8

    if-eqz v0, :cond_22

    iget-object v5, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v5}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v5

    if-le v5, v3, :cond_22

    const/4 v5, 0x0

    goto :goto_24

    :cond_22
    const/16 v5, 0x8

    :goto_24
    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v1, v1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Landroid/widget/TextView;

    if-nez v0, :cond_36

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v0

    if-le v0, v3, :cond_36

    goto :goto_38

    :cond_36
    const/16 v2, 0x8

    :goto_38
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private prepareSelectedDownload()V
    .registers 7

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->getNameEditText()Ljava/lang/String;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const-string v2, "audio_button"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v1

    if-eq v0, v1, :cond_b7

    const-string v2, "subtitle_button"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    if-eq v0, v2, :cond_67

    const-string v2, "video_button"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    if-ne v0, v2, :cond_5f

    const-string v0, "last_download_type_video_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->videoStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v3, v4}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v3

    check-cast v3, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_106

    iget-object v4, v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    goto/16 :goto_106

    :cond_5f
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "No stream selected"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    const-string v0, "last_download_type_subtitle_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageVideo:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v3, v4}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v3

    check-cast v3, Lcom/gold/youtube/om7753/extractor/stream/SubtitlesStream;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_83

    iget-object v4, v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    :cond_83
    sget-object v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;->TTML:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-ne v3, v4, :cond_9f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;->SRT:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    iget-object v4, v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    goto :goto_106

    :cond_9f
    if-eqz v3, :cond_106

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    goto :goto_106

    :cond_b7
    const-string v0, "last_download_type_audio_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mainStorageAudio:Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->audioStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v3, v4}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getItem(I)Lcom/gold/youtube/om7753/extractor/stream/Stream;

    move-result-object v3

    check-cast v3, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v3

    sget-object v4, Lcom/gold/youtube/om7753/extractor/MediaFormat;->WEBMA_OPUS:Lcom/gold/youtube/om7753/extractor/MediaFormat;

    if-ne v3, v4, :cond_eb

    const-string v3, "audio/ogg"

    iput-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "opus"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    goto :goto_106

    :cond_eb
    if-eqz v3, :cond_106

    iget-object v4, v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->mimeType:Ljava/lang/String;

    iput-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v3, Lcom/gold/youtube/om7753/extractor/MediaFormat;->suffix:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    :cond_106
    :goto_106
    iget-boolean v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->askForSavePath:Z

    if-nez v3, :cond_144

    if-eqz v2, :cond_11e

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->isDirect()Z

    move-result v3

    iget-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v4}, Lcom/gold/youtube/om7753/settings/NewSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v4

    if-eq v3, v4, :cond_11e

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->isInvalidSafStorage()Z

    move-result v3

    if-eqz v3, :cond_144

    :cond_11e
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    const-string v2, "no_dir_yet"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v0, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_13e

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickAudioFolderLauncher:Lrx;

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->launchDirectoryPicker(Lrx;)V

    goto :goto_143

    :cond_13e
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickVideoFolderLauncher:Lrx;

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->launchDirectoryPicker(Lrx;)V

    :goto_143
    return-void

    :cond_144
    iget-boolean v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->askForSavePath:Z

    if-eqz v3, :cond_181

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/NewSettings;->useStorageAccessFramework(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_152

    const/4 v0, 0x0

    goto :goto_171

    :cond_152
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    if-ne v0, v1, :cond_163

    sget-object v0, Landroid/os/Environment;->DIRECTORY_MUSIC:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/NewSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_169

    :cond_163
    sget-object v0, Landroid/os/Environment;->DIRECTORY_MOVIES:Ljava/lang/String;

    invoke-static {v0}, Lcom/gold/youtube/om7753/settings/NewSettings;->getDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    :goto_169
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    :goto_171
    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadSaveAsLauncher:Lrx;

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    iget-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    invoke-static {v2, v3, v4, v0}, Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;->getNewPicker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v1, v0}, Lrx;->c(Ljava/lang/Object;)V

    return-void

    :cond_181
    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {v2, v1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->findFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    iget-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    invoke-direct {p0, v2, v1, v3, v4}, Lcom/gold/youtube/om7753/download/DownloadDialog;->checkSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "last_used_download_type"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method private requestDownloadPickAudioFolderResult(Lru;)V
    .registers 4

    const-string v0, "download_path_audio_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio"

    invoke-direct {p0, p1, v0, v1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickFolderResult(Lru;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestDownloadPickFolderResult(Lru;Ljava/lang/String;Ljava/lang/String;)V
    .registers 8

    iget v0, p1, Lru;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p1, Lru;->b:Landroid/content/Intent;

    const-string v1, "general_error"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_68

    iget-object v0, p1, Lru;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_68

    :cond_19
    iget-object p1, p1, Lru;->b:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_3a

    :cond_30
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v0, v2, p1, v3}, Landroid/content/Context;->grantUriPermission(Ljava/lang/String;Landroid/net/Uri;I)V

    :goto_3a
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, p2, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p2

    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    :try_start_4f
    new-instance p2, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-direct {p2, v0, p1, p3}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;-><init>(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;->findFile(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget-object p3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->filenameTmp:Ljava/lang/String;

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->mimeTmp:Ljava/lang/String;

    invoke-direct {p0, p2, p1, p3, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->checkSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_63
    .catch Ljava/io/IOException; {:try_start_4f .. :try_end_63} :catch_64

    goto :goto_67

    :catch_64
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    :goto_67
    return-void

    :cond_68
    :goto_68
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    return-void
.end method

.method private requestDownloadPickVideoFolderResult(Lru;)V
    .registers 4

    const-string v0, "download_path_video_key"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "video"

    invoke-direct {p0, p1, v0, v1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->requestDownloadPickFolderResult(Lru;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private requestDownloadSaveAsResult(Lru;)V
    .registers 6

    iget v0, p1, Lru;->a:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_6

    return-void

    :cond_6
    iget-object v0, p1, Lru;->b:Landroid/content/Intent;

    const-string v1, "general_error"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    if-eqz v0, :cond_64

    iget-object v0, p1, Lru;->b:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_19

    goto :goto_64

    :cond_19
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v2, p1, Lru;->b:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->isOwnFileUri(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_40

    iget-object p1, p1, Lru;->b:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/FilePickerActivityHelper;->getFileForUri(Landroid/net/Uri;)Ljava/io/File;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "application/octet-stream"

    invoke-direct {p0, v2, v0, p1, v1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->checkSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_40
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    iget-object v3, p1, Lru;->b:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v3

    invoke-static {v0, v3}, Landroidx/documentfile/provider/DocumentFile;->fromSingleUri(Landroid/content/Context;Landroid/net/Uri;)Landroidx/documentfile/provider/DocumentFile;

    move-result-object v0

    if-nez v0, :cond_52

    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    return-void

    :cond_52
    iget-object p1, p1, Lru;->b:Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroidx/documentfile/provider/DocumentFile;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, p1, v1, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->checkSelectedDownload(Lcom/gold/youtube/om7753/streams/io/StoredDirectoryHelper;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_64
    :goto_64
    invoke-direct {p0, v1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->showFailedDialog(I)V

    return-void
.end method

.method private setRadioButtonsState(Z)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method private setupAudioSpinner()V
    .registers 6

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setRadioButtonsState(Z)V

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->audioStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    iget v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioIndex:I

    invoke-virtual {v2, v3}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v2, v2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v4

    if-le v4, v0, :cond_3b

    goto :goto_3d

    :cond_3b
    const/16 v3, 0x8

    :goto_3d
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupAudioTrackSpinner()V
    .registers 3

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->audioTrackAdapter:Lcom/gold/youtube/om7753/util/AudioTrackAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioTrackIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    return-void
.end method

.method private setupSubtitleSpinner()V
    .registers 3

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedSubtitleIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setRadioButtonsState(Z)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method private setupVideoSpinner()V
    .registers 3

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->videoStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedVideoIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setRadioButtonsState(Z)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->onVideoStreamSelected()V

    return-void
.end method

.method private showFailedDialog(I)V
    .registers 4

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Localization;->assureCorrectAppLanguage(Landroid/content/Context;)V

    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v1}, Lcom/gold/youtube/om7753/RouterActivity;->getThemeWrapperContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "general_error"

    invoke-static {v1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const-string v0, "finish"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private updateSecondaryStreams()V
    .registers 9

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->getWrappedAudioStreams()Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object v0

    new-instance v1, Lbou;

    const/4 v2, 0x4

    invoke-direct {v1, v2}, Lbou;-><init>(I)V

    iget-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedVideoStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v2}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedVideoStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->resetSizes()V

    const/4 v3, 0x0

    :goto_16
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_75

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;->isVideoOnly()Z

    move-result v4

    if-nez v4, :cond_29

    goto :goto_72

    :cond_29
    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-static {v4, v5}, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;->getAudioStreamFor(Ljava/util/List;Lcom/gold/youtube/om7753/extractor/stream/VideoStream;)Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    move-result-object v4

    if-eqz v4, :cond_42

    new-instance v5, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;

    invoke-direct {v5, v0, v4}, Lcom/gold/youtube/om7753/util/SecondaryStreamHelper;-><init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;Lcom/gold/youtube/om7753/extractor/stream/Stream;)V

    invoke-virtual {v1, v3, v5}, Lbou;->f(ILjava/lang/Object;)V

    goto :goto_72

    :cond_42
    sget-boolean v4, Lcom/gold/youtube/om7753/download/DownloadDialog;->DEBUG:Z

    if-eqz v4, :cond_72

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gold/youtube/om7753/extractor/stream/VideoStream;

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/extractor/stream/Stream;->getFormat()Lcom/gold/youtube/om7753/extractor/MediaFormat;

    move-result-object v4

    const-string v5, "DialogFragment"

    if-eqz v4, :cond_6d

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No audio stream candidates for video format "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_6d
    const-string v4, "No audio stream candidates for unknown video format"

    invoke-static {v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_72
    :goto_72
    add-int/lit8 v3, v3, 0x1

    goto :goto_16

    :cond_75
    new-instance v2, Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedVideoStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-direct {v2, v3, v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;-><init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;Lbou;)V

    iput-object v2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->videoStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    new-instance v1, Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-direct {v1, v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;-><init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)V

    iput-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->audioStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    return-void
.end method


# virtual methods
.method public O(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    sget-boolean v0, Lcom/gold/youtube/om7753/download/DownloadDialog;->DEBUG:Z

    if-eqz v0, :cond_2f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreateView() called with: inflater = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], container = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], savedInstanceState = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p3, "]"

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DialogFragment"

    invoke-static {v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2f
    const-string p3, "download_dialog"

    invoke-static {p3}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p1, p3, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public ag()V
    .registers 2

    invoke-super {p0}, Lbz;->ag()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->disposables:Lio/reactivex/rxjava3/disposables/CompositeDisposable;

    invoke-virtual {v0}, Lio/reactivex/rxjava3/disposables/CompositeDisposable;->clear()V

    return-void
.end method

.method public h(Landroid/os/Bundle;)V
    .registers 5

    invoke-super {p0, p1}, Lbm;->h(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lbz;->ii()Lcc;

    move-result-object v0

    const/16 v1, 0x30a

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/util/PermissionHelper;->checkStoragePermissions(Landroid/app/Activity;I)Z

    move-result v0

    if-nez v0, :cond_13

    invoke-virtual {p0}, Lbm;->dismiss()V

    return-void

    :cond_13
    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/ThemeHelper;->getDialogTheme(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1, v0}, Lbm;->nB(II)V

    new-instance p1, Lcom/gold/youtube/om7753/util/AudioTrackAdapter;

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedAudioTracks:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-direct {p1, v0}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter;-><init>(Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;)V

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->audioTrackAdapter:Lcom/gold/youtube/om7753/util/AudioTrackAdapter;

    new-instance p1, Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->wrappedSubtitleStreams:Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-direct {p1, v0}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;-><init>(Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;)V

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->updateSecondaryStreams()V

    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    const-class v2, Lus/shandian/giga/service/DownloadManagerService;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->context:Landroid/content/Context;

    new-instance v2, Lcom/gold/youtube/om7753/download/DownloadDialog$1;

    invoke-direct {v2, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$1;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-virtual {v0, p1, v2, v1}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    return-void
.end method

.method public iH(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lbz;->iH(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-static {p1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->fileName:Landroid/widget/EditText;

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object p2

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->currentInfo:Lcom/gold/youtube/om7753/extractor/stream/StreamInfo;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/Info;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/gold/youtube/om7753/util/FilenameUtils;->createFilename(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object p1

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->getWrappedAudioStreams()Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/gold/youtube/om7753/util/ListHelper;->getDefaultAudioFormat(Landroid/content/Context;Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioIndex:I

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getAll()Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->getSubtitleIndexBy(Ljava/util/List;)I

    move-result p1

    iput p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedSubtitleIndex:I

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1, p0}, Landroid/widget/AdapterView;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1, p0}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->toolbarLayout:Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;->toolbar:Landroid/support/v7/widget/Toolbar;

    invoke-direct {p0, p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->initToolbar(Landroid/support/v7/widget/Toolbar;)V

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupDownloadOptions()V

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    const-string p2, "default_download_threads"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    iget-object p2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p2, p2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threadsCount:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p2, p2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {p2, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    new-instance p2, Lcom/gold/youtube/om7753/download/DownloadDialog$2;

    invoke-direct {p2, p0}, Lcom/gold/youtube/om7753/download/DownloadDialog$2;-><init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V

    invoke-virtual {p1, p2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->fetchStreamsSize()V

    return-void
.end method

.method public kQ(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Lbm;->kQ(Landroid/os/Bundle;)V

    return-void
.end method

.method public nH()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    invoke-super {p0}, Lbm;->nH()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .registers 5

    const-string p1, "audio_button"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p1

    if-eq p2, p1, :cond_22

    const-string p1, "subtitle_button"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p1

    if-eq p2, p1, :cond_1d

    const-string p1, "video_button"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p1

    if-eq p2, p1, :cond_19

    goto :goto_25

    :cond_19
    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupVideoSpinner()V

    goto :goto_25

    :cond_1d
    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupSubtitleSpinner()V

    const/4 p1, 0x0

    goto :goto_26

    :cond_22
    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupAudioSpinner()V

    :goto_25
    const/4 p1, 0x1

    :goto_26
    iget-object p2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p2, p2, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    invoke-virtual {p2, p1}, Landroid/view/View;->setEnabled(Z)V

    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .registers 3

    invoke-super {p0, p1}, Lbm;->onDismiss(Landroid/content/DialogInterface;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_a

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_a
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8

    sget-boolean v0, Lcom/gold/youtube/om7753/download/DownloadDialog;->DEBUG:Z

    if-eqz v0, :cond_37

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onItemSelected() called with: parent = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "], view = ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "], position = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "], id = ["

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p2, "]"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p4, "DialogFragment"

    invoke-static {p4, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_37
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const-string p2, "audio_stream_spinner"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_8b

    const-string p2, "audio_track_spinner"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_79

    const-string p2, "quality_spinner"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_54

    goto :goto_8d

    :cond_54
    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result p1

    const-string p2, "subtitle_button"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_73

    const-string p2, "video_button"

    invoke-static {p2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p2

    if-eq p1, p2, :cond_6d

    goto :goto_75

    :cond_6d
    iput p3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedVideoIndex:I

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->onVideoStreamSelected()V

    goto :goto_75

    :cond_73
    iput p3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedSubtitleIndex:I

    :goto_75
    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->onItemSelectedSetFileName()V

    goto :goto_8d

    :cond_79
    iget p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioTrackIndex:I

    if-eq p1, p3, :cond_7f

    const/4 p1, 0x1

    goto :goto_80

    :cond_7f
    const/4 p1, 0x0

    :goto_80
    iput p3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioTrackIndex:I

    if-eqz p1, :cond_8d

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->updateSecondaryStreams()V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->fetchStreamsSize()V

    goto :goto_8d

    :cond_8b
    iput p3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->selectedAudioIndex:I

    :cond_8d
    :goto_8d
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .registers 2

    return-void
.end method

.method protected setupDownloadOptions()V
    .registers 10

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setRadioButtonsState(Z)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupAudioTrackSpinner()V

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->videoStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-virtual {v1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getCount()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_12

    const/4 v1, 0x1

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    iget-object v3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->audioStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-virtual {v3}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getCount()I

    move-result v3

    if-lez v3, :cond_1d

    const/4 v3, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v3, 0x0

    :goto_1e
    iget-object v4, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->subtitleStreamsAdapter:Lcom/gold/youtube/om7753/util/StreamItemAdapter;

    invoke-virtual {v4}, Lcom/gold/youtube/om7753/util/StreamItemAdapter;->getCount()I

    move-result v4

    if-lez v4, :cond_28

    const/4 v4, 0x1

    goto :goto_29

    :cond_28
    const/4 v4, 0x0

    :goto_29
    iget-object v5, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v5, v5, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    const/16 v6, 0x8

    if-eqz v3, :cond_33

    const/4 v7, 0x0

    goto :goto_35

    :cond_33
    const/16 v7, 0x8

    :goto_35
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v5, v5, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    if-eqz v1, :cond_40

    const/4 v7, 0x0

    goto :goto_42

    :cond_40
    const/16 v7, 0x8

    :goto_42
    invoke-virtual {v5, v7}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v5, v5, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    if-eqz v4, :cond_4c

    const/4 v6, 0x0

    :cond_4c
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroidx/preference/PreferenceManager;->A00(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v5

    iput-object v5, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->prefs:Landroid/content/SharedPreferences;

    const-string v6, "last_used_download_type"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "last_download_type_video_key"

    invoke-static {v7}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v6, v8}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    if-eqz v1, :cond_81

    invoke-static {v7}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_81

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupVideoSpinner()V

    goto/16 :goto_ee

    :cond_81
    if-eqz v3, :cond_9a

    const-string v6, "last_download_type_audio_key"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_9a

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupAudioSpinner()V

    goto :goto_ee

    :cond_9a
    if-eqz v4, :cond_b3

    const-string v6, "last_download_type_subtitle_key"

    invoke-static {v6}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b3

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupSubtitleSpinner()V

    goto :goto_ee

    :cond_b3
    if-eqz v1, :cond_c0

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupVideoSpinner()V

    goto :goto_ee

    :cond_c0
    if-eqz v3, :cond_cd

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupAudioSpinner()V

    goto :goto_ee

    :cond_cd
    if-eqz v4, :cond_da

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog;->dialogBinding:Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    iget-object v0, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/CompoundButton;->setChecked(Z)V

    invoke-direct {p0}, Lcom/gold/youtube/om7753/download/DownloadDialog;->setupSubtitleSpinner()V

    goto :goto_ee

    :cond_da
    invoke-virtual {p0}, Lbz;->B()Landroid/content/Context;

    move-result-object v1

    const-string v2, "no_streams_available_download"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lbm;->dismiss()V

    :goto_ee
    return-void
.end method
