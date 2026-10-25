.class public final enum Lcom/gold/extension/shared/spoof/ClientType;
.super Ljava/lang/Enum;
.source "ClientType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gold/extension/shared/spoof/ClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum ANDROID_CREATOR:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum ANDROID_MUSIC_NO_SDK:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum ANDROID_REEL_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum ANDROID_REEL_NO_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum ANDROID_VR_1_64:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum ANDROID_VR_1_65:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum GET_CHANNEL_FROM_ID:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum SAVE_TO_WATCH_LATER:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum TV:Lcom/gold/extension/shared/spoof/ClientType;

.field public static final enum VISIONOS:Lcom/gold/extension/shared/spoof/ClientType;


# instance fields
.field public final androidSdkVersion:Ljava/lang/String;

.field public final buildID:Ljava/lang/String;

.field public final canLogin:Z

.field public final clientName:Ljava/lang/String;

.field public final clientPlatform:Ljava/lang/String;

.field public final clientVersion:Ljava/lang/String;

.field public final deviceMake:Ljava/lang/String;

.field public final deviceModel:Ljava/lang/String;

.field public final endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

.field public final friendlyName:Ljava/lang/String;

.field public final id:I

.field public final osName:Ljava/lang/String;

.field public final osVersion:Ljava/lang/String;

.field private final packageName:Ljava/lang/String;

.field public final requireJS:Z

.field public final requireLogin:Z

.field public final supportsMultiAudioTracks:Z

.field public final supportsOAuth2:Z

