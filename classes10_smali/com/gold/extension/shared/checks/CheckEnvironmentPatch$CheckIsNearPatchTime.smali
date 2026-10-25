.class Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;
.super Lcom/gold/extension/shared/checks/Check;
.source "CheckEnvironmentPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckIsNearPatchTime"
.end annotation


# static fields
.field static final INSTALL_AFTER_PATCHING_DURATION_THRESHOLD:I = 0x1b7740


# instance fields
.field durationBetweenPatchingAndInstallation:J


# direct methods
.method public static synthetic $r8$lambda$El-tCfju25TV5CjWYFgv83znz9U(Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;->lambda$check$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$w41zY6e2ZyRiQGZAHz3IHs-fKCs()Ljava/lang/String;
    .registers 1

    .line 228
    const-string v0, "Package name not found exception"

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .line 195
    invoke-direct {p0}, Lcom/gold/extension/shared/checks/Check;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/checks/CheckEnvironmentPatch-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;-><init>()V

    return-void
.end method

.method private synthetic lambda$check$0()Ljava/lang/String;
    .registers 6

    .line 216
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "App was installed/updated: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;->durationBetweenPatchingAndInstallation:J

    const-wide/32 v3, 0xea60

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, " minutes after patching"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .registers 5
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 210
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 212
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 215
    iget-wide v0, v0, Landroid/content/pm/PackageInfo;->lastUpdateTime:J

    sget-wide v2, Lcom/gold/extension/shared/checks/PatchInfo;->PATCH_TIME:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;->durationBetweenPatchingAndInstallation:J

    .line 216
    new-instance v0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 219
    iget-wide v0, p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;->durationBetweenPatchingAndInstallation:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_2b

    .line 221
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_2b
    const-wide/32 v2, 0x1b7740

    cmp-long p0, v0, v2

    if-gez p0, :cond_3e

    .line 225
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_34
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_34} :catch_35

    return-object p0

    :catch_35
    move-exception p0

    .line 228
    new-instance v0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    .line 232
    :cond_3e
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public failureReason()Ljava/lang/String;
    .registers 5

    .line 237
    iget-wide v0, p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckIsNearPatchTime;->durationBetweenPatchingAndInstallation:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-gez p0, :cond_f

    .line 240
    const-string p0, "youtube_check_environment_not_near_patch_time_invalid"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_f
    const-wide/32 v2, 0x5265c00

    .line 246
    div-long/2addr v0, v2

    const-wide/16 v2, 0x1

    cmp-long p0, v0, v2

    if-lez p0, :cond_28

    .line 248
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string v0, "youtube_check_environment_not_near_patch_time_days"

    invoke-static {v0, p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 251
    :cond_28
    const-string p0, "youtube_check_environment_not_near_patch_time"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uiSortingValue()I
    .registers 1

    .line 0
    const/16 p0, 0x64

    return p0
.end method
