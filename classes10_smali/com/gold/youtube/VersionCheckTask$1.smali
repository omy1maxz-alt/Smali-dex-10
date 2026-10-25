.class Lcom/gold/youtube/VersionCheckTask$1;
.super Ljava/lang/Object;
.source "VersionCheckTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/gold/youtube/VersionCheckTask;


# direct methods
.method constructor <init>(Lcom/gold/youtube/VersionCheckTask;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/VersionCheckTask$1;->this$0:Lcom/gold/youtube/VersionCheckTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/VersionCheckTask$1;->this$0:Lcom/gold/youtube/VersionCheckTask;

    invoke-static {v0}, Lcom/gold/youtube/VersionCheckTask;->access$100(Lcom/gold/youtube/VersionCheckTask;)Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/gold/youtube/VersionCheckTask$1;->this$0:Lcom/gold/youtube/VersionCheckTask;

    invoke-static {v2}, Lcom/gold/youtube/VersionCheckTask;->access$000(Lcom/gold/youtube/VersionCheckTask;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
