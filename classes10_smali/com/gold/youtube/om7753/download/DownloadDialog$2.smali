.class Lcom/gold/youtube/om7753/download/DownloadDialog$2;
.super Lcom/gold/youtube/om7753/util/SimpleOnSeekBarChangeListener;
.source "DownloadDialog.java"


# instance fields
.field final synthetic this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/download/DownloadDialog;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$2;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-direct {p0}, Lcom/gold/youtube/om7753/util/SimpleOnSeekBarChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .registers 5

    add-int/lit8 p2, p2, 0x1

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$2;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-static {p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->-$$Nest$fgetprefs(Lcom/gold/youtube/om7753/download/DownloadDialog;)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    iget-object p3, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$2;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    const-string v0, "default_download_threads"

    invoke-static {v0}, Lcom/gold/youtube/om7753/util/Utils;->getStringByStr(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$2;->this$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    invoke-static {p1}, Lcom/gold/youtube/om7753/download/DownloadDialog;->-$$Nest$fgetdialogBinding(Lcom/gold/youtube/om7753/download/DownloadDialog;)Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;

    move-result-object p1

    iget-object p1, p1, Lcom/gold/youtube/om7753/databinding/DownloadDialogBinding;->threadsCount:Landroid/widget/TextView;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
