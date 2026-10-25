.class public final Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;
.super Ljava/lang/Object;
.source "DownloadDialogBinding.java"

# interfaces
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final audioButton:Landroid/widget/RadioButton;

.field public final audioStreamSpinner:Landroid/widget/Spinner;

.field public final audioTrackPresentInVideoText:Landroid/widget/TextView;

.field public final audioTrackSpinner:Landroid/widget/Spinner;

.field public final fileName:Landroid/widget/EditText;

.field public final fileNameTextView:Landroid/widget/TextView;

.field public final qualitySpinner:Landroid/widget/Spinner;

.field private final rootView:Landroid/widget/RelativeLayout;

.field public final subtitleButton:Landroid/widget/RadioButton;

.field public final threads:Landroid/widget/SeekBar;

.field public final threadsCount:Landroid/widget/TextView;

.field public final threadsLayout:Landroid/widget/LinearLayout;

.field public final threadsTextView:Landroid/widget/TextView;

.field public final toolbarLayout:Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;

.field public final videoAudioGroup:Landroid/widget/RadioGroup;

.field public final videoButton:Landroid/widget/RadioButton;


# direct methods
.method private constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;)V
    .registers 19

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    move-object v1, p2

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioButton:Landroid/widget/RadioButton;

    move-object v1, p3

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioStreamSpinner:Landroid/widget/Spinner;

    move-object v1, p4

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackPresentInVideoText:Landroid/widget/TextView;

    move-object v1, p5

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->audioTrackSpinner:Landroid/widget/Spinner;

    move-object v1, p6

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->fileName:Landroid/widget/EditText;

    move-object v1, p7

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->fileNameTextView:Landroid/widget/TextView;

    move-object v1, p8

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->qualitySpinner:Landroid/widget/Spinner;

    move-object v1, p9

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->subtitleButton:Landroid/widget/RadioButton;

    move-object v1, p10

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threads:Landroid/widget/SeekBar;

    move-object v1, p11

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threadsCount:Landroid/widget/TextView;

    move-object v1, p12

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threadsLayout:Landroid/widget/LinearLayout;

    move-object v1, p13

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threadsTextView:Landroid/widget/TextView;

    move-object/from16 v1, p14

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->toolbarLayout:Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoAudioGroup:Landroid/widget/RadioGroup;

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->videoButton:Landroid/widget/RadioButton;

    return-void
.end method

.method public static bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;
    .registers 21

    move-object/from16 v0, p0

    const-string v1, "audio_button"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Landroid/widget/RadioButton;

    if-eqz v5, :cond_b5

    const-string v1, "audio_stream_spinner"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v6, v2

    check-cast v6, Landroid/widget/Spinner;

    if-eqz v6, :cond_b5

    const-string v1, "audio_track_present_in_video_text"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v7, v2

    check-cast v7, Landroid/widget/TextView;

    if-eqz v7, :cond_b5

    const-string v1, "audio_track_spinner"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/widget/Spinner;

    if-eqz v8, :cond_b5

    const-string v1, "file_name"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/widget/EditText;

    if-eqz v9, :cond_b5

    const-string v1, "file_name_text_view"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/widget/TextView;

    if-eqz v10, :cond_b5

    const-string v1, "quality_spinner"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v11, v2

    check-cast v11, Landroid/widget/Spinner;

    if-eqz v11, :cond_b5

    const-string v1, "subtitle_button"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v12, v2

    check-cast v12, Landroid/widget/RadioButton;

    if-eqz v12, :cond_b5

    const-string v1, "threads"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v13, v2

    check-cast v13, Landroid/widget/SeekBar;

    if-eqz v13, :cond_b5

    const-string v1, "threads_count"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v14, v2

    check-cast v14, Landroid/widget/TextView;

    if-eqz v14, :cond_b5

    const-string v1, "threads_layout"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object v15, v2

    check-cast v15, Landroid/widget/LinearLayout;

    if-eqz v15, :cond_b5

    const-string v1, "threads_text_view"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v16, v2

    check-cast v16, Landroid/widget/TextView;

    if-eqz v16, :cond_b5

    const-string v1, "toolbar_layout"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_b5

    invoke-static {v2}, Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;->bind(Landroid/view/View;)Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;

    move-result-object v17

    const-string v1, "video_audio_group"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v18, v2

    check-cast v18, Landroid/widget/RadioGroup;

    if-eqz v18, :cond_b5

    const-string v1, "video_button"

    invoke-static {v0, v1}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;

    move-result-object v2

    move-object/from16 v19, v2

    check-cast v19, Landroid/widget/RadioButton;

    if-eqz v19, :cond_b5

    new-instance v1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    move-object v3, v1

    move-object v4, v0

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-direct/range {v3 .. v19}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;-><init>(Landroid/widget/RelativeLayout;Landroid/widget/RadioButton;Landroid/widget/Spinner;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/EditText;Landroid/widget/TextView;Landroid/widget/Spinner;Landroid/widget/RadioButton;Landroid/widget/SeekBar;Landroid/widget/TextView;Landroid/widget/LinearLayout;Landroid/widget/TextView;Lcom/gold/youtube/om7753/databinding/ToolbarLayoutBinding;Landroid/widget/RadioGroup;Landroid/widget/RadioButton;)V

    return-object v1

    :cond_b5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v2, "Missing required view with ID: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static getID(Landroid/view/View;Ljava/lang/String;)Landroid/view/View;
    .registers 2

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic getRoot()Landroid/view/View;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->getRoot()Landroid/widget/RelativeLayout;

    move-result-object v0

    return-object v0
.end method

.method public getRoot()Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->rootView:Landroid/widget/RelativeLayout;

    return-object v0
.end method
