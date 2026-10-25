.class public Lcom/gold/extension/youtube/patches/ToolBarPatch;
.super Ljava/lang/Object;
.source "ToolBarPatch.java"


# direct methods
.method public static synthetic $r8$lambda$ion5y7hhzpoki1SMVYoIQtIxgk8(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "enum: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static hookToolBar(Ljava/lang/Enum;Landroid/widget/ImageView;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Enum<",
            "*>;",
            "Landroid/widget/ImageView;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_1b

    .line 22
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_1b

    check-cast v0, Landroid/view/View;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    .line 24
    new-instance v1, Lcom/gold/extension/youtube/patches/ToolBarPatch$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gold/extension/youtube/patches/ToolBarPatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 25
    invoke-static {p0, v0, p1}, Lcom/gold/extension/youtube/patches/ToolBarPatch;->hookToolBar(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V

    :cond_1b
    return-void
.end method

.method private static hookToolBar(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->setToolbarSettingsOnClickListener(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->hideChatButton(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->hideSearchButton(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->hideNotificationButton(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V

    invoke-static {p0, p1, p2}, Lcom/gold/extension/youtube/patches/NavigationBarPatch;->hideCreateButton(Ljava/lang/String;Landroid/view/View;Landroid/widget/ImageView;)V

    .line 0
    return-void
.end method
