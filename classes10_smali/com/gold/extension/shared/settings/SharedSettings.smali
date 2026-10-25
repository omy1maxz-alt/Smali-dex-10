.class public Lcom/gold/extension/shared/settings/SharedSettings;
.super Lcom/gold/extension/shared/settings/BaseSettings;
.source "SharedSettings.java"


# static fields
.field public static final CHECK_ENVIRONMENT_WARNINGS_ISSUED:Lcom/gold/extension/shared/settings/IntegerSetting;

.field public static final EXPERIMENTAL_APP_CONFIRMED:Lcom/gold/extension/shared/settings/StringSetting;

.field public static final GMS_CORE_BATTERY_OPTIMIZATION_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

.field public static final SHOW_MENU_ICONS:Lcom/gold/extension/shared/settings/BooleanSetting;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    .line 6
    new-instance v0, Lcom/gold/extension/shared/settings/IntegerSetting;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const-string v3, "youtube_check_environment_warnings_issued"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/gold/extension/shared/settings/IntegerSetting;-><init>(Ljava/lang/String;Ljava/lang/Integer;ZZ)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->CHECK_ENVIRONMENT_WARNINGS_ISSUED:Lcom/gold/extension/shared/settings/IntegerSetting;

    .line 9
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "youtube_show_menu_icons"

    invoke-direct {v0, v3, v2, v4}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;Z)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->SHOW_MENU_ICONS:Lcom/gold/extension/shared/settings/BooleanSetting;

    .line 11
    new-instance v0, Lcom/gold/extension/shared/settings/StringSetting;

    const-string v3, "youtube_experimental_app_target_confirmed"

    const-string v5, ""

    invoke-direct {v0, v3, v5, v1, v1}, Lcom/gold/extension/shared/settings/StringSetting;-><init>(Ljava/lang/String;Ljava/lang/String;ZZ)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->EXPERIMENTAL_APP_CONFIRMED:Lcom/gold/extension/shared/settings/StringSetting;

    .line 14
    new-instance v0, Lcom/gold/extension/shared/settings/BooleanSetting;

    const-string v1, "youtube_gms_core_battery_optimization_dialog"

    const-string v3, "youtube_gms_core_battery_optimization_dialog_user_dialog_message"

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/gold/extension/shared/settings/BooleanSetting;-><init>(Ljava/lang/String;Ljava/lang/Boolean;ZLjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->GMS_CORE_BATTERY_OPTIMIZATION_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 5
    invoke-direct {p0}, Lcom/gold/extension/shared/settings/BaseSettings;-><init>()V

    return-void
.end method
