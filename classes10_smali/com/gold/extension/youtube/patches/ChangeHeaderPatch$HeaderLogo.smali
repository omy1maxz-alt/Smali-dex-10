.class public final enum Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;
.super Ljava/lang/Enum;
.source "ChangeHeaderPatch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/patches/ChangeHeaderPatch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HeaderLogo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

.field public static final enum CUSTOM:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

.field public static final enum DEFAULT:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

.field public static final enum MORPHE:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

.field public static final enum PREMIUM:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

.field public static final enum REGULAR:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;


# instance fields
.field private final attributeName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final drawableName:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$7PrTi75aPgNOQ96G86oFPdbucsc(Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->lambda$getAttributeId$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$EmKliPCp6o1Pb0q-S56UJjXx5SY(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 75
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find drawable: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic $values()[Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;
    .registers 5

    .line 18
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    sget-object v1, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->REGULAR:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    sget-object v2, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->PREMIUM:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    sget-object v3, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->MORPHE:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    sget-object v4, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->CUSTOM:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    filled-new-array {v0, v1, v2, v3, v4}, [Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic -$$Nest$mgetAttributeId(Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;)Ljava/lang/Integer;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->getAttributeId()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 5

    .line 19
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string v3, "DEFAULT"

    invoke-direct {v0, v3, v1, v2, v2}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->DEFAULT:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    .line 20
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    const-string v1, "ytWordmarkHeader"

    const-string v2, "yt_ringo2_wordmark_header"

    const-string v3, "REGULAR"

    const/4 v4, 0x1

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->REGULAR:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    .line 21
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    const-string v1, "ytPremiumWordmarkHeader"

    const-string v2, "yt_ringo2_premium_wordmark_header"

    const-string v3, "PREMIUM"

    const/4 v4, 0x2

    invoke-direct {v0, v3, v4, v1, v2}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->PREMIUM:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    .line 22
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    const/4 v1, 0x3

    const-string v2, "youtube_header"

    const-string v3, "MORPHE"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->MORPHE:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    .line 23
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    const/4 v1, 0x4

    const-string v2, "youtube_header_custom"

    const-string v3, "CUSTOM"

    invoke-direct {v0, v3, v1, v2}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->CUSTOM:Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    .line 18
    invoke-static {}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->$values()[Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->$VALUES:[Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 31
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p1, p2, p3, p3}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2  # I
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 35
    iput-object p3, p0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->attributeName:Ljava/lang/String;

    .line 36
    iput-object p4, p0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->drawableName:Ljava/lang/String;

    return-void
.end method

.method private getAttributeId()Ljava/lang/Integer;
    .registers 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 44
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->attributeName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 48
    :cond_6
    sget-object v2, Lcom/gold/extension/shared/ResourceType;->ATTR:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v2, v0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1c

    .line 51
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo$$ExternalSyntheticLambda1;-><init>(Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 52
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HEADER_LOGO:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->resetToDefault()Ljava/lang/Object;

    return-object v1

    .line 56
    :cond_1c
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method private synthetic lambda$getAttributeId$0()Ljava/lang/String;
    .registers 3

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Could not find attribute: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->drawableName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 18
    const-class v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;
    .registers 1

    .line 18
    sget-object v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->$VALUES:[Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    invoke-virtual {v0}, [Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;

    return-object v0
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .registers 3
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 61
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->drawableName:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    return-object v1

    .line 65
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo;->drawableName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/gold/extension/shared/Utils;->isDarkModeEnabled()Z

    move-result p0

    if-eqz p0, :cond_19

    .line 66
    const-string p0, "_dark"

    goto :goto_1b

    .line 67
    :cond_19
    const-string p0, "_light"

    :goto_1b
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 69
    sget-object v0, Lcom/gold/extension/shared/ResourceType;->DRAWABLE:Lcom/gold/extension/shared/ResourceType;

    invoke-static {v0, p0}, Lcom/gold/extension/shared/ResourceUtils;->getIdentifier(Lcom/gold/extension/shared/ResourceType;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_33

    .line 71
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    .line 75
    :cond_33
    new-instance v0, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/gold/extension/youtube/patches/ChangeHeaderPatch$HeaderLogo$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/gold/extension/shared/Logger;->printException(Lcom/gold/extension/shared/Logger$LogMessage;)V

    .line 76
    sget-object p0, Lcom/gold/extension/youtube/settings/Settings;->HEADER_LOGO:Lcom/gold/extension/shared/settings/EnumSetting;

    invoke-virtual {p0}, Lcom/gold/extension/shared/settings/EnumSetting;->resetToDefault()Ljava/lang/Object;

    return-object v1
.end method
