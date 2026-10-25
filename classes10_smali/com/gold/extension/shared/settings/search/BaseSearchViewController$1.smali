.class Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;
.super Ljava/lang/Object;
.source "BaseSearchViewController.java"

# interfaces
.implements Landroid/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->setupListeners()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;


# direct methods
.method public static synthetic $r8$lambda$AYCvjpsB7MHNdvjYwEgBC9Lr4ro()Ljava/lang/String;
    .registers 1

    .line 299
    const-string v0, "onQueryTextSubmit failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$e4Q5OhGOAkrfyUw1oLVh3E9ncas(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 307
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Search query: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$uzZesQcUTcmAJttbwfqFKzgyUMc()Ljava/lang/String;
    .registers 1

    .line 311
    const-string v0, "Search is not active, skipping query processing"

    return-object v0
.end method

.method public static synthetic $r8$lambda$zjCF3BIu7_41t8n1uCIIrsp4Yog()Ljava/lang/String;
    .registers 1

    .line 325
    const-string v0, "onQueryTextChange failure"

    return-object v0
.end method

.method public constructor <init>(Lcom/gold/extension/shared/settings/search/BaseSearchViewController;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 290
    iput-object p1, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;->this$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueryTextChange(Ljava/lang/String;)Z
    .registers 5

    const/4 v0, 0x1

    .line 307
    :try_start_1
    new-instance v1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 309
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 310
    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;->this$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    iget-boolean v2, v2, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->isSearchActive:Z

    if-nez v2, :cond_1e

    .line 311
    new-instance p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1$$ExternalSyntheticLambda2;

    invoke-direct {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return v0

    :catch_1c
    move-exception p0

    goto :goto_38

    .line 315
    :cond_1e
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_22} :catch_1c

    .line 321
    iget-object v2, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;->this$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    if-eqz v1, :cond_2f

    .line 317
    :try_start_26
    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->hideSearchResults()V

    .line 318
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;->this$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->showSearchHistory()V

    goto :goto_40

    .line 321
    :cond_2f
    invoke-virtual {v2}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->hideSearchHistory()V

    .line 322
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;->this$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->filterAndShowResults(Ljava/lang/String;)V
    :try_end_37
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_37} :catch_1c

    goto :goto_40

    .line 325
    :goto_38
    new-instance p1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :goto_40
    return v0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .registers 3

    .line 294
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 295
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 296
    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1;->this$0:Lcom/gold/extension/shared/settings/search/BaseSearchViewController;

    iget-object p0, p0, Lcom/gold/extension/shared/settings/search/BaseSearchViewController;->searchHistoryManager:Lcom/gold/extension/shared/settings/search/SearchHistoryManager;

    invoke-virtual {p0, p1}, Lcom/gold/extension/shared/settings/search/SearchHistoryManager;->saveSearchQuery(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_11} :catch_12

    goto :goto_1b

    :catch_12
    move-exception p0

    .line 299
    new-instance p1, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/gold/extension/shared/settings/search/BaseSearchViewController$1$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    :cond_1b
    :goto_1b
    const/4 p0, 0x0

    return p0
.end method
