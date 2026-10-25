.class public Lcom/gold/extension/youtube/patches/AccountCredentialsInvalidTextPatch;
.super Ljava/lang/Object;
.source "AccountCredentialsInvalidTextPatch.java"


# direct methods
.method public static synthetic $r8$lambda$KhRd2OFh50wU_Ig-sFKPTISGasw()Ljava/lang/String;
    .registers 1

    .line 21
    const-string v0, "Network is offline"

    return-object v0
.end method

.method public static synthetic $r8$lambda$eqJofXb2iE6vOtxo5MS9xanoOz4()Ljava/lang/String;
    .registers 1

    .line 23
    const-string v0, "getOfflineNetworkErrorString failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$pYvjll6N55iDzGhGc-2aHfRReyM()Ljava/lang/String;
    .registers 1

    .line 17
    const-string v0, "Network appears to be online, but app is showing offline error"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOfflineNetworkErrorString(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 16
    const-string v0, "\n"

    :try_start_2
    invoke-static {}, Lcom/gold/extension/shared/Utils;->isNetworkConnected()Z

    move-result v1

    if-eqz v1, :cond_29

    .line 17
    new-instance v1, Lcom/gold/extension/youtube/patches/AccountCredentialsInvalidTextPatch$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/AccountCredentialsInvalidTextPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "microg_offline_account_login_error"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :catch_27
    move-exception v0

    goto :goto_32

    .line 21
    :cond_29
    new-instance v0, Lcom/gold/extension/youtube/patches/AccountCredentialsInvalidTextPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/youtube/patches/AccountCredentialsInvalidTextPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_31
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_31} :catch_27

    return-object p0

    .line 23
    :goto_32
    new-instance v1, Lcom/gold/extension/youtube/patches/AccountCredentialsInvalidTextPatch$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/gold/extension/youtube/patches/AccountCredentialsInvalidTextPatch$$ExternalSyntheticLambda2;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-object p0
.end method
