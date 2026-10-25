.class Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice;
.super Lcom/gold/extension/shared/checks/Check;
.source "CheckEnvironmentPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckWasPatchedOnSameDevice"
.end annotation


# direct methods
.method public static synthetic $r8$lambda$fawaF9fE8RUiDbWm8zI5AtyFNUw(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    .line 170
    const-string p0, "Device hardware signature matches current device"

    return-object p0

    .line 171
    :cond_5
    const-string p0, "Device hardware signature does not match current device"

    return-object p0
.end method

.method public static synthetic $r8$lambda$nc32zDuriKlJXy7LGR2CFo4CEC4()Ljava/lang/String;
    .registers 1

    .line 146
    const-string v0, "APK does not contain a hardware signature and cannot compare to current device"

    return-object v0
.end method

.method private constructor <init>()V
    .registers 1

    .line 141
    invoke-direct {p0}, Lcom/gold/extension/shared/checks/Check;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/checks/CheckEnvironmentPatch-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .registers 4

    .line 144
    sget-object p0, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_BOARD:Ljava/lang/String;

    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_12

    .line 146
    new-instance p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice$$ExternalSyntheticLambda0;

    invoke-direct {p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {p0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    const/4 p0, 0x0

    return-object p0

    .line 150
    :cond_12
    sget-object p0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    sget-object v0, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_BOARD:Ljava/lang/String;

    const-string v1, "BOARD"

    invoke-static {v1, p0, v0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    sget-object v0, Landroid/os/Build;->BOOTLOADER:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_BOOTLOADER:Ljava/lang/String;

    .line 151
    const-string v2, "BOOTLOADER"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_BRAND:Ljava/lang/String;

    .line 152
    const-string v2, "BRAND"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_CPU_ABI:Ljava/lang/String;

    .line 153
    const-string v2, "CPU_ABI"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->CPU_ABI2:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_CPU_ABI2:Ljava/lang/String;

    .line 154
    const-string v2, "CPU_ABI2"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_DEVICE:Ljava/lang/String;

    .line 155
    const-string v2, "DEVICE"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_DISPLAY:Ljava/lang/String;

    .line 156
    const-string v2, "DISPLAY"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_FINGERPRINT:Ljava/lang/String;

    .line 157
    const-string v2, "FINGERPRINT"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->HARDWARE:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_HARDWARE:Ljava/lang/String;

    .line 158
    const-string v2, "HARDWARE"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->HOST:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_HOST:Ljava/lang/String;

    .line 159
    const-string v2, "HOST"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_ID:Ljava/lang/String;

    .line 160
    const-string v2, "ID"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_MANUFACTURER:Ljava/lang/String;

    .line 161
    const-string v2, "MANUFACTURER"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_MODEL:Ljava/lang/String;

    .line 162
    const-string v2, "MODEL"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_PRODUCT:Ljava/lang/String;

    .line 163
    const-string v2, "PRODUCT"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->RADIO:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_RADIO:Ljava/lang/String;

    .line 164
    const-string v2, "RADIO"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->TAGS:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_TAGS:Ljava/lang/String;

    .line 165
    const-string v2, "TAGS"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_TYPE:Ljava/lang/String;

    .line 166
    const-string v2, "TYPE"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    sget-object v0, Landroid/os/Build;->USER:Ljava/lang/String;

    sget-object v1, Lcom/gold/extension/shared/checks/PatchInfo$Build;->PATCH_USER:Ljava/lang/String;

    .line 167
    const-string v2, "USER"

    invoke-static {v2, v0, v1}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;->-$$Nest$smbuildFieldEqualsHash(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    and-int/2addr p0, v0

    .line 169
    new-instance v0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckWasPatchedOnSameDevice$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 173
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public failureReason()Ljava/lang/String;
    .registers 1

    .line 178
    const-string p0, "youtube_check_environment_not_same_patching_device"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uiSortingValue()I
    .registers 1

    .line 0
    const/4 p0, 0x0

    return p0
.end method
