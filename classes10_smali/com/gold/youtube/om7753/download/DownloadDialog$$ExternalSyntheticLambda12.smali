.class public final synthetic Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda12;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic f$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

.field public final synthetic f$1:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/youtube/om7753/download/DownloadDialog;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda12;->f$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    iput-object p2, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda12;->f$1:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda12;->f$0:Lcom/gold/youtube/om7753/download/DownloadDialog;

    iget-object v1, p0, Lcom/gold/youtube/om7753/download/DownloadDialog$$ExternalSyntheticLambda12;->f$1:Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;

    invoke-static {v0, v1, p1, p2}, Lcom/gold/youtube/om7753/download/DownloadDialog;->$r8$lambda$cJNHL79x5aOi7OeYlS29xdXx7jg(Lcom/gold/youtube/om7753/download/DownloadDialog;Lcom/gold/youtube/om7753/streams/io/StoredFileHelper;Landroid/content/DialogInterface;I)V

    return-void
.end method
