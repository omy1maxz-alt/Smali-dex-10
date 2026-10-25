.class abstract Lcom/gold/extension/shared/checks/Check;
.super Ljava/lang/Object;
.source "Check.java"


# static fields
.field private static final NUMBER_OF_TIMES_TO_IGNORE_WARNING_BEFORE_DISABLING:I = 0x2


# direct methods
.method public static synthetic $r8$lambda$P6TYrpl4JASOWEmX9z19zHWRonQ()Ljava/lang/String;
    .registers 1

    .line 34
    const-string v0, "Debug forcing environment check warning to show"

    return-object v0
.end method

.method public static synthetic $r8$lambda$m7eqZ-DSjIcKDW7KaRn6WHFpCH8()Ljava/lang/String;
    .registers 1

    .line 46
    const-string v0, "Environment checks disabled forever"

    return-object v0
.end method

.method public constructor <init>()V
    .registers 1

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static debugAlwaysShowWarning()Z
    .registers 2

    .line 32
    sget-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->CHECK_ENVIRONMENT_WARNINGS_ISSUED:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    if-eqz v0, :cond_19

    .line 34
    new-instance v1, Lcom/gold/extension/shared/checks/Check$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/gold/extension/shared/checks/Check$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    :cond_19
    return v0
.end method

.method public static disableForever()V
    .registers 2

    .line 46
    new-instance v0, Lcom/gold/extension/shared/checks/Check$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/gold/extension/shared/checks/Check$$ExternalSyntheticLambda0;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 48
    sget-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->CHECK_ENVIRONMENT_WARNINGS_ISSUED:Lcom/gold/extension/shared/settings/IntegerSetting;

    const v1, 0x7fffffff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gold/extension/shared/settings/Setting;->save(Ljava/lang/Object;)V

    return-void
.end method

.method public static shouldRun()Z
    .registers 2

    .line 41
    sget-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->CHECK_ENVIRONMENT_WARNINGS_ISSUED:Lcom/gold/extension/shared/settings/IntegerSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/IntegerSetting;->get()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_f

    const/4 v0, 0x1

    return v0

    :cond_f
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public abstract check()Ljava/lang/Boolean;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end method

.method public abstract failureReason()Ljava/lang/String;
.end method

.method public abstract uiSortingValue()I
.end method
