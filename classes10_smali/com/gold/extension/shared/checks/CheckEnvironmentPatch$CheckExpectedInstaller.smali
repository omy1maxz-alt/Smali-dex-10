.class Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;
.super Lcom/gold/extension/shared/checks/Check;
.source "CheckEnvironmentPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/checks/CheckEnvironmentPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CheckExpectedInstaller"
.end annotation


# instance fields
.field installerFound:Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$InstallationType;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$5QK2RClhy9AdlzELtcBCNNHNNrQ(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Installed by: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$TByPsGGhdzjjn_kN-YkpfdQrsw4(Z)Ljava/lang/String;
    .registers 1

    if-eqz p0, :cond_5

    .line 117
    const-string p0, "Apk was not installed from an unknown source"

    return-object p0

    .line 118
    :cond_5
    const-string p0, "Apk was installed from an unknown source"

    return-object p0
.end method

.method private constructor <init>()V
    .registers 1

    .line 99
    invoke-direct {p0}, Lcom/gold/extension/shared/checks/Check;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/gold/extension/shared/checks/CheckEnvironmentPatch-IA;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;-><init>()V

    return-void
.end method


# virtual methods
.method public check()Ljava/lang/Boolean;
    .registers 3
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 106
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 109
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getInstallerPackageName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 111
    new-instance v1, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 113
    invoke-static {v0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$InstallationType;->installTypeFromPackageName(Ljava/lang/String;)Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$InstallationType;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller;->installerFound:Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$InstallationType;

    if-eqz v0, :cond_22

    const/4 p0, 0x1

    goto :goto_23

    :cond_22
    const/4 p0, 0x0

    .line 116
    :goto_23
    new-instance v0, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/shared/checks/CheckEnvironmentPatch$CheckExpectedInstaller$$ExternalSyntheticLambda1;-><init>(Z)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 120
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public failureReason()Ljava/lang/String;
    .registers 1

    .line 125
    const-string p0, "youtube_check_environment_manager_not_expected_installer"

    invoke-static {p0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public uiSortingValue()I
    .registers 1

    .line 0
    const/16 p0, -0x64

    return p0
.end method
