.class public Lcom/gold/extension/youtube/patches/TreeNodeElementPatch;
.super Ljava/lang/Object;
.source "TreeNodeElementPatch.java"


# direct methods
.method public static synthetic $r8$lambda$QJ9eZZW6u43_4qcguxhhDJ-KTyQ()Ljava/lang/String;
    .registers 1

    .line 41
    const-string v0, "onTreeNodeResultLoaded failure"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static onComponentLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/HidePlayerFlyoutMenuPatch;->hideNativeBottomSheetFooter(Ljava/lang/String;Ljava/util/List;)V

    .line 0
    return-void
.end method

.method private static onLazilyConvertedElementLoaded(Ljava/lang/String;Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/components/VideoActionButtonsFilter;->onLazilyConvertedElementLoaded(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/components/CommentsFilter;->sanitizeCommentsCategoryBar(Ljava/lang/String;Ljava/util/List;)V

    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/LayoutReloadObserverPatch;->onLazilyConvertedElementLoaded(Ljava/lang/String;Ljava/util/List;)V

    .line 0
    return-void
.end method

.method public static onTreeNodeResultLoaded(Lcom/gold/extension/shared/patches/components/ContextInterface;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gold/extension/shared/patches/components/ContextInterface;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_45

    .line 27
    :try_start_2
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_45

    :cond_9
    const/4 v0, 0x0

    .line 30
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 31
    const-string v1, "ComponentType"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_26

    .line 32
    invoke-interface {p0}, Lcom/gold/extension/shared/patches/components/ContextInterface;->patch_getPathBuilder()Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 33
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/TreeNodeElementPatch;->onComponentLoaded(Ljava/lang/String;Ljava/util/List;)V

    return-void

    .line 34
    :cond_26
    const-string v1, "LazilyConvertedElement"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 35
    invoke-interface {p0}, Lcom/gold/extension/shared/patches/components/ContextInterface;->patch_getIdentifier()Ljava/lang/String;

    move-result-object p0

    .line 36
    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->isNotEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_45

    .line 37
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/TreeNodeElementPatch;->onLazilyConvertedElementLoaded(Ljava/lang/String;Ljava/util/List;)V
    :try_end_3b
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_3b} :catch_3c

    return-void

    :catch_3c
    move-exception p0

    .line 41
    new-instance p1, Lcom/gold/extension/youtube/patches/TreeNodeElementPatch$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/TreeNodeElementPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_45
    :goto_45
    return-void
.end method
