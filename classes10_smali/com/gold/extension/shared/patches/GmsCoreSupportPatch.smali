.class public Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;
.super Ljava/lang/Object;
.source "GmsCoreSupportPatch.java"


# static fields
.field private static final BUILD_MANUFACTURER:Ljava/lang/String;

.field private static final DONT_KILL_MY_APP_MANUFACTURER_API:Lcom/gold/extension/shared/requests/Route;

.field private static volatile DONT_KILL_MY_APP_MANUFACTURER_SUPPORTED:Ljava/lang/Boolean; = null

.field private static final DONT_KILL_MY_APP_NAME_PARAMETER:Ljava/lang/String; = "?app=MicroG"

.field private static final DONT_KILL_MY_APP_URL:Ljava/lang/String; = "https://dontkillmyapp.com/"

.field private static final GMS_CORE_PACKAGE_NAME:Ljava/lang/String;

.field private static final GMS_CORE_PROVIDER:Landroid/net/Uri;


# direct methods
.method public static synthetic $r8$lambda$0F_gWkGLusG0ZEzw9FN0BBqswjI()Ljava/lang/String;
    .registers 1

    .line 146
    const-string v0, "App is mounted with root, but GmsCore patch was included"

    return-object v0
.end method

.method public static synthetic $r8$lambda$5OL6jthEP-gnGWixV54ran7o12Q()Ljava/lang/String;
    .registers 2

    .line 235
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not check if manufacturer is listed on DontKillMyApp: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->BUILD_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$B8Svc7ffQDYzyC1XG4zKxIMKxlE(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 15

    .line 110
    const-string v0, "gms_core_dialog_title"

    .line 112
    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 113
    invoke-static {p1}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 115
    invoke-static {p2}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda0;

    invoke-direct {v6, p3}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda0;-><init>(Landroid/content/DialogInterface$OnClickListener;)V

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p0

    .line 110
    invoke-static/range {v1 .. v10}, Lcom/gold/extension/shared/ui/CustomDialog;->create(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/widget/EditText;Ljava/lang/CharSequence;Ljava/lang/Runnable;Ljava/lang/Runnable;Ljava/lang/CharSequence;Ljava/lang/Runnable;Z)Landroid/util/Pair;

    move-result-object p0

    .line 123
    iget-object p0, p0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast p0, Landroid/app/Dialog;

    const/4 p1, 0x1

    .line 127
    invoke-virtual {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 130
    invoke-static {v1, p0}, Lcom/gold/extension/shared/Utils;->showDialog(Landroid/app/Activity;Landroid/app/Dialog;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BZLwD7lDsi3Z8N73Fuu8sjqyD7M()Ljava/lang/String;
    .registers 1

    .line 164
    const-string v0, "GmsCore was not found"

    return-object v0
.end method

.method public static synthetic $r8$lambda$H9VUH4PM2Ho2ST7T-LtN0kGg7Ho(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 184
    invoke-static {p0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->openGmsCoreDisableBatteryOptimizationsIntent(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$SRn13dr6x5M-xU_fe9wbrfpUFkg(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .registers 3

    .line 202
    invoke-static {p0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->openDontKillMyApp(Landroid/app/Activity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TJEcCQXQzipB0_3kaglLRlvAD5Q()Ljava/lang/String;
    .registers 1

    .line 194
    const-string v0, "GmsCore is not running in the background"

    return-object v0
.end method

.method public static synthetic $r8$lambda$UCldAMur84ksXt67EfeuYV_y_Vk()V
    .registers 5

    .line 223
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 224
    const-string v2, ""

    sget-object v3, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->DONT_KILL_MY_APP_MANUFACTURER_API:Lcom/gold/extension/shared/requests/Route;

    sget-object v4, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->BUILD_MANUFACTURER:Ljava/lang/String;

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/gold/extension/shared/requests/Requester;->getConnectionFromRoute(Ljava/lang/String;Lcom/gold/extension/shared/requests/Route;[Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v2

    const/16 v3, 0x1388

    .line 226
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setConnectTimeout(I)V

    .line 227
    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setReadTimeout(I)V

    .line 229
    invoke-virtual {v2}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    const/16 v3, 0xc8

    if-ne v2, v3, :cond_24

    const/4 v2, 0x1

    goto :goto_25

    :cond_24
    const/4 v2, 0x0

    .line 230
    :goto_25
    new-instance v3, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda3;

    invoke-direct {v3, v2, v0, v1}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda3;-><init>(ZJ)V

    invoke-static {v3}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 233
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->DONT_KILL_MY_APP_MANUFACTURER_SUPPORTED:Ljava/lang/Boolean;
    :try_end_33
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_33} :catch_34

    return-void

    :catch_34
    move-exception v0

    .line 235
    new-instance v1, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda4;-><init>()V

    invoke-static {v1, v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Exception;)V

    const/4 v0, 0x0

    .line 237
    sput-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->DONT_KILL_MY_APP_MANUFACTURER_SUPPORTED:Ljava/lang/Boolean;

    return-void
.end method

.method public static synthetic $r8$lambda$bHcjq6cea0g1xVnL9Dlca2ahmQ8()Ljava/lang/String;
    .registers 1

    .line 176
    const-string v0, "Device is Android Automotive"

    return-object v0
.end method

.method public static synthetic $r8$lambda$mr3deKmOxB34h6RPZ3DNrYpeml8()Ljava/lang/String;
    .registers 1

    .line 178
    const-string v0, "GmsCore is not whitelisted from battery optimizations"

    return-object v0
.end method

.method public static synthetic $r8$lambda$o6i47Evx5Gr_Vj4lZg9lxjD0xXY()Ljava/lang/String;
    .registers 1

    .line 209
    const-string v0, "checkGmsCore failure"

    return-object v0
.end method

.method public static synthetic $r8$lambda$rX1RQlZR0PAW668k3JPsSzk6uHo(Landroid/content/DialogInterface$OnClickListener;)V
    .registers 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 116
    invoke-interface {p0, v0, v1}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$smRNJjm15_iR0pIBjVk2XsfNcnM(ZJ)Ljava/lang/String;
    .registers 6

    .line 230
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Manufacturer is "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-eqz p0, :cond_c

    const-string p0, ""

    goto :goto_e

    :cond_c
    const-string p0, "NOT "

    :goto_e
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "listed on DontKillMyApp: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->BUILD_MANUFACTURER:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " fetch took: "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 232
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p0, "ms"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$wrX9RVmQ3CkK_QeXYn5YNDsDSk8(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 83
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Opening link: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 50
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->getGmsCoreVendorGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->GMS_CORE_PACKAGE_NAME:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "content://"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->getGmsCoreVendorGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".android.gsf.gservices/prefix"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->GMS_CORE_PROVIDER:Landroid/net/Uri;

    .line 55
    new-instance v0, Lcom/gold/extension/shared/requests/Route;

    sget-object v1, Lcom/gold/extension/shared/requests/Route$Method;->GET:Lcom/gold/extension/shared/requests/Route$Method;

    const-string v2, "/api/v2/{manufacturer}.json"

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/requests/Route;-><init>(Lcom/gold/extension/shared/requests/Route$Method;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->DONT_KILL_MY_APP_MANUFACTURER_API:Lcom/gold/extension/shared/requests/Route;

    .line 59
    sget-object v0, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 60
    invoke-virtual {v0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    const-string v2, "-"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->BUILD_MANUFACTURER:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static batteryOptimizationsEnabled(Landroid/content/Context;)Z
    .registers 2

    .line 271
    const-string v0, "power"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    .line 272
    sget-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->GMS_CORE_PACKAGE_NAME:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/os/PowerManager;->isIgnoringBatteryOptimizations(Ljava/lang/String;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static checkGmsCore(Landroid/app/Activity;)V
    .registers 5

    .line 144
    :try_start_0
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->isPackageNameOriginal()Z

    move-result v0

    if-eqz v0, :cond_23

    sget-object v0, Lcom/gold/extension/shared/ResourceType;->STRING:Lcom/gold/extension/shared/ResourceType;

    const-string v1, "gms_core_dialog_title"

    invoke-static {v0, v1}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_23

    .line 146
    new-instance v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda5;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 149
    const-string v0, "Do not include \'GmsCore support\' patch with root install"

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 155
    const-string v0, "https://morphe.software"

    invoke-static {p0, v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->open(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_22
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_22} :catch_b9

    return-void

    .line 161
    :cond_23
    :try_start_23
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 162
    sget-object v1, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->GMS_CORE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_2d
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_23 .. :try_end_2d} :catch_a0
    .catch Ljava/lang/Exception; {:try_start_23 .. :try_end_2d} :catch_b9

    .line 173
    :try_start_2d
    invoke-static {p0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->isAndroidAutomotive(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 176
    new-instance v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda7;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    goto :goto_63

    .line 177
    :cond_3c
    invoke-static {p0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->batteryOptimizationsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_63

    .line 178
    new-instance v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda8;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 180
    sget-object v0, Lcom/gold/extension/shared/settings/SharedSettings;->GMS_CORE_BATTERY_OPTIMIZATION_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v0}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_63

    .line 181
    const-string v0, "gms_core_dialog_not_whitelisted_using_battery_optimizations_message"

    const-string v1, "gms_core_dialog_continue_text"

    new-instance v2, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda9;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v0, v1, v2}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->showBatteryOptimizationDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    return-void

    .line 190
    :cond_63
    :goto_63
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->GMS_CORE_PROVIDER:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v0
    :try_end_6d
    .catch Ljava/lang/Exception; {:try_start_2d .. :try_end_6d} :catch_b9

    if-nez v0, :cond_9a

    .line 194
    :try_start_6f
    new-instance v1, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda10;-><init>()V

    invoke-static {v1}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 196
    sget-object v1, Lcom/gold/extension/shared/settings/SharedSettings;->GMS_CORE_BATTERY_OPTIMIZATION_DIALOG:Lcom/gold/extension/shared/settings/BooleanSetting;

    invoke-virtual {v1}, Lcom/gold/extension/shared/settings/BooleanSetting;->get()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_9a

    .line 197
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->checkIfDontKillMyAppSupportsManufacturer()V

    .line 199
    const-string v1, "gms_core_dialog_not_whitelisted_not_allowed_in_background_message"

    const-string v2, "gms_core_dialog_open_website_text"

    new-instance v3, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda11;

    invoke-direct {v3, p0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda11;-><init>(Landroid/app/Activity;)V

    invoke-static {p0, v1, v2, v3}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->showBatteryOptimizationDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    :try_end_92
    .catchall {:try_start_6f .. :try_end_92} :catchall_93

    goto :goto_9a

    :catchall_93
    move-exception p0

    if-eqz v0, :cond_99

    .line 206
    :try_start_96
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    .line 207
    :cond_99
    throw p0

    :cond_9a
    :goto_9a
    if-eqz v0, :cond_b8

    .line 206
    invoke-virtual {v0}, Landroid/content/ContentProviderClient;->close()V

    return-void

    .line 164
    :catch_a0
    new-instance v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda6;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda6;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 167
    const-string v0, "gms_core_toast_not_installed_message"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->str(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->showToastLong(Ljava/lang/String;)V

    .line 168
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->getGmsCoreDownload()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->open(Landroid/app/Activity;Ljava/lang/String;)V
    :try_end_b8
    .catch Ljava/lang/Exception; {:try_start_96 .. :try_end_b8} :catch_b9

    :cond_b8
    return-void

    :catch_b9
    move-exception p0

    .line 209
    new-instance v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda12;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda12;-><init>()V

    invoke-static {v0, p0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;Ljava/lang/Throwable;)V

    return-void
.end method

.method private static checkIfDontKillMyAppSupportsManufacturer()V
    .registers 1

    .line 221
    new-instance v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->runOnBackgroundThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private static getGmsCoreDownload()Ljava/lang/String;
    .registers 2

    .line 281
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->getGmsCoreVendorGroupId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v1, "app.revanced"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->getGmsCoreVendorGroupId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".android.gms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 282
    :cond_25
    const-string v0, "https://morphe.software/microg"

    return-object v0
.end method

.method private static getGmsCoreVendorGroupId()Ljava/lang/String;
    .registers 1

    const-string v0, "app.revanced"

    return-object v0

    const-string v0, "app.revanced"

    return-object v0
.end method

.method private static getOriginalPackageName()Ljava/lang/String;
    .registers 1

    const-string v0, "com.google.android.youtube"

    return-object v0

    const/4 v0, 0x0

    return-object v0
.end method

.method private static isAndroidAutomotive(Landroid/content/Context;)Z
    .registers 2

    .line 276
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "android.hardware.type.automotive"

    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isPackageNameOriginal()Z
    .registers 2

    .line 77
    invoke-static {}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->getOriginalPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    .line 79
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_15

    goto :goto_17

    :cond_15
    const/4 v0, 0x0

    return v0

    :cond_17
    :goto_17
    const/4 v0, 0x1

    return v0
.end method

.method private static open(Landroid/app/Activity;Ljava/lang/String;)V
    .registers 5

    .line 83
    new-instance v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda2;

    invoke-direct {v0, p1}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printInfo(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 88
    :try_start_8
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 90
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
    :try_end_18
    .catch Ljava/net/MalformedURLException; {:try_start_8 .. :try_end_18} :catch_19

    goto :goto_25

    .line 92
    :catch_19
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.WEB_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v1, "query"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_25
    const/high16 p1, 0x10000000

    .line 95
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 96
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x0

    .line 99
    invoke-static {p0}, Ljava/lang/System;->exit(I)V

    return-void
.end method

.method private static openDontKillMyApp(Landroid/app/Activity;)V
    .registers 4

    .line 243
    sget-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->DONT_KILL_MY_APP_MANUFACTURER_SUPPORTED:Ljava/lang/Boolean;

    if-nez v0, :cond_7

    .line 251
    const-string v0, ""

    goto :goto_12

    .line 252
    :cond_7
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 253
    sget-object v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->BUILD_MANUFACTURER:Ljava/lang/String;

    goto :goto_12

    .line 256
    :cond_10
    const-string v0, "general"

    .line 259
    :goto_12
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "https://dontkillmyapp.com/"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "?app=MicroG"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->open(Landroid/app/Activity;Ljava/lang/String;)V

    return-void
.end method

.method private static openGmsCoreDisableBatteryOptimizationsIntent(Landroid/app/Activity;)V
    .registers 5
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BatteryLife"
        }
    .end annotation

    .line 215
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.REQUEST_IGNORE_BATTERY_OPTIMIZATIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 216
    sget-object v1, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch;->GMS_CORE_PACKAGE_NAME:Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "package"

    invoke-static {v3, v1, v2}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gold/extension/youtube/patches/OverrideYouTubeMusicButtonsPatch;->overrideSetData(Landroid/content/Intent;Landroid/net/Uri;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 217
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method private static showBatteryOptimizationDialog(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V
    .registers 5

    .line 108
    new-instance v0, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/gold/extension/shared/patches/GmsCoreSupportPatch$$ExternalSyntheticLambda13;-><init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnClickListener;)V

    const-wide/16 p0, 0x64

    invoke-static {v0, p0, p1}, Lcom/gold/extension/shared/Utils;->runOnMainThreadDelayed(Ljava/lang/Runnable;J)V

    return-void
.end method
