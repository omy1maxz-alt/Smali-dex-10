.class public final enum Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;
.super Ljava/lang/Enum;
.source "CustomBrandingPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/CustomBrandingPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NotificationIconTheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

.field public static final enum BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

.field public static final enum CUSTOM:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

.field public static final enum DARK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

.field public static final enum FOLLOW:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

.field public static final enum LIGHT:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

.field public static final enum ORIGINAL:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

.field public static final enum PLAY:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

.field public static final enum PLAY_BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;
    .registers 8

    .line 90
    sget-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->FOLLOW:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    sget-object v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->ORIGINAL:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    sget-object v2, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->LIGHT:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    sget-object v3, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->DARK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    sget-object v4, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    sget-object v5, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->PLAY:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    sget-object v6, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->PLAY_BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    sget-object v7, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->CUSTOM:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    filled-new-array/range {v0 .. v7}, [Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 92
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    const-string v1, "FOLLOW"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->FOLLOW:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 93
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->ORIGINAL:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 94
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    const-string v1, "LIGHT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->LIGHT:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 95
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    const-string v1, "DARK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->DARK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 96
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    const-string v1, "BLACK"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 97
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    const-string v1, "PLAY"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->PLAY:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 98
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    const-string v1, "PLAY_BLACK"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->PLAY_BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 100
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    const-string v1, "CUSTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->CUSTOM:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    .line 90
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->$values()[Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->$VALUES:[Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 90
    const-class v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;
    .registers 1

    .line 90
    sget-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->$VALUES:[Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    return-object v0
.end method


# virtual methods
.method public resolveNotificationBrandingTheme()Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;
    .registers 2

    .line 108
    sget-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;->FOLLOW:Lcom/gold/extension/shared/patches/CustomBrandingPatch$NotificationIconTheme;

    if-ne p0, v0, :cond_d

    .line 109
    sget-object p0, Lcom/gold/extension/shared/settings/SharedYouTubeSettings;->CUSTOM_BRANDING_ICON:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->get()Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    return-object p0

    .line 113
    :cond_d
    :try_start_d
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    move-result-object p0
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_15} :catch_16

    return-object p0

    .line 115
    :catch_16
    sget-object p0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    return-object p0
.end method
