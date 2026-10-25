.class public final synthetic Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/app/Activity;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Landroid/text/Spanned;

.field public final synthetic f$3:I

.field public final synthetic f$4:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;Ljava/lang/String;Landroid/text/Spanned;ILcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;)V
    .registers 6

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$0:Landroid/app/Activity;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$2:Landroid/text/Spanned;

    iput p4, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$3:I

    iput-object p5, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$4:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 5

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$0:Landroid/app/Activity;

    iget-object v1, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$2:Landroid/text/Spanned;

    iget v3, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$3:I

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$$ExternalSyntheticLambda9;->f$4:Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;

    invoke-static {v0, v1, v2, v3, p0}, Lcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch;->$r8$lambda$0bt3PTYahul1BIE9Ak_II_GgG0Y(Landroid/app/Activity;Ljava/lang/String;Landroid/text/Spanned;ILcom/gold/extension/youtube/patches/announcements/AnnouncementsPatch$Level;)V

    return-void
.end method
