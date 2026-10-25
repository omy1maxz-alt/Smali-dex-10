.class Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler;
.super Ljava/lang/Object;
.source "BaseSearchViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/search/BaseSearchViewController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PredictiveBackHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .registers 1

    .line 751
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static register(Landroid/app/Activity;Ljava/lang/Runnable;)Ljava/lang/Object;
    .registers 3

    .line 753
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;)V

    .line 754
    invoke-static {p0}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    const p1, 0xf4240

    invoke-static {p0, p1, v0}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticApiModelOutline1;->m(Landroid/window/OnBackInvokedDispatcher;ILandroid/window/OnBackInvokedCallback;)V

    return-object v0
.end method

.method public static unregister(Landroid/app/Activity;Ljava/lang/Object;)V
    .registers 3

    .line 762
    invoke-static {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler$$ExternalSyntheticApiModelOutline0;->m(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-static {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler$$ExternalSyntheticApiModelOutline1;->m(Ljava/lang/Object;)Landroid/window/OnBackInvokedCallback;

    move-result-object p1

    .line 763
    invoke-static {p0}, Lcom/gold/extension/shared/settings/BaseActivityHook$$ExternalSyntheticApiModelOutline0;->m(Landroid/app/Activity;)Landroid/window/OnBackInvokedDispatcher;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$PredictiveBackHandler$$ExternalSyntheticApiModelOutline2;->m(Landroid/window/OnBackInvokedDispatcher;Landroid/window/OnBackInvokedCallback;)V

    :cond_11
    return-void
.end method
