.class final enum Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;
.super Ljava/lang/Enum;
.source "ExternalDownloaderPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Downloader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum GRAYJAY:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum LIBRETUBE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum NEWPIPE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum OTHER:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field private static final PACKAGE_TO_ENUM:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PIPEPIPE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum SEAL:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum SEAL_PLUS:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum SEAL_PREVIEW:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum TUBULAR:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

.field public static final enum YTDLNIS:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;


# instance fields
.field public final downloadUrl:Ljava/lang/String;

.field public final isPreferred:Z

.field public final name:Ljava/lang/String;

.field public final packageName:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;
    .registers 10

    .line 80
    sget-object v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->YTDLNIS:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->SEAL:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->SEAL_PREVIEW:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v3, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->SEAL_PLUS:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v4, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->GRAYJAY:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v5, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->LIBRETUBE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->NEWPIPE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v7, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->PIPEPIPE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v8, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->TUBULAR:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    sget-object v9, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->OTHER:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    filled-new-array/range {v0 .. v9}, [Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 12

    .line 81
    new-instance v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v5, "https://ytdlnis.org"

    const/4 v6, 0x1

    const-string v1, "YTDLNIS"

    const/4 v2, 0x0

    const-string v3, "YTDLnis"

    const-string v4, "com.deniscerri.ytdl"

    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->YTDLNIS:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 85
    new-instance v1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v5, "com.junkfood.seal"

    const-string v6, "https://github.com/JunkFood02/Seal/releases/latest"

    const-string v2, "SEAL"

    const/4 v3, 0x1

    const-string v4, "Seal"

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->SEAL:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 88
    new-instance v2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v6, "com.junkfood.seal.preview"

    const-string v7, "https://github.com/JunkFood02/Seal/releases"

    const-string v3, "SEAL_PREVIEW"

    const/4 v4, 0x2

    const-string v5, "Seal"

    invoke-direct/range {v2 .. v7}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->SEAL_PREVIEW:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 91
    new-instance v3, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v7, "com.maheshtechnicals.sealplus"

    const-string v8, "https://github.com/MaheshTechnicals/Sealplus/releases/latest"

    const-string v4, "SEAL_PLUS"

    const/4 v5, 0x3

    const-string v6, "Seal Plus"

    invoke-direct/range {v3 .. v8}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->SEAL_PLUS:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 94
    new-instance v4, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v8, "com.futo.platformplayer"

    const-string v9, "https://grayjay.app"

    const-string v5, "GRAYJAY"

    const/4 v6, 0x4

    const-string v7, "Grayjay"

    invoke-direct/range {v4 .. v9}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->GRAYJAY:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 97
    new-instance v5, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v9, "com.github.libretube"

    const-string v10, "https://libretube.dev"

    const-string v6, "LIBRETUBE"

    const/4 v7, 0x5

    const-string v8, "LibreTube"

    invoke-direct/range {v5 .. v10}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->LIBRETUBE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 100
    new-instance v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v10, "org.schabi.newpipe"

    const-string v11, "https://newpipe.net"

    const-string v7, "NEWPIPE"

    const/4 v8, 0x6

    const-string v9, "NewPipe"

    invoke-direct/range {v6 .. v11}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->NEWPIPE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 103
    new-instance v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v4, "InfinityLoop1309.NewPipeEnhanced"

    const-string v5, "https://pipepipe.dev"

    const-string v1, "PIPEPIPE"

    const/4 v2, 0x7

    const-string v3, "PipePipe"

    invoke-direct/range {v0 .. v5}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->PIPEPIPE:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 106
    new-instance v1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v5, "org.polymorphicshade.tubular"

    const-string v6, "https://github.com/polymorphicshade/Tubular/releases/latest"

    const-string v2, "TUBULAR"

    const/16 v3, 0x8

    const-string v4, "Tubular"

    invoke-direct/range {v1 .. v6}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->TUBULAR:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 109
    new-instance v2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    const-string v0, "youtube_external_downloader_other_item"

    invoke-static {v0}, Lcom/gold/extension/shared/StringRef;->sf(Ljava/lang/String;)Lcom/gold/extension/shared/StringRef;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/StringRef;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-string v3, "OTHER"

    const/16 v4, 0x9

    const/4 v6, 0x0

    invoke-direct/range {v2 .. v8}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    sput-object v2, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->OTHER:Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 80
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->$values()[Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->$VALUES:[Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->PACKAGE_TO_ENUM:Ljava/util/Map;

    .line 117
    invoke-static {}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->values()[Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_bd
    if-ge v2, v1, :cond_cd

    aget-object v3, v0, v2

    .line 118
    iget-object v4, v3, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->packageName:Ljava/lang/String;

    if-eqz v4, :cond_ca

    .line 120
    sget-object v5, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->PACKAGE_TO_ENUM:Ljava/util/Map;

    invoke-interface {v5, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_ca
    add-int/lit8 v2, v2, 0x1

    goto :goto_bd

    :cond_cd
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
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
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 146
    invoke-direct/range {v0 .. v6}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            null,
            null,
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
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 150
    iput-object p3, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->name:Ljava/lang/String;

    .line 151
    iput-object p4, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->packageName:Ljava/lang/String;

    .line 152
    iput-object p5, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->downloadUrl:Ljava/lang/String;

    .line 153
    iput-boolean p6, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->isPreferred:Z

    return-void
.end method

.method public static findByPackageName(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;
    .registers 2

    .line 131
    sget-object v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->PACKAGE_TO_ENUM:Ljava/util/Map;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 80
    const-class v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;
    .registers 1

    .line 80
    sget-object v0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->$VALUES:[Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;

    return-object v0
.end method


# virtual methods
.method public isInstalled()Z
    .registers 1

    .line 157
    iget-object p0, p0, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference$Downloader;->packageName:Ljava/lang/String;

    if-eqz p0, :cond_c

    invoke-static {p0}, Lcom/gold/extension/shared/settings/preference/ExternalDownloaderPreference;->-$$Nest$smisAppInstalledAndEnabled(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method
