.class Lcom/gold/youtube/om7753/download/DownloadActivity$1;
.super Ljava/lang/Object;
.source "DownloadActivity.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field final synthetic this$0:Lcom/gold/youtube/om7753/download/DownloadActivity;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/download/DownloadActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadActivity$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadActivity$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadActivity;

    invoke-static {v0}, Lcom/gold/youtube/om7753/download/DownloadActivity;->access$000(Lcom/gold/youtube/om7753/download/DownloadActivity;)V

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadActivity$1;->this$0:Lcom/gold/youtube/om7753/download/DownloadActivity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
