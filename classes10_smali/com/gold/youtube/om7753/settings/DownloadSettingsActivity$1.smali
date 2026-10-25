.class Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;


# direct methods
.method constructor <init>(Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity$1;->this$0:Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 2

    iget-object p1, p0, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity$1;->this$0:Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/settings/DownloadSettingsActivity;->onBackPressed()V

    return-void
.end method
