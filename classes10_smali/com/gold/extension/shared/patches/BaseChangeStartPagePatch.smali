.class public abstract Lcom/gold/extension/shared/patches/BaseChangeStartPagePatch;
.super Ljava/lang/Object;
.source "BaseChangeStartPagePatch.java"


# static fields
.field protected static final ACTION_MAIN:Ljava/lang/String; = "android.intent.action.MAIN"


# direct methods
.method public static synthetic $r8$lambda$b8PtS4A9nUN428c7eFoRS71sJbk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Changing browseId to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>()V
    .registers 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static processBrowseId(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    if-nez p1, :cond_3

    goto :goto_15

    :cond_3
    if-eqz p2, :cond_15

    .line 35
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_c

    goto :goto_15

    .line 39
    :cond_c
    new-instance p0, Lcom/gold/extension/shared/patches/BaseChangeStartPagePatch$$ExternalSyntheticLambda0;

    invoke-direct {p0, p3}, Lcom/gold/extension/shared/patches/BaseChangeStartPagePatch$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object p2

    :cond_15
    :goto_15
    return-object p0
.end method
