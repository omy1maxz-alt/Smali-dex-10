.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils;
.super Ljava/lang/Object;
.source "ScriptUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils$ScriptLoaderError;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static formatError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_17

    .line 42
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_17
    return-object p1
.end method

.method public static loadScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils$ScriptLoaderError;
        }
    .end annotation

    .line 18
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 26
    const-string p1, "nsigsolver/"

    .line 27
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    const-string p1, ".js"

    .line 28
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 30
    invoke-static {p0}, Lcom/gold/extension/shared/ResourceUtils;->getRawResource(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 20
    :cond_19
    new-instance p0, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils$ScriptLoaderError;

    const-string v0, "Context isn\'t available"

    .line 21
    invoke-static {p1, v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils;->formatError(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils$ScriptLoaderError;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw p0
.end method

.method public static loadScript(Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils$ScriptLoaderError;
        }
    .end annotation

    .line 34
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 35
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_9
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 36
    invoke-static {v1, p1}, Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils;->loadScript(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_9

    .line 38
    :cond_1d
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
