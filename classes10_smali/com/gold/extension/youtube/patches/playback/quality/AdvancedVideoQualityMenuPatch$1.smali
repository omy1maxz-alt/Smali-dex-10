.class Lcom/gold/extension/youtube/patches/playback/quality/AdvancedVideoQualityMenuPatch$1;
.super Ljava/lang/Object;
.source "AdvancedVideoQualityMenuPatch.java"

# interfaces
.implements Landroid/view/ViewGroup$OnHierarchyChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/youtube/patches/playback/quality/AdvancedVideoQualityMenuPatch;->addVideoQualityListMenuListener(Landroid/widget/ListView;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic val$listView:Landroid/widget/ListView;


# direct methods
.method public static synthetic $r8$lambda$eLX35qImDvPmEC3NLb9j1EExtlY()Ljava/lang/String;
    .registers 1

    .line 80
    const-string v0, "showAdvancedVideoQualityMenu failure"

    return-object v0
.end method

.method public constructor <init>(Landroid/widget/ListView;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 67
    iput-object p1, p0, Lcom/gold/extension/youtube/patches/playback/quality/AdvancedVideoQualityMenuPatch$1;->val$listView:Landroid/widget/ListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChildViewAdded(Landroid/view/View;Landroid/view/View;)V
    .registers 5

    const/16 v0, 0x8

    .line 71
    :try_start_2
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 74
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/playback/quality/AdvancedVideoQualityMenuPatch$1;->val$listView:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result p1

    const/4 p2, 0x4

    if-eq p1, p2, :cond_f

    return-void

    .line 76
    :cond_f
    iget-object p1, p0, Lcom/gold/extension/youtube/patches/playback/quality/AdvancedVideoQualityMenuPatch$1;->val$listView:Landroid/widget/ListView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setSoundEffectsEnabled(Z)V

    .line 78
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/playback/quality/AdvancedVideoQualityMenuPatch$1;->val$listView:Landroid/widget/ListView;

    const/4 p1, 0x0

    const-wide/16 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v1}, Landroid/widget/AdapterView;->performItemClick(Landroid/view/View;IJ)Z
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_1d} :catch_1e

    return-void

    :catch_1e
    move-exception p0

    .line 80
    new-instance p1, Lcom/gold/extension/youtube/patches/playback/quality/AdvancedVideoQualityMenuPatch$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/playback/quality/AdvancedVideoQualityMenuPatch$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onChildViewRemoved(Landroid/view/View;Landroid/view/View;)V
    .registers 3

    .line 0
    return-void
.end method
