.class public final enum Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;
.super Ljava/lang/Enum;
.source "CustomBrandingPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/patches/CustomBrandingPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BrandingTheme"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

.field public static final enum BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

.field public static final enum CUSTOM:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

.field public static final enum DARK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

.field public static final enum LIGHT:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

.field public static final enum ORIGINAL:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

.field public static final enum PLAY:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

.field public static final enum PLAY_BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;
    .registers 7

    .line 48
    sget-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->ORIGINAL:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    sget-object v1, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->LIGHT:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    sget-object v2, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->DARK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    sget-object v3, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    sget-object v4, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->PLAY:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    sget-object v5, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->PLAY_BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    sget-object v6, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->CUSTOM:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    filled-new-array/range {v0 .. v6}, [Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$mpackageAndNameIndexToClassAlias(Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;Ljava/lang/String;I)Ljava/lang/String;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->packageAndNameIndexToClassAlias(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 50
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    const-string v1, "ORIGINAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->ORIGINAL:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    .line 51
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    const-string v1, "LIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->LIGHT:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    .line 52
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    const-string v1, "DARK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->DARK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    .line 53
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    const-string v1, "BLACK"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    .line 54
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    const-string v1, "PLAY"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->PLAY:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    .line 55
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    const-string v1, "PLAY_BLACK"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->PLAY_BLACK:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    .line 57
    new-instance v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    const-string v1, "CUSTOM"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->CUSTOM:Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    .line 48
    invoke-static {}, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->$values()[Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->$VALUES:[Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

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

    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private packageAndNameIndexToClassAlias(Ljava/lang/String;I)Ljava/lang/String;
    .registers 4

    if-lez p2, :cond_29

    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ".youtube_"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object p1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, p1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 61
    :cond_29
    const-string p0, "App index starts at index 1"

    invoke-static {p0}, Lcom/google/common/base/Utf8$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 48
    const-class v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;
    .registers 1

    .line 48
    sget-object v0, Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->$VALUES:[Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/patches/CustomBrandingPatch$BrandingTheme;

    return-object v0
.end method


# virtual methods
.method public notificationIconResourceName()Ljava/lang/String;
    .registers 3

    .line 78
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_25

    const/4 v1, 0x6

    if-eq v0, v1, :cond_22

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "youtube_notification_icon_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v1}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 80
    :cond_22
    const-string p0, "youtube_notification_icon_custom"

    return-object p0

    :cond_25
    const/4 p0, 0x0

    return-object p0
.end method
