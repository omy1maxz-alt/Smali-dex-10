.class Lcom/gold/extension/youtube/patches/utils/PlaylistPatch$1;
.super Landroid/widget/ScrollView;
.source "PlaylistPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/utils/PlaylistPatch;->saveToPlaylist(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    .line 311
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onMeasure(II)V
    .registers 4

    const/16 p2, 0x32

    .line 314
    invoke-static {p2}, Lcom/gold/extension/shared/ui/Dim;->pctHeight(I)I

    move-result p2

    const/high16 v0, -0x80000000

    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 315
    invoke-super {p0, p1, p2}, Landroid/widget/ScrollView;->onMeasure(II)V

    return-void
.end method
