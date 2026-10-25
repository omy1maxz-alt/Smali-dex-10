.class public final Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;
.super Ljava/lang/Object;
.source "CheckEnvironmentPatch.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice;,
        Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;,
        Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$InstallationType;,
        Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;
    }
.end annotation


# static fields
.field private static final DEBUG_ALWAYS_SHOW_CHECK_FAILED_DIALOG:Z


# direct methods
.method public static synthetic $r8$lambda$-3CXET-UneM4454hUkEikWWUqSg()Ljava/lang/String;
    .registers 1

    .line 273
    const-string v0, "Running environment checks"

    return-object v0
.end method

.method public static synthetic $r8$lambda$IzDk3VJz_lltEC7Jq7XXI4UiArI()Ljava/lang/String;
    .registers 1

    .line 267
    const-string v0, "Environment checks are disabled"

    return-object v0
.end method

.method public static synthetic $r8$lambda$WTsQbkFqru_HROkASKpAugXaNaM(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Hashes do not match. "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ": \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' runtimeHash: \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\' patchTimeHash: \'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Y44FTdgb-cXXxTNdUbepAQL8lZE()Ljava/lang/String;
    .registers 1

    .line 333
    const-string v0, "check failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$f_78AACe2ja0xYzM0vfe1Oq5l-E()Ljava/lang/String;
    .registers 1

    .line 353
    const-string v0, "buildFieldEqualsHash failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$fze713lERPhhRw0ysdgXm4RxDy4()V
    .registers 6

    .line 273
    :try_start_0
    new-instance v0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 276
    new-instance v1, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice;-><init>(Lcom/gold/extension/shared/checks/CheckEnvironmentPatch-IA;)V

    .line 277
    invoke-virtual {v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice;->check()Ljava/lang/Boolean;

    move-result-object v3

    if-eqz v3, :cond_2a

    .line 279
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_27

    sget-boolean v3, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->DEBUG_ALWAYS_SHOW_CHECK_FAILED_DIALOG:Z

    if-nez v3, :cond_27

    .line 282
    invoke-static {}, Lcom/gold/extension/shared/checks/Check;->disableForever()V

    return-void

    .line 286
    :cond_27
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 289
    :cond_2a
    new-instance v3, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;

    invoke-direct {v3, v2}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;-><init>(Lcom/gold/extension/shared/checks/CheckEnvironmentPatch-IA;)V

    .line 290
    invoke-virtual {v3}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;->check()Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_54

    sget-boolean v4, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->DEBUG_ALWAYS_SHOW_CHECK_FAILED_DIALOG:Z

    if-nez v4, :cond_54

    .line 294
    iget-object v4, v3, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;->installerFound:Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$InstallationType;

    sget-object v5, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$InstallationType;->MANAGER:Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$InstallationType;

    if-ne v4, v5, :cond_4a

    .line 295
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_57

    .line 298
    :cond_4a
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_57

    .line 300
    invoke-static {}, Lcom/gold/extension/shared/checks/Check;->disableForever()V

    return-void

    .line 304
    :cond_54
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 307
    :cond_57
    :goto_57
    new-instance v4, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;

    invoke-direct {v4, v2}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;-><init>(Lcom/gold/extension/shared/checks/CheckEnvironmentPatch-IA;)V

    .line 308
    invoke-virtual {v4}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;->check()Ljava/lang/Boolean;

    move-result-object v2

    .line 309
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6e

    sget-boolean v2, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->DEBUG_ALWAYS_SHOW_CHECK_FAILED_DIALOG:Z

    if-nez v2, :cond_6e

    .line 312
    invoke-static {}, Lcom/gold/extension/shared/checks/Check;->disableForever()V

    return-void

    .line 315
    :cond_6e
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 318
    sget-boolean v2, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->DEBUG_ALWAYS_SHOW_CHECK_FAILED_DIALOG:Z

    if-eqz v2, :cond_85

    const/4 v0, 0x3

    .line 320
    new-array v0, v0, [Lcom/gold/extension/shared/checks/Check;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object v4, v0, v1

    const/4 v1, 0x2

    aput-object v3, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 327
    :cond_85
    new-instance v1, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 331
    invoke-static {}, Lcom/gold/extension/shared/checks/Check;->disableForever()V
    :try_end_94
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_94} :catch_95

    return-void

    :catch_95
    move-exception v0

    .line 333
    new-instance v1, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-static {p0, p1, p2}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->buildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 54
    invoke-static {}, Lcom/gold/extension/shared/checks/Check;->debugAlwaysShowWarning()Z

    move-result v0

    sput-boolean v0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->DEBUG_ALWAYS_SHOW_CHECK_FAILED_DIALOG:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static buildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 6
    .param p2  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 340
    :try_start_0
    const-string v0, "SHA-1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 341
    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v0

    .line 344
    new-instance v1, Ljava/lang/String;

    const/4 v2, 0x2

    invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B

    move-result-object v0

    sget-object v2, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    .line 345
    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 347
    new-instance v2, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p1, v1, p2}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V
    :try_end_2a
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_2a} :catch_2b

    :cond_2a
    return v0

    :catch_2b
    move-exception p0

    .line 353
    new-instance p1, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda3;

    invoke-direct {p1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p1, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return p0
.end method

.method public static check(Landroid/app/Activity;)V
    .registers 1

    .line 266
    invoke-static {}, Lcom/gold/extension/shared/checks/Check;->shouldRun()Z

    move-result p0

    if-nez p0, :cond_13

    sget-boolean p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->DEBUG_ALWAYS_SHOW_CHECK_FAILED_DIALOG:Z

    if-nez p0, :cond_13

    .line 267
    new-instance p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 271
    :cond_13
    new-instance p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda1;

    invoke-direct {p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method
