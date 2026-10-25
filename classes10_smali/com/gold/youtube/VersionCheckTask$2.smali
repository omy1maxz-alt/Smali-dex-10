.class Lcom/gold/youtube/VersionCheckTask$2;
.super Ljava/lang/Object;
.source "VersionCheckTask.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/gold/youtube/VersionCheckTask;


# direct methods
.method constructor <init>(Lcom/gold/youtube/VersionCheckTask;)V
    .registers 2

    iput-object p1, p0, Lcom/gold/youtube/VersionCheckTask$2;->this$0:Lcom/gold/youtube/VersionCheckTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    iget-object v0, p0, Lcom/gold/youtube/VersionCheckTask$2;->this$0:Lcom/gold/youtube/VersionCheckTask;

    iget-object v0, v0, Lcom/gold/youtube/VersionCheckTask;->context:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
