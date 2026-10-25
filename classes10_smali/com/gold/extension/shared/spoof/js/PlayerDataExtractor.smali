.class public Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;
.super Ljava/lang/Object;
.source "PlayerDataExtractor.java"


# direct methods
.method public static synthetic $r8$lambda$-E2ljvl83mGI6Ez7KiB93mhoigw()Ljava/lang/String;
    .registers 1

    .line 101
    const-string v0, "Deobfuscation test failed"

    return-object v0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->getInstance()Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/runtime/JsRuntimeChalBaseJCP;->setPlayerJS(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->getInstance()Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->warmup()V

    .line 26
    invoke-direct {p0}, Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;->checkAllData()V

    return-void
.end method

.method private checkAllData()V
    .registers 5

    .line 92
    const-string p0, "5cNpZqIJ7ixNqU68Y7S"

    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 95
    :try_start_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 96
    new-instance v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;

    sget-object v2, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->N:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    new-instance v3, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;

    invoke-direct {v3, p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2, v3}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;-><init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 97
    new-instance v1, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;

    sget-object v2, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->SIG:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    new-instance v3, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;

    invoke-direct {v3, p0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;-><init>(Ljava/util/List;)V

    invoke-direct {v1, v2, v3}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;-><init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->getInstance()Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProvider;->bulkSolve(Ljava/util/List;)Ljava/util/List;
    :try_end_30
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_30} :catch_31

    return-void

    :catch_31
    move-exception p0

    .line 101
    new-instance v0, Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static getJsChallengeRequests(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_43

    .line 62
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_43

    .line 63
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 64
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_12
    :goto_12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_30

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_12

    .line 65
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 66
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_12

    .line 69
    :cond_30
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_43

    .line 70
    new-instance p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;

    sget-object v2, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->N:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    new-instance v3, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;

    invoke-direct {v3, v1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;-><init>(Ljava/util/List;)V

    invoke-direct {p0, v2, v3}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;-><init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;)V

    goto :goto_44

    :cond_43
    move-object p0, v0

    :goto_44
    if-eqz p1, :cond_85

    .line 75
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_85

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 77
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_55
    :goto_55
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_73

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v2, :cond_55

    .line 78
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_55

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_55

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_55

    .line 80
    :cond_73
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_85

    .line 81
    new-instance v0, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;

    sget-object p1, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->SIG:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    new-instance v2, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;

    invoke-direct {v2, v1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;-><init>(Ljava/util/List;)V

    invoke-direct {v0, p1, v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeRequest;-><init>(Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeInput;)V

    .line 85
    :cond_85
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_8f

    .line 86
    invoke-interface {p1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8f
    if-eqz v0, :cond_94

    .line 87
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_94
    return-object p1
.end method


# virtual methods
.method public bulkSigExtract(Ljava/util/List;Ljava/util/List;)Landroid/util/Pair;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 30
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {p1, p2}, Lcom/gold/extension/shared/spoof/js/PlayerDataExtractor;->getJsChallengeRequests(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 34
    invoke-static {}, Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;->getInstance()Lcom/gold/extension/shared/spoof/js/nsigsolver/impl/JsEngineChallengeProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProvider;->bulkSolve(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;

    .line 37
    invoke-virtual {v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeProviderResponse;->getResponse()Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;

    move-result-object v2

    if-nez v2, :cond_2d

    goto :goto_1a

    .line 40
    :cond_2d
    invoke-virtual {v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;->getType()Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    move-result-object v3

    .line 41
    sget-object v4, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->N:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    if-ne v3, v4, :cond_5f

    if-eqz p1, :cond_1a

    .line 42
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 43
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_41
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 44
    invoke-virtual {v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;->getOutput()Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;->getResults()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_41

    .line 47
    :cond_5f
    sget-object v4, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;->SIG:Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeType;

    if-ne v3, v4, :cond_1a

    if-eqz p2, :cond_1a

    .line 48
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1a

    .line 49
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_6f
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 50
    invoke-virtual {v2}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/JsChallengeResponse;->getOutput()Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gold/extension/shared/spoof/js/nsigsolver/provider/ChallengeOutput;->getResults()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6f

    .line 56
    :cond_8d
    new-instance p1, Landroid/util/Pair;

    invoke-direct {p1, p0, v0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p1
.end method