.field public final userAgent:Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$TLt50lmAogmR-snOFaNmePpyIMc(Lcom/gold/extension/shared/spoof/ClientType;)Ljava/lang/String;
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/spoof/ClientType;->lambda$new$0()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic $values()[Lcom/gold/extension/shared/spoof/ClientType;
    .registers 10

    .line 28
    sget-object v0, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v1, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_NO_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v2, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_MUSIC_NO_SDK:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v3, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_65:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v4, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_64:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v5, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_CREATOR:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v6, Lcom/gold/extension/shared/spoof/ClientType;->TV:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v7, Lcom/gold/extension/shared/spoof/ClientType;->VISIONOS:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v8, Lcom/gold/extension/shared/spoof/ClientType;->GET_CHANNEL_FROM_ID:Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v9, Lcom/gold/extension/shared/spoof/ClientType;->SAVE_TO_WATCH_LATER:Lcom/gold/extension/shared/spoof/ClientType;

    filled-new-array/range {v0 .. v9}, [Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 45

    .line 35
    new-instance v0, Lcom/gold/extension/shared/spoof/ClientType;

    sget-object v6, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sget-object v9, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 43
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v10

    sget-object v11, Landroid/os/Build;->ID:Ljava/lang/String;

    sget-boolean v14, Lcom/gold/extension/shared/patches/AppCheckPatch;->IS_YOUTUBE:Z

    sget-object v19, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_REEL_STREAMING_DATA:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    const-string v20, "Android Reel auth"

    const-string v1, "ANDROID_REEL_AUTH"

    const/4 v2, 0x0

    const/4 v3, 0x3

    const-string v4, "ANDROID"

    const-string v5, "com.google.android.youtube"

    const-string v8, "Android"

    const-string v12, "20.26.46"

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    const/16 v18, 0x0

    move v15, v14

    invoke-direct/range {v0 .. v20}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    sput-object v0, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    .line 60
    new-instance v10, Lcom/gold/extension/shared/spoof/ClientType;

    iget v13, v0, Lcom/gold/extension/shared/spoof/ClientType;->id:I

    iget-object v14, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientName:Ljava/lang/String;

    iget-object v15, v0, Lcom/gold/extension/shared/spoof/ClientType;->packageName:Ljava/lang/String;

    .line 63
    invoke-static {v15}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/gold/extension/shared/spoof/ClientType;->deviceMake:Ljava/lang/String;

    iget-object v2, v0, Lcom/gold/extension/shared/spoof/ClientType;->deviceModel:Ljava/lang/String;

    iget-object v3, v0, Lcom/gold/extension/shared/spoof/ClientType;->osName:Ljava/lang/String;

    iget-object v4, v0, Lcom/gold/extension/shared/spoof/ClientType;->osVersion:Ljava/lang/String;

    iget-object v5, v0, Lcom/gold/extension/shared/spoof/ClientType;->androidSdkVersion:Ljava/lang/String;

    .line 68
    invoke-static {v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v6, v0, Lcom/gold/extension/shared/spoof/ClientType;->buildID:Ljava/lang/String;

    iget-object v7, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientVersion:Ljava/lang/String;

    iget-object v8, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientPlatform:Ljava/lang/String;

    iget-boolean v11, v0, Lcom/gold/extension/shared/spoof/ClientType;->supportsMultiAudioTracks:Z

    iget-boolean v12, v0, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    move-object/from16 v16, v1

    iget-boolean v1, v0, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    move/from16 v28, v1

    iget-object v1, v0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    const-string v30, "Android Reel no auth"

    move/from16 v26, v11

    const-string v11, "ANDROID_REEL_NO_AUTH"

    move/from16 v27, v12

    const/4 v12, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v29, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    invoke-direct/range {v10 .. v30}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    sput-object v10, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_REEL_NO_AUTH:Lcom/gold/extension/shared/spoof/ClientType;

    .line 85
    new-instance v11, Lcom/gold/extension/shared/spoof/ClientType;

    iget-object v1, v0, Lcom/gold/extension/shared/spoof/ClientType;->deviceMake:Ljava/lang/String;

    iget-object v2, v0, Lcom/gold/extension/shared/spoof/ClientType;->deviceModel:Ljava/lang/String;

    iget-object v3, v0, Lcom/gold/extension/shared/spoof/ClientType;->osName:Ljava/lang/String;

    iget-object v4, v0, Lcom/gold/extension/shared/spoof/ClientType;->osVersion:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.google.android.apps.youtube.music/7.12.52 (Linux; U; Android "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ") gzip"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    sget-boolean v23, Lcom/gold/extension/shared/patches/AppCheckPatch;->IS_YOUTUBE_MUSIC:Z

    sget-object v41, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_PLAYER_STREAMING_DATA:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    const-string v29, "Android Music No SDK"

    const-string v12, "ANDROID_MUSIC_NO_SDK"

    const/4 v13, 0x2

    const/16 v14, 0x15

    const-string v15, "ANDROID_MUSIC"

    const-string v20, "7.12.52"

    const/16 v21, 0x0

    const/16 v24, 0x1

    const/16 v26, 0x0

    const/16 v27, 0x0

    move-object/from16 v16, v1

    move-object/from16 v17, v2

    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v28, v41

    invoke-direct/range {v11 .. v29}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    sput-object v11, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_MUSIC_NO_SDK:Lcom/gold/extension/shared/spoof/ClientType;

    .line 109
    new-instance v24, Lcom/gold/extension/shared/spoof/ClientType;

    const/16 v42, 0x0

    const-string v44, "Android VR 1.65"

    const-string v25, "ANDROID_VR_1_65"

    const/16 v26, 0x3

    const/16 v27, 0x1c

    const-string v28, "ANDROID_VR"

    const-string v29, "com.google.android.apps.youtube.vr.oculus"

    const-string v30, "Oculus"

    const-string v31, "Quest 3"

    const-string v32, "Android"

    const-string v33, "14"

    const-string v34, "34"

    const-string v35, "UP1A.231005.007.A1"

    const-string v36, "1.65.10"

    const/16 v37, 0x0

    const/16 v38, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    move-object/from16 v43, v41

    const/16 v41, 0x1

    invoke-direct/range {v24 .. v44}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    move-object/from16 v1, v24

    move-object/from16 v41, v43

    sput-object v1, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_65:Lcom/gold/extension/shared/spoof/ClientType;

    .line 134
    new-instance v2, Lcom/gold/extension/shared/spoof/ClientType;

    iget v5, v1, Lcom/gold/extension/shared/spoof/ClientType;->id:I

    iget-object v6, v1, Lcom/gold/extension/shared/spoof/ClientType;->clientName:Ljava/lang/String;

    iget-object v7, v1, Lcom/gold/extension/shared/spoof/ClientType;->packageName:Ljava/lang/String;

    .line 137
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v1, Lcom/gold/extension/shared/spoof/ClientType;->deviceMake:Ljava/lang/String;

    iget-object v10, v1, Lcom/gold/extension/shared/spoof/ClientType;->osName:Ljava/lang/String;

    iget-object v15, v1, Lcom/gold/extension/shared/spoof/ClientType;->clientPlatform:Ljava/lang/String;

    iget-boolean v3, v1, Lcom/gold/extension/shared/spoof/ClientType;->canLogin:Z

    iget-boolean v4, v1, Lcom/gold/extension/shared/spoof/ClientType;->requireLogin:Z

    iget-boolean v9, v1, Lcom/gold/extension/shared/spoof/ClientType;->supportsMultiAudioTracks:Z

    iget-boolean v11, v1, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    iget-boolean v12, v1, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    iget-object v1, v1, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    const-string v22, "Android VR 1.64"

    move/from16 v16, v3

    const-string v3, "ANDROID_VR_1_64"

    move/from16 v17, v4

    const/4 v4, 0x4

    move/from16 v18, v9

    const-string v9, "Quest"

    move/from16 v19, v11

    const-string v11, "10"

    move/from16 v20, v12

    const-string v12, "29"

    const-string v13, "QQ3A.200805.001"

    const-string v14, "1.64.34"

    move-object/from16 v21, v1

    invoke-direct/range {v2 .. v22}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    sput-object v2, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_VR_1_64:Lcom/gold/extension/shared/spoof/ClientType;

    .line 160
    new-instance v24, Lcom/gold/extension/shared/spoof/ClientType;

    const-string v44, "Android Studio"

    const-string v25, "ANDROID_CREATOR"

    const/16 v26, 0x5

    const/16 v27, 0xe

    const-string v28, "ANDROID_CREATOR"

    const-string v29, "com.google.android.apps.youtube.creator"

    const-string v30, "Google"

    const-string v31, "Pixel 10 Pro XL"

    const-string v32, "Android"

    const-string v33, "16"

    const-string v34, "36"

    const-string v35, "BD3A.251005.003.W3"

    const-string v36, "26.10.000"

    const/16 v38, 0x1

    const/16 v39, 0x1

    const/16 v41, 0x0

    invoke-direct/range {v24 .. v44}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    move-object/from16 v41, v43

    sput-object v24, Lcom/gold/extension/shared/spoof/ClientType;->ANDROID_CREATOR:Lcom/gold/extension/shared/spoof/ClientType;

    .line 185
    new-instance v24, Lcom/gold/extension/shared/spoof/ClientType;

    const/16 v40, 0x1

    const-string v42, "TV"

    const-string v25, "TV"

    const/16 v26, 0x6

    const/16 v27, 0x7

    const-string v28, "TVHTML5"

    const-string v29, "Samsung"

    const-string v30, "SmartTV"

    const-string v31, "Tizen"

    const-string v32, "2.4.0"

    const-string v33, "5.20150304"

    const-string v34, "TV"

    const-string v35, "Mozilla/5.0 (SMART-TV; Linux; Tizen 2.4.0) AppleWebKit/538.1 (KHTML, like Gecko) Version/2.4.0 TV Safari/538.1"

    const/16 v36, 0x1

    const/16 v37, 0x0

    const/16 v39, 0x0

    invoke-direct/range {v24 .. v42}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    sput-object v24, Lcom/gold/extension/shared/spoof/ClientType;->TV:Lcom/gold/extension/shared/spoof/ClientType;

    .line 206
    new-instance v24, Lcom/gold/extension/shared/spoof/ClientType;

    const/16 v40, 0x0

    const-string v42, "visionOS"

    const-string v25, "VISIONOS"

    const/16 v26, 0x7

    const/16 v27, 0x65

    const-string v28, "VISIONOS"

    const-string v29, "Apple"

    const-string v30, "RealityDevice14,1"

    const-string v31, "visionOS"

    const-string v32, "1.3.21O771"

    const-string v33, "0.1"

    const/16 v34, 0x0

    const-string v35, "Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/18.0 Safari/605.1.15"

    const/16 v36, 0x0

    const/16 v38, 0x0

    invoke-direct/range {v24 .. v42}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    sput-object v24, Lcom/gold/extension/shared/spoof/ClientType;->VISIONOS:Lcom/gold/extension/shared/spoof/ClientType;

    .line 223
    new-instance v1, Lcom/gold/extension/shared/spoof/ClientType;

    iget v4, v0, Lcom/gold/extension/shared/spoof/ClientType;->id:I

    iget-object v5, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientName:Ljava/lang/String;

    iget-object v6, v0, Lcom/gold/extension/shared/spoof/ClientType;->packageName:Ljava/lang/String;

    .line 226
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v7, v0, Lcom/gold/extension/shared/spoof/ClientType;->deviceMake:Ljava/lang/String;

    iget-object v8, v0, Lcom/gold/extension/shared/spoof/ClientType;->deviceModel:Ljava/lang/String;

    iget-object v9, v0, Lcom/gold/extension/shared/spoof/ClientType;->osName:Ljava/lang/String;

    iget-object v10, v0, Lcom/gold/extension/shared/spoof/ClientType;->osVersion:Ljava/lang/String;

    iget-object v11, v0, Lcom/gold/extension/shared/spoof/ClientType;->androidSdkVersion:Ljava/lang/String;

    .line 231
    invoke-static {v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v12, v0, Lcom/gold/extension/shared/spoof/ClientType;->buildID:Ljava/lang/String;

    iget-object v13, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientVersion:Ljava/lang/String;

    iget-object v14, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientPlatform:Ljava/lang/String;

    iget-boolean v2, v0, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    iget-boolean v3, v0, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    sget-object v20, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->GET_CHANNEL_FROM_ID:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    const-string v21, "Get Channel From ID"

    move/from16 v18, v2

    const-string v2, "GET_CHANNEL_FROM_ID"

    move/from16 v19, v3

    const/16 v3, 0x8

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-direct/range {v1 .. v21}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    sput-object v1, Lcom/gold/extension/shared/spoof/ClientType;->GET_CHANNEL_FROM_ID:Lcom/gold/extension/shared/spoof/ClientType;

    .line 243
    new-instance v2, Lcom/gold/extension/shared/spoof/ClientType;

    iget v5, v0, Lcom/gold/extension/shared/spoof/ClientType;->id:I

    iget-object v6, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientName:Ljava/lang/String;

    iget-object v7, v0, Lcom/gold/extension/shared/spoof/ClientType;->packageName:Ljava/lang/String;

    .line 246
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v8, v0, Lcom/gold/extension/shared/spoof/ClientType;->deviceMake:Ljava/lang/String;

    iget-object v9, v0, Lcom/gold/extension/shared/spoof/ClientType;->deviceModel:Ljava/lang/String;

    iget-object v10, v0, Lcom/gold/extension/shared/spoof/ClientType;->osName:Ljava/lang/String;

    iget-object v11, v0, Lcom/gold/extension/shared/spoof/ClientType;->osVersion:Ljava/lang/String;

    iget-object v12, v0, Lcom/gold/extension/shared/spoof/ClientType;->androidSdkVersion:Ljava/lang/String;

    .line 251
    invoke-static {v12}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v13, v0, Lcom/gold/extension/shared/spoof/ClientType;->buildID:Ljava/lang/String;

    iget-object v14, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientVersion:Ljava/lang/String;

    iget-object v15, v0, Lcom/gold/extension/shared/spoof/ClientType;->clientPlatform:Ljava/lang/String;

    iget-boolean v1, v0, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    iget-boolean v0, v0, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    sget-object v21, Lcom/gold/extension/shared/spoof/requests/PlayerRoutes;->SEND_SAVE_VIDEO_TO_WATCH_LATER:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    const-string v22, "Save To Watch Later"

    const-string v3, "SAVE_TO_WATCH_LATER"

    const/16 v4, 0x9

    const/16 v16, 0x1

    const/16 v17, 0x1

    const/16 v18, 0x0

    move/from16 v20, v0

    move/from16 v19, v1

    invoke-direct/range {v2 .. v22}, Lcom/gold/extension/shared/spoof/ClientType;-><init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V

    sput-object v2, Lcom/gold/extension/shared/spoof/ClientType;->SAVE_TO_WATCH_LATER:Lcom/gold/extension/shared/spoof/ClientType;

    .line 28
    invoke-static {}, Lcom/gold/extension/shared/spoof/ClientType;->$values()[Lcom/gold/extension/shared/spoof/ClientType;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/shared/spoof/ClientType;->$VALUES:[Lcom/gold/extension/shared/spoof/ClientType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V
    .registers 22
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
            null,
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
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Lcom/gold/extension/shared/requests/Route$CompiledRoute;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 381
    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 382
    iput p3, p0, Lcom/gold/extension/shared/spoof/ClientType;->id:I

    .line 383
    iput-object p4, p0, Lcom/gold/extension/shared/spoof/ClientType;->clientName:Ljava/lang/String;

    .line 384
    iput-object p5, p0, Lcom/gold/extension/shared/spoof/ClientType;->packageName:Ljava/lang/String;

    .line 385
    iput-object p6, p0, Lcom/gold/extension/shared/spoof/ClientType;->deviceMake:Ljava/lang/String;

    .line 386
    iput-object p7, p0, Lcom/gold/extension/shared/spoof/ClientType;->deviceModel:Ljava/lang/String;

    .line 387
    iput-object p8, p0, Lcom/gold/extension/shared/spoof/ClientType;->osName:Ljava/lang/String;

    .line 388
    iput-object p9, p0, Lcom/gold/extension/shared/spoof/ClientType;->osVersion:Ljava/lang/String;

    .line 389
    iput-object p10, p0, Lcom/gold/extension/shared/spoof/ClientType;->androidSdkVersion:Ljava/lang/String;

    .line 390
    iput-object p11, p0, Lcom/gold/extension/shared/spoof/ClientType;->buildID:Ljava/lang/String;

    .line 391
    iput-object p12, p0, Lcom/gold/extension/shared/spoof/ClientType;->clientVersion:Ljava/lang/String;

    .line 392
    iput-object p13, p0, Lcom/gold/extension/shared/spoof/ClientType;->clientPlatform:Ljava/lang/String;

    .line 393
    iput-boolean p14, p0, Lcom/gold/extension/shared/spoof/ClientType;->canLogin:Z

    move/from16 p4, p15

    .line 394
    iput-boolean p4, p0, Lcom/gold/extension/shared/spoof/ClientType;->requireLogin:Z

    move/from16 p4, p16

    .line 395
    iput-boolean p4, p0, Lcom/gold/extension/shared/spoof/ClientType;->supportsMultiAudioTracks:Z

    move/from16 p4, p17

    .line 396
    iput-boolean p4, p0, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    move/from16 p4, p18

    .line 397
    iput-boolean p4, p0, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    move-object/from16 p4, p19

    .line 398
    iput-object p4, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-object/from16 p4, p20

    .line 399
    iput-object p4, p0, Lcom/gold/extension/shared/spoof/ClientType;->friendlyName:Ljava/lang/String;

    .line 401
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p4

    .line 402
    sget-object p6, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v0, "%s/%s (Linux; U; Android %s; %s; %s; Build/%s)"

    move-object/from16 p16, p4

    move-object p13, p5

    move-object/from16 p17, p7

    move-object/from16 p15, p9

    move-object/from16 p18, p11

    move-object p14, p12

    filled-new-array/range {p13 .. p18}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p6, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/spoof/ClientType;->userAgent:Ljava/lang/String;

    .line 411
    new-instance p1, Lcom/gold/extension/shared/spoof/ClientType$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/shared/spoof/ClientType$$ExternalSyntheticLambda0;-><init>(Lcom/gold/extension/shared/spoof/ClientType;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZZZLcom/gold/extension/shared/requests/Route$CompiledRoute;Ljava/lang/String;)V
    .registers 19
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
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
            null,
            null,
            null,
            null,
            null,
            null,
            null,
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
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZZZ",
            "Lcom/gold/extension/shared/requests/Route$CompiledRoute;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 429
    invoke-direct/range {p0 .. p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 430
    iput p3, p0, Lcom/gold/extension/shared/spoof/ClientType;->id:I

    .line 431
    iput-object p4, p0, Lcom/gold/extension/shared/spoof/ClientType;->clientName:Ljava/lang/String;

    .line 432
    iput-object p5, p0, Lcom/gold/extension/shared/spoof/ClientType;->deviceMake:Ljava/lang/String;

    .line 433
    iput-object p6, p0, Lcom/gold/extension/shared/spoof/ClientType;->deviceModel:Ljava/lang/String;

    .line 434
    iput-object p7, p0, Lcom/gold/extension/shared/spoof/ClientType;->osName:Ljava/lang/String;

    .line 435
    iput-object p8, p0, Lcom/gold/extension/shared/spoof/ClientType;->osVersion:Ljava/lang/String;

    const/4 p1, 0x0

    .line 436
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/ClientType;->buildID:Ljava/lang/String;

    .line 437
    iput-object p9, p0, Lcom/gold/extension/shared/spoof/ClientType;->clientVersion:Ljava/lang/String;

    .line 438
    iput-object p10, p0, Lcom/gold/extension/shared/spoof/ClientType;->clientPlatform:Ljava/lang/String;

    .line 439
    iput-object p11, p0, Lcom/gold/extension/shared/spoof/ClientType;->userAgent:Ljava/lang/String;

    .line 440
    iput-boolean p12, p0, Lcom/gold/extension/shared/spoof/ClientType;->canLogin:Z

    .line 441
    iput-boolean p13, p0, Lcom/gold/extension/shared/spoof/ClientType;->requireLogin:Z

    .line 442
    iput-boolean p14, p0, Lcom/gold/extension/shared/spoof/ClientType;->supportsMultiAudioTracks:Z

    .line 443
    iput-boolean p15, p0, Lcom/gold/extension/shared/spoof/ClientType;->supportsOAuth2:Z

    move/from16 p2, p16

    .line 444
    iput-boolean p2, p0, Lcom/gold/extension/shared/spoof/ClientType;->requireJS:Z

    move-object/from16 p2, p17

    .line 445
    iput-object p2, p0, Lcom/gold/extension/shared/spoof/ClientType;->endpoint:Lcom/gold/extension/shared/requests/Route$CompiledRoute;

    move-object/from16 p2, p18

    .line 446
    iput-object p2, p0, Lcom/gold/extension/shared/spoof/ClientType;->friendlyName:Ljava/lang/String;

    .line 448
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/ClientType;->packageName:Ljava/lang/String;

    .line 449
    iput-object p1, p0, Lcom/gold/extension/shared/spoof/ClientType;->androidSdkVersion:Ljava/lang/String;

    return-void
.end method

.method private synthetic lambda$new$0()Ljava/lang/String;
    .registers 3

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "userAgent: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/gold/extension/shared/spoof/ClientType;->userAgent:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gold/extension/shared/spoof/ClientType;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8000
        }
        names = {
            null
        }
    .end annotation

    .line 28
    const-class v0, Lcom/gold/extension/shared/spoof/ClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/spoof/ClientType;

    return-object p0
.end method

.method public static values()[Lcom/gold/extension/shared/spoof/ClientType;
    .registers 1

    .line 28
    sget-object v0, Lcom/gold/extension/shared/spoof/ClientType;->$VALUES:[Lcom/gold/extension/shared/spoof/ClientType;

    invoke-virtual {v0}, [Lcom/gold/extension/shared/spoof/ClientType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gold/extension/shared/spoof/ClientType;

    return-object v0
.end method
