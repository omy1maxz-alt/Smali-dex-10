.class final Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;
.super Ljava/lang/Object;
.source "VoiceCatalog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;
    }
.end annotation


# static fields
.field private static final ALL_VOICES:[Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

.field private static final VOICES_BY_ID:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;",
            ">;"
        }
    .end annotation
.end field

.field private static final VOICES_BY_LANG:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$Z1c14nQ8knmPqXlA8CCyXuYNCFw(Ljava/lang/String;)Ljava/util/List;
    .registers 1

    .line 461
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 319

    .line 123
    new-instance v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v1, "af-ZA-WillemNeural"

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v3, "am-ET-AmehaNeural"

    invoke-direct {v1, v2, v3}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v4, "ar-AE-HamdanNeural"

    invoke-direct {v3, v2, v4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v5, "ar-BH-AliNeural"

    invoke-direct {v4, v2, v5}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v5, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v6, "ar-DZ-IsmaelNeural"

    invoke-direct {v5, v2, v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v7, "ar-EG-ShakirNeural"

    invoke-direct {v6, v2, v7}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v7, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v8, "ar-IQ-BasselNeural"

    invoke-direct {v7, v2, v8}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v8, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v9, "ar-JO-TaimNeural"

    invoke-direct {v8, v2, v9}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v9, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v10, "ar-KW-FahedNeural"

    invoke-direct {v9, v2, v10}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v10, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v11, "ar-LB-RamiNeural"

    invoke-direct {v10, v2, v11}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v11, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v12, "ar-LY-OmarNeural"

    invoke-direct {v11, v2, v12}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v12, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v13, "ar-MA-JamalNeural"

    invoke-direct {v12, v2, v13}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v13, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v14, "ar-OM-AbdullahNeural"

    invoke-direct {v13, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v15, "ar-QA-MoazNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v16, v14

    const-string v14, "ar-SA-HamedNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v17, v15

    const-string v15, "ar-SY-LaithNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v18, v14

    const-string v14, "ar-TN-HediNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v19, v15

    const-string v15, "ar-YE-SalehNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v20, v14

    const-string v14, "az-AZ-BabekNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v21, v15

    const-string v15, "bg-BG-BorislavNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v22, v14

    const-string v14, "bn-BD-PradeepNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v23, v15

    const-string v15, "bn-IN-BashkarNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v24, v14

    const-string v14, "bs-BA-GoranNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v25, v15

    const-string v15, "ca-ES-EnricNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v26, v14

    const-string v14, "cs-CZ-AntoninNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v27, v15

    const-string v15, "cy-GB-AledNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v28, v14

    const-string v14, "da-DK-JeppeNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v29, v15

    const-string v15, "de-AT-JonasNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v30, v14

    const-string v14, "de-CH-JanNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v31, v15

    const-string v15, "de-DE-ConradNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v32, v14

    const-string v14, "de-DE-FlorianMultilingualNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v33, v15

    const-string v15, "de-DE-KillianNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v34, v14

    const-string v14, "el-GR-NestorasNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v35, v15

    const-string v15, "en-AU-WilliamMultilingualNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v36, v14

    const-string v14, "en-CA-LiamNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v37, v15

    const-string v15, "en-GB-RyanNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v38, v14

    const-string v14, "en-GB-ThomasNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v39, v15

    const-string v15, "en-HK-SamNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v40, v14

    const-string v14, "en-IE-ConnorNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v41, v15

    const-string v15, "en-IN-PrabhatNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v42, v14

    const-string v14, "en-NG-AbeoNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v43, v15

    const-string v15, "en-NZ-MitchellNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v44, v14

    const-string v14, "en-PH-JamesNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v45, v15

    const-string v15, "en-SG-WayneNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v46, v14

    const-string v14, "en-TZ-ElimuNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v47, v15

    const-string v15, "en-US-ChristopherNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v48, v14

    const-string v14, "en-US-AndrewMultilingualNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v49, v15

    const-string v15, "en-US-BrianMultilingualNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v50, v14

    const-string v14, "en-US-EricNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v51, v15

    const-string v15, "en-US-GuyNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v52, v14

    const-string v14, "en-US-RogerNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v53, v15

    const-string v15, "en-US-SteffanNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v54, v14

    const-string v14, "en-ZA-LukeNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v55, v15

    const-string v15, "es-AR-TomasNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v56, v14

    const-string v14, "es-BO-MarceloNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v57, v15

    const-string v15, "es-CL-LorenzoNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v58, v14

    const-string v14, "es-CO-GonzaloNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v59, v15

    const-string v15, "es-CR-JuanNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v60, v14

    const-string v14, "es-CU-ManuelNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v61, v15

    const-string v15, "es-DO-EmilioNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v62, v14

    const-string v14, "es-EC-LuisNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v63, v15

    const-string v15, "es-ES-AlvaroNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v64, v14

    const-string v14, "es-GQ-JavierNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v65, v15

    const-string v15, "es-GT-AndresNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v66, v14

    const-string v14, "es-HN-CarlosNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v67, v15

    const-string v15, "es-MX-JorgeNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v68, v14

    const-string v14, "es-NI-FedericoNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v69, v15

    const-string v15, "es-PA-RobertoNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v70, v14

    const-string v14, "es-PE-AlexNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v71, v15

    const-string v15, "es-PR-VictorNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v72, v14

    const-string v14, "es-PY-MarioNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v73, v15

    const-string v15, "es-SV-RodrigoNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v74, v14

    const-string v14, "es-US-AlonsoNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v75, v15

    const-string v15, "es-UY-MateoNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v76, v14

    const-string v14, "es-VE-SebastianNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v77, v15

    const-string v15, "et-EE-KertNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v78, v14

    const-string v14, "fa-IR-FaridNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v79, v15

    const-string v15, "fi-FI-HarriNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v80, v14

    const-string v14, "fil-PH-AngeloNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v81, v15

    const-string v15, "fr-BE-GerardNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v82, v14

    const-string v14, "fr-CA-AntoineNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v83, v15

    const-string v15, "fr-CA-JeanNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v84, v14

    const-string v14, "fr-CA-ThierryNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v85, v15

    const-string v15, "fr-CH-FabriceNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v86, v14

    const-string v14, "fr-FR-HenriNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v87, v15

    const-string v15, "fr-FR-RemyMultilingualNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v88, v14

    const-string v14, "ga-IE-ColmNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v89, v15

    const-string v15, "gl-ES-RoiNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v90, v14

    const-string v14, "gu-IN-NiranjanNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v91, v15

    const-string v15, "he-IL-AvriNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v92, v14

    const-string v14, "hi-IN-MadhurNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v93, v15

    const-string v15, "hr-HR-SreckoNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v94, v14

    const-string v14, "hu-HU-TamasNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v95, v15

    const-string v15, "id-ID-ArdiNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v96, v14

    const-string v14, "is-IS-GunnarNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v97, v15

    const-string v15, "it-IT-DiegoNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v98, v14

    const-string v14, "it-IT-GiuseppeMultilingualNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v99, v15

    const-string v15, "iu-Cans-CA-TaqqiqNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v100, v14

    const-string v14, "iu-Latn-CA-TaqqiqNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v101, v15

    const-string v15, "ja-JP-KeitaNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v102, v14

    const-string v14, "jv-ID-DimasNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v103, v15

    const-string v15, "ka-GE-GiorgiNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v104, v14

    const-string v14, "kk-KZ-DauletNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v105, v15

    const-string v15, "km-KH-PisethNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v106, v14

    const-string v14, "kn-IN-GaganNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v107, v15

    const-string v15, "ko-KR-HyunsuMultilingualNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v108, v14

    const-string v14, "ko-KR-InJoonNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v109, v15

    const-string v15, "lo-LA-ChanthavongNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v110, v14

    const-string v14, "lt-LT-LeonasNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v111, v15

    const-string v15, "lv-LV-NilsNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v112, v14

    const-string v14, "mk-MK-AleksandarNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v113, v15

    const-string v15, "ml-IN-MidhunNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v114, v14

    const-string v14, "mn-MN-BataaNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v115, v15

    const-string v15, "mr-IN-ManoharNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v116, v14

    const-string v14, "ms-MY-OsmanNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v117, v15

    const-string v15, "mt-MT-JosephNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v118, v14

    const-string v14, "my-MM-ThihaNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v119, v15

    const-string v15, "nb-NO-FinnNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v120, v14

    const-string v14, "ne-NP-SagarNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v121, v15

    const-string v15, "nl-BE-ArnaudNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v122, v14

    const-string v14, "nl-NL-MaartenNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v123, v15

    const-string v15, "pl-PL-MarekNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v124, v14

    const-string v14, "ps-AF-GulNawazNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v125, v15

    const-string v15, "pt-BR-AntonioNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v126, v14

    const-string v14, "pt-PT-DuarteNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v127, v15

    const-string v15, "ro-RO-EmilNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v128, v14

    const-string v14, "ru-RU-DmitryNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v129, v15

    const-string v15, "si-LK-SameeraNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v130, v14

    const-string v14, "sk-SK-LukasNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v131, v15

    const-string v15, "sl-SI-RokNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v132, v14

    const-string v14, "so-SO-MuuseNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v133, v15

    const-string v15, "sq-AL-IlirNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v134, v14

    const-string v14, "sr-RS-NicholasNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v135, v15

    const-string v15, "su-ID-JajangNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v136, v14

    const-string v14, "sv-SE-MattiasNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v137, v15

    const-string v15, "sw-KE-RafikiNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v138, v14

    const-string v14, "sw-TZ-DaudiNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v139, v15

    const-string v15, "ta-IN-ValluvarNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v140, v14

    const-string v14, "ta-LK-KumarNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v141, v15

    const-string v15, "ta-MY-SuryaNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v142, v14

    const-string v14, "ta-SG-AnbuNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v143, v15

    const-string v15, "te-IN-MohanNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v144, v14

    const-string v14, "th-TH-NiwatNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v145, v15

    const-string v15, "tr-TR-AhmetNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v146, v14

    const-string v14, "uk-UA-OstapNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v147, v15

    const-string v15, "ur-IN-SalmanNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v148, v14

    const-string v14, "ur-PK-AsadNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v149, v15

    const-string v15, "uz-UZ-SardorNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v150, v14

    const-string v14, "vi-VN-NamMinhNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v151, v15

    const-string v15, "zh-CN-YunjianNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v152, v14

    const-string v14, "zh-CN-YunxiaNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v153, v15

    const-string v15, "zh-CN-YunxiNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v154, v14

    const-string v14, "zh-CN-YunyangNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v155, v15

    const-string v15, "zh-HK-WanLungNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v156, v14

    const-string v14, "zh-TW-YunJheNeural"

    invoke-direct {v15, v2, v14}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v14, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v157, v15

    const-string v15, "zu-ZA-ThembaNeural"

    invoke-direct {v14, v2, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    const-string v2, "af-ZA-AdriNeural"

    move-object/from16 v159, v14

    const/4 v14, 0x0

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v160, v15

    const-string v15, "am-ET-MekdesNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v161, v2

    const-string v2, "ar-AE-FatimaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v162, v15

    const-string v15, "ar-BH-LailaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v163, v2

    const-string v2, "ar-DZ-AminaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v164, v15

    const-string v15, "ar-EG-SalmaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v165, v2

    const-string v2, "ar-IQ-RanaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v166, v15

    const-string v15, "ar-JO-SanaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v167, v2

    const-string v2, "ar-KW-NouraNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v168, v15

    const-string v15, "ar-LB-LaylaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v169, v2

    const-string v2, "ar-LY-ImanNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v170, v15

    const-string v15, "ar-MA-MounaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v171, v2

    const-string v2, "ar-OM-AyshaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v172, v15

    const-string v15, "ar-QA-AmalNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v173, v2

    const-string v2, "ar-SA-ZariyahNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v174, v15

    const-string v15, "ar-SY-AmanyNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v175, v2

    const-string v2, "ar-TN-ReemNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v176, v15

    const-string v15, "ar-YE-MaryamNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v177, v2

    const-string v2, "az-AZ-BanuNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v178, v15

    const-string v15, "bg-BG-KalinaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v179, v2

    const-string v2, "bn-BD-NabanitaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v180, v15

    const-string v15, "bn-IN-TanishaaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v181, v2

    const-string v2, "bs-BA-VesnaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v182, v15

    const-string v15, "ca-ES-JoanaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v183, v2

    const-string v2, "cs-CZ-VlastaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v184, v15

    const-string v15, "cy-GB-NiaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v185, v2

    const-string v2, "da-DK-ChristelNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v186, v15

    const-string v15, "de-AT-IngridNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v187, v2

    const-string v2, "de-CH-LeniNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v188, v15

    const-string v15, "de-DE-AmalaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v189, v2

    const-string v2, "de-DE-KatjaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v190, v15

    const-string v15, "de-DE-SeraphinaMultilingualNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v191, v2

    const-string v2, "el-GR-AthinaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v192, v15

    const-string v15, "en-AU-NatashaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v193, v2

    const-string v2, "en-CA-ClaraNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v194, v15

    const-string v15, "en-GB-LibbyNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v195, v2

    const-string v2, "en-GB-MaisieNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v196, v15

    const-string v15, "en-GB-SoniaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v197, v2

    const-string v2, "en-HK-YanNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v198, v15

    const-string v15, "en-IE-EmilyNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v199, v2

    const-string v2, "en-IN-NeerjaExpressiveNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v200, v15

    const-string v15, "en-KE-AsiliaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v201, v2

    const-string v2, "en-NG-EzinneNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v202, v15

    const-string v15, "en-NZ-MollyNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v203, v2

    const-string v2, "en-PH-RosaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v204, v15

    const-string v15, "en-SG-LunaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v205, v2

    const-string v2, "en-TZ-ImaniNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v206, v15

    const-string v15, "en-US-AnaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v207, v2

    const-string v2, "en-US-AriaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v208, v15

    const-string v15, "en-US-AvaMultilingualNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v209, v2

    const-string v2, "en-US-EmmaMultilingualNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v210, v15

    const-string v15, "en-US-JennyNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v211, v2

    const-string v2, "en-US-MichelleNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v212, v15

    const-string v15, "en-ZA-LeahNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v213, v2

    const-string v2, "es-AR-ElenaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v214, v15

    const-string v15, "es-BO-SofiaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v215, v2

    const-string v2, "es-CL-CatalinaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v216, v15

    const-string v15, "es-CO-SalomeNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v217, v2

    const-string v2, "es-CR-MariaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v218, v15

    const-string v15, "es-CU-BelkysNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v219, v2

    const-string v2, "es-DO-RamonaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v220, v15

    const-string v15, "es-EC-AndreaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v221, v2

    const-string v2, "es-ES-ElviraNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v222, v15

    const-string v15, "es-ES-XimenaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v223, v2

    const-string v2, "es-GQ-TeresaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v224, v15

    const-string v15, "es-GT-MartaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v225, v2

    const-string v2, "es-HN-KarlaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v226, v15

    const-string v15, "es-MX-DaliaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v227, v2

    const-string v2, "es-NI-YolandaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v228, v15

    const-string v15, "es-PA-MargaritaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v229, v2

    const-string v2, "es-PE-CamilaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v230, v15

    const-string v15, "es-PR-KarinaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v231, v2

    const-string v2, "es-PY-TaniaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v232, v15

    const-string v15, "es-SV-LorenaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v233, v2

    const-string v2, "es-US-PalomaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v234, v15

    const-string v15, "es-UY-ValentinaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v235, v2

    const-string v2, "es-VE-PaolaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v236, v15

    const-string v15, "et-EE-AnuNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v237, v2

    const-string v2, "fa-IR-DilaraNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v238, v15

    const-string v15, "fi-FI-NooraNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v239, v2

    const-string v2, "fil-PH-BlessicaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v240, v15

    const-string v15, "fr-BE-CharlineNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v241, v2

    const-string v2, "fr-CA-SylvieNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v242, v15

    const-string v15, "fr-CH-ArianeNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v243, v2

    const-string v2, "fr-FR-DeniseNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v244, v15

    const-string v15, "fr-FR-EloiseNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v245, v2

    const-string v2, "fr-FR-VivienneMultilingualNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v246, v15

    const-string v15, "ga-IE-OrlaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v247, v2

    const-string v2, "gl-ES-SabelaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v248, v15

    const-string v15, "gu-IN-DhwaniNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v249, v2

    const-string v2, "he-IL-HilaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v250, v15

    const-string v15, "hi-IN-SwaraNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v251, v2

    const-string v2, "hr-HR-GabrijelaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v252, v15

    const-string v15, "hu-HU-NoemiNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v253, v2

    const-string v2, "id-ID-GadisNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v254, v15

    const-string v15, "is-IS-GudrunNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/from16 v255, v2

    const-string v2, "it-IT-ElsaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v256, v15

    const-string v15, "it-IT-IsabellaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v257, v2

    const-string v2, "iu-Cans-CA-SiqiniqNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v258, v15

    const-string v15, "iu-Latn-CA-SiqiniqNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v259, v2

    const-string v2, "ja-JP-NanamiNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v260, v15

    const-string v15, "jv-ID-SitiNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v261, v2

    const-string v2, "ka-GE-EkaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v262, v15

    const-string v15, "kk-KZ-AigulNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v263, v2

    const-string v2, "km-KH-SreymomNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v264, v15

    const-string v15, "kn-IN-SapnaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v265, v2

    const-string v2, "ko-KR-SunHiNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v266, v15

    const-string v15, "lo-LA-KeomanyNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v267, v2

    const-string v2, "lt-LT-OnaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v268, v15

    const-string v15, "lv-LV-EveritaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v269, v2

    const-string v2, "mk-MK-MarijaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v270, v15

    const-string v15, "ml-IN-SobhanaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v271, v2

    const-string v2, "mn-MN-YesuiNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v272, v15

    const-string v15, "mr-IN-AarohiNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v273, v2

    const-string v2, "ms-MY-YasminNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v274, v15

    const-string v15, "mt-MT-GraceNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v275, v2

    const-string v2, "my-MM-NilarNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v276, v15

    const-string v15, "nb-NO-PernilleNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v277, v2

    const-string v2, "ne-NP-HemkalaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v278, v15

    const-string v15, "nl-BE-DenaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v279, v2

    const-string v2, "nl-NL-ColetteNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v280, v15

    const-string v15, "nl-NL-FennaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v281, v2

    const-string v2, "pl-PL-ZofiaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v282, v15

    const-string v15, "ps-AF-LatifaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v283, v2

    const-string v2, "pt-BR-FranciscaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v284, v15

    const-string v15, "pt-BR-ThalitaMultilingualNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v285, v2

    const-string v2, "pt-PT-RaquelNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v286, v15

    const-string v15, "ro-RO-AlinaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v287, v2

    const-string v2, "ru-RU-SvetlanaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v288, v15

    const-string v15, "si-LK-ThiliniNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v289, v2

    const-string v2, "sk-SK-ViktoriaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v290, v15

    const-string v15, "sl-SI-PetraNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v291, v2

    const-string v2, "so-SO-UbaxNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v292, v15

    const-string v15, "sq-AL-AnilaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v293, v2

    const-string v2, "sr-RS-SophieNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v294, v15

    const-string v15, "su-ID-TutiNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v295, v2

    const-string v2, "sv-SE-SofieNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v296, v15

    const-string v15, "sw-KE-ZuriNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v297, v2

    const-string v2, "sw-TZ-RehemaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v298, v15

    const-string v15, "ta-IN-PallaviNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v299, v2

    const-string v2, "ta-LK-SaranyaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v300, v15

    const-string v15, "ta-MY-KaniNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v301, v2

    const-string v2, "ta-SG-VenbaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v302, v15

    const-string v15, "te-IN-ShrutiNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v303, v2

    const-string v2, "th-TH-PremwadeeNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v304, v15

    const-string v15, "tr-TR-EmelNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v305, v2

    const-string v2, "uk-UA-PolinaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v306, v15

    const-string v15, "ur-IN-GulNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v307, v2

    const-string v2, "ur-PK-UzmaNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v308, v15

    const-string v15, "uz-UZ-MadinaNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v309, v2

    const-string v2, "vi-VN-HoaiMyNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v310, v15

    const-string v15, "zh-CN-liaoning-XiaobeiNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v311, v2

    const-string v2, "zh-CN-shaanxi-XiaoniNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v312, v15

    const-string v15, "zh-CN-XiaoxiaoNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v313, v2

    const-string v2, "zh-CN-XiaoyiNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v314, v15

    const-string v15, "zh-HK-HiuGaaiNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v315, v2

    const-string v2, "zh-HK-HiuMaanNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v316, v15

    const-string v15, "zh-TW-HsiaoChenNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v317, v2

    const-string v2, "zh-TW-HsiaoYuNeural"

    invoke-direct {v15, v14, v2}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    new-instance v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    move-object/16 v318, v15

    const-string v15, "zu-ZA-ThandoNeural"

    invoke-direct {v2, v14, v15}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;-><init>(ZLjava/lang/String;)V

    const/16 v15, 0x13c

    new-array v15, v15, [Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    aput-object v0, v15, v14

    const/16 v158, 0x1

    aput-object v1, v15, v158

    const/4 v0, 0x2

    aput-object v3, v15, v0

    const/4 v1, 0x3

    aput-object v4, v15, v1

    const/4 v1, 0x4

    aput-object v5, v15, v1

    const/4 v1, 0x5

    aput-object v6, v15, v1

    const/4 v1, 0x6

    aput-object v7, v15, v1

    const/4 v1, 0x7

    aput-object v8, v15, v1

    const/16 v1, 0x8

    aput-object v9, v15, v1

    const/16 v1, 0x9

    aput-object v10, v15, v1

    const/16 v1, 0xa

    aput-object v11, v15, v1

    const/16 v1, 0xb

    aput-object v12, v15, v1

    const/16 v1, 0xc

    aput-object v13, v15, v1

    const/16 v1, 0xd

    aput-object v16, v15, v1

    const/16 v1, 0xe

    aput-object v17, v15, v1

    const/16 v1, 0xf

    aput-object v18, v15, v1

    const/16 v1, 0x10

    aput-object v19, v15, v1

    const/16 v1, 0x11

    aput-object v20, v15, v1

    const/16 v1, 0x12

    aput-object v21, v15, v1

    const/16 v1, 0x13

    aput-object v22, v15, v1

    const/16 v1, 0x14

    aput-object v23, v15, v1

    const/16 v1, 0x15

    aput-object v24, v15, v1

    const/16 v1, 0x16

    aput-object v25, v15, v1

    const/16 v1, 0x17

    aput-object v26, v15, v1

    const/16 v1, 0x18

    aput-object v27, v15, v1

    const/16 v1, 0x19

    aput-object v28, v15, v1

    const/16 v1, 0x1a

    aput-object v29, v15, v1

    const/16 v1, 0x1b

    aput-object v30, v15, v1

    const/16 v1, 0x1c

    aput-object v31, v15, v1

    const/16 v1, 0x1d

    aput-object v32, v15, v1

    const/16 v1, 0x1e

    aput-object v33, v15, v1

    const/16 v1, 0x1f

    aput-object v34, v15, v1

    const/16 v1, 0x20

    aput-object v35, v15, v1

    const/16 v1, 0x21

    aput-object v36, v15, v1

    const/16 v1, 0x22

    aput-object v37, v15, v1

    const/16 v1, 0x23

    aput-object v38, v15, v1

    const/16 v1, 0x24

    aput-object v39, v15, v1

    const/16 v1, 0x25

    aput-object v40, v15, v1

    const/16 v1, 0x26

    aput-object v41, v15, v1

    const/16 v1, 0x27

    aput-object v42, v15, v1

    const/16 v1, 0x28

    aput-object v43, v15, v1

    const/16 v1, 0x29

    aput-object v44, v15, v1

    const/16 v1, 0x2a

    aput-object v45, v15, v1

    const/16 v1, 0x2b

    aput-object v46, v15, v1

    const/16 v1, 0x2c

    aput-object v47, v15, v1

    const/16 v1, 0x2d

    aput-object v48, v15, v1

    const/16 v1, 0x2e

    aput-object v49, v15, v1

    const/16 v1, 0x2f

    aput-object v50, v15, v1

    const/16 v1, 0x30

    aput-object v51, v15, v1

    const/16 v1, 0x31

    aput-object v52, v15, v1

    const/16 v1, 0x32

    aput-object v53, v15, v1

    const/16 v1, 0x33

    aput-object v54, v15, v1

    const/16 v1, 0x34

    aput-object v55, v15, v1

    const/16 v1, 0x35

    aput-object v56, v15, v1

    const/16 v1, 0x36

    aput-object v57, v15, v1

    const/16 v1, 0x37

    aput-object v58, v15, v1

    const/16 v1, 0x38

    aput-object v59, v15, v1

    const/16 v1, 0x39

    aput-object v60, v15, v1

    const/16 v1, 0x3a

    aput-object v61, v15, v1

    const/16 v1, 0x3b

    aput-object v62, v15, v1

    const/16 v1, 0x3c

    aput-object v63, v15, v1

    const/16 v1, 0x3d

    aput-object v64, v15, v1

    const/16 v1, 0x3e

    aput-object v65, v15, v1

    const/16 v1, 0x3f

    aput-object v66, v15, v1

    const/16 v1, 0x40

    aput-object v67, v15, v1

    const/16 v1, 0x41

    aput-object v68, v15, v1

    const/16 v1, 0x42

    aput-object v69, v15, v1

    const/16 v1, 0x43

    aput-object v70, v15, v1

    const/16 v1, 0x44

    aput-object v71, v15, v1

    const/16 v1, 0x45

    aput-object v72, v15, v1

    const/16 v1, 0x46

    aput-object v73, v15, v1

    const/16 v1, 0x47

    aput-object v74, v15, v1

    const/16 v1, 0x48

    aput-object v75, v15, v1

    const/16 v1, 0x49

    aput-object v76, v15, v1

    const/16 v1, 0x4a

    aput-object v77, v15, v1

    const/16 v1, 0x4b

    aput-object v78, v15, v1

    const/16 v1, 0x4c

    aput-object v79, v15, v1

    const/16 v1, 0x4d

    aput-object v80, v15, v1

    const/16 v1, 0x4e

    aput-object v81, v15, v1

    const/16 v1, 0x4f

    aput-object v82, v15, v1

    const/16 v1, 0x50

    aput-object v83, v15, v1

    const/16 v1, 0x51

    aput-object v84, v15, v1

    const/16 v1, 0x52

    aput-object v85, v15, v1

    const/16 v1, 0x53

    aput-object v86, v15, v1

    const/16 v1, 0x54

    aput-object v87, v15, v1

    const/16 v1, 0x55

    aput-object v88, v15, v1

    const/16 v1, 0x56

    aput-object v89, v15, v1

    const/16 v1, 0x57

    aput-object v90, v15, v1

    const/16 v1, 0x58

    aput-object v91, v15, v1

    const/16 v1, 0x59

    aput-object v92, v15, v1

    const/16 v1, 0x5a

    aput-object v93, v15, v1

    const/16 v1, 0x5b

    aput-object v94, v15, v1

    const/16 v1, 0x5c

    aput-object v95, v15, v1

    const/16 v1, 0x5d

    aput-object v96, v15, v1

    const/16 v1, 0x5e

    aput-object v97, v15, v1

    const/16 v1, 0x5f

    aput-object v98, v15, v1

    const/16 v1, 0x60

    aput-object v99, v15, v1

    const/16 v1, 0x61

    aput-object v100, v15, v1

    const/16 v1, 0x62

    aput-object v101, v15, v1

    const/16 v1, 0x63

    aput-object v102, v15, v1

    const/16 v1, 0x64

    aput-object v103, v15, v1

    const/16 v3, 0x65

    aput-object v104, v15, v3

    const/16 v3, 0x66

    aput-object v105, v15, v3

    const/16 v3, 0x67

    aput-object v106, v15, v3

    const/16 v3, 0x68

    aput-object v107, v15, v3

    const/16 v3, 0x69

    aput-object v108, v15, v3

    const/16 v3, 0x6a

    aput-object v109, v15, v3

    const/16 v3, 0x6b

    aput-object v110, v15, v3

    const/16 v3, 0x6c

    aput-object v111, v15, v3

    const/16 v3, 0x6d

    aput-object v112, v15, v3

    const/16 v3, 0x6e

    aput-object v113, v15, v3

    const/16 v3, 0x6f

    aput-object v114, v15, v3

    const/16 v3, 0x70

    aput-object v115, v15, v3

    const/16 v3, 0x71

    aput-object v116, v15, v3

    const/16 v3, 0x72

    aput-object v117, v15, v3

    const/16 v3, 0x73

    aput-object v118, v15, v3

    const/16 v3, 0x74

    aput-object v119, v15, v3

    const/16 v3, 0x75

    aput-object v120, v15, v3

    const/16 v3, 0x76

    aput-object v121, v15, v3

    const/16 v3, 0x77

    aput-object v122, v15, v3

    const/16 v3, 0x78

    aput-object v123, v15, v3

    const/16 v3, 0x79

    aput-object v124, v15, v3

    const/16 v3, 0x7a

    aput-object v125, v15, v3

    const/16 v3, 0x7b

    aput-object v126, v15, v3

    const/16 v3, 0x7c

    aput-object v127, v15, v3

    const/16 v3, 0x7d

    aput-object v128, v15, v3

    const/16 v3, 0x7e

    aput-object v129, v15, v3

    const/16 v3, 0x7f

    aput-object v130, v15, v3

    const/16 v3, 0x80

    aput-object v131, v15, v3

    const/16 v3, 0x81

    aput-object v132, v15, v3

    const/16 v3, 0x82

    aput-object v133, v15, v3

    const/16 v3, 0x83

    aput-object v134, v15, v3

    const/16 v3, 0x84

    aput-object v135, v15, v3

    const/16 v3, 0x85

    aput-object v136, v15, v3

    const/16 v3, 0x86

    aput-object v137, v15, v3

    const/16 v3, 0x87

    aput-object v138, v15, v3

    const/16 v3, 0x88

    aput-object v139, v15, v3

    const/16 v3, 0x89

    aput-object v140, v15, v3

    const/16 v3, 0x8a

    aput-object v141, v15, v3

    const/16 v3, 0x8b

    aput-object v142, v15, v3

    const/16 v3, 0x8c

    aput-object v143, v15, v3

    const/16 v3, 0x8d

    aput-object v144, v15, v3

    const/16 v3, 0x8e

    aput-object v145, v15, v3

    const/16 v3, 0x8f

    aput-object v146, v15, v3

    const/16 v3, 0x90

    aput-object v147, v15, v3

    const/16 v3, 0x91

    aput-object v148, v15, v3

    const/16 v3, 0x92

    aput-object v149, v15, v3

    const/16 v3, 0x93

    aput-object v150, v15, v3

    const/16 v3, 0x94

    aput-object v151, v15, v3

    const/16 v3, 0x95

    aput-object v152, v15, v3

    const/16 v3, 0x96

    aput-object v153, v15, v3

    const/16 v3, 0x97

    aput-object v154, v15, v3

    const/16 v3, 0x98

    aput-object v155, v15, v3

    const/16 v3, 0x99

    aput-object v156, v15, v3

    const/16 v3, 0x9a

    aput-object v157, v15, v3

    const/16 v3, 0x9b

    aput-object v159, v15, v3

    const/16 v3, 0x9c

    aput-object v160, v15, v3

    const/16 v3, 0x9d

    aput-object v161, v15, v3

    const/16 v3, 0x9e

    aput-object v162, v15, v3

    const/16 v3, 0x9f

    aput-object v163, v15, v3

    const/16 v3, 0xa0

    aput-object v164, v15, v3

    const/16 v3, 0xa1

    aput-object v165, v15, v3

    const/16 v3, 0xa2

    aput-object v166, v15, v3

    const/16 v3, 0xa3

    aput-object v167, v15, v3

    const/16 v3, 0xa4

    aput-object v168, v15, v3

    const/16 v3, 0xa5

    aput-object v169, v15, v3

    const/16 v3, 0xa6

    aput-object v170, v15, v3

    const/16 v3, 0xa7

    aput-object v171, v15, v3

    const/16 v3, 0xa8

    aput-object v172, v15, v3

    const/16 v3, 0xa9

    aput-object v173, v15, v3

    const/16 v3, 0xaa

    aput-object v174, v15, v3

    const/16 v3, 0xab

    aput-object v175, v15, v3

    const/16 v3, 0xac

    aput-object v176, v15, v3

    const/16 v3, 0xad

    aput-object v177, v15, v3

    const/16 v3, 0xae

    aput-object v178, v15, v3

    const/16 v3, 0xaf

    aput-object v179, v15, v3

    const/16 v3, 0xb0

    aput-object v180, v15, v3

    const/16 v3, 0xb1

    aput-object v181, v15, v3

    const/16 v3, 0xb2

    aput-object v182, v15, v3

    const/16 v3, 0xb3

    aput-object v183, v15, v3

    const/16 v3, 0xb4

    aput-object v184, v15, v3

    const/16 v3, 0xb5

    aput-object v185, v15, v3

    const/16 v3, 0xb6

    aput-object v186, v15, v3

    const/16 v3, 0xb7

    aput-object v187, v15, v3

    const/16 v3, 0xb8

    aput-object v188, v15, v3

    const/16 v3, 0xb9

    aput-object v189, v15, v3

    const/16 v3, 0xba

    aput-object v190, v15, v3

    const/16 v3, 0xbb

    aput-object v191, v15, v3

    const/16 v3, 0xbc

    aput-object v192, v15, v3

    const/16 v3, 0xbd

    aput-object v193, v15, v3

    const/16 v3, 0xbe

    aput-object v194, v15, v3

    const/16 v3, 0xbf

    aput-object v195, v15, v3

    const/16 v3, 0xc0

    aput-object v196, v15, v3

    const/16 v3, 0xc1

    aput-object v197, v15, v3

    const/16 v3, 0xc2

    aput-object v198, v15, v3

    const/16 v3, 0xc3

    aput-object v199, v15, v3

    const/16 v3, 0xc4

    aput-object v200, v15, v3

    const/16 v3, 0xc5

    aput-object v201, v15, v3

    const/16 v3, 0xc6

    aput-object v202, v15, v3

    const/16 v3, 0xc7

    aput-object v203, v15, v3

    const/16 v3, 0xc8

    aput-object v204, v15, v3

    const/16 v3, 0xc9

    aput-object v205, v15, v3

    const/16 v3, 0xca

    aput-object v206, v15, v3

    const/16 v3, 0xcb

    aput-object v207, v15, v3

    const/16 v3, 0xcc

    aput-object v208, v15, v3

    const/16 v3, 0xcd

    aput-object v209, v15, v3

    const/16 v3, 0xce

    aput-object v210, v15, v3

    const/16 v3, 0xcf

    aput-object v211, v15, v3

    const/16 v3, 0xd0

    aput-object v212, v15, v3

    const/16 v3, 0xd1

    aput-object v213, v15, v3

    const/16 v3, 0xd2

    aput-object v214, v15, v3

    const/16 v3, 0xd3

    aput-object v215, v15, v3

    const/16 v3, 0xd4

    aput-object v216, v15, v3

    const/16 v3, 0xd5

    aput-object v217, v15, v3

    const/16 v3, 0xd6

    aput-object v218, v15, v3

    const/16 v3, 0xd7

    aput-object v219, v15, v3

    const/16 v3, 0xd8

    aput-object v220, v15, v3

    const/16 v3, 0xd9

    aput-object v221, v15, v3

    const/16 v3, 0xda

    aput-object v222, v15, v3

    const/16 v3, 0xdb

    aput-object v223, v15, v3

    const/16 v3, 0xdc

    aput-object v224, v15, v3

    const/16 v3, 0xdd

    aput-object v225, v15, v3

    const/16 v3, 0xde

    aput-object v226, v15, v3

    const/16 v3, 0xdf

    aput-object v227, v15, v3

    const/16 v3, 0xe0

    aput-object v228, v15, v3

    const/16 v3, 0xe1

    aput-object v229, v15, v3

    const/16 v3, 0xe2

    aput-object v230, v15, v3

    const/16 v3, 0xe3

    aput-object v231, v15, v3

    const/16 v3, 0xe4

    aput-object v232, v15, v3

    const/16 v3, 0xe5

    aput-object v233, v15, v3

    const/16 v3, 0xe6

    aput-object v234, v15, v3

    const/16 v3, 0xe7

    aput-object v235, v15, v3

    const/16 v3, 0xe8

    aput-object v236, v15, v3

    const/16 v3, 0xe9

    aput-object v237, v15, v3

    const/16 v3, 0xea

    aput-object v238, v15, v3

    const/16 v3, 0xeb

    aput-object v239, v15, v3

    const/16 v3, 0xec

    aput-object v240, v15, v3

    const/16 v3, 0xed

    aput-object v241, v15, v3

    const/16 v3, 0xee

    aput-object v242, v15, v3

    const/16 v3, 0xef

    aput-object v243, v15, v3

    const/16 v3, 0xf0

    aput-object v244, v15, v3

    const/16 v3, 0xf1

    aput-object v245, v15, v3

    const/16 v3, 0xf2

    aput-object v246, v15, v3

    const/16 v3, 0xf3

    aput-object v247, v15, v3

    const/16 v3, 0xf4

    aput-object v248, v15, v3

    const/16 v3, 0xf5

    aput-object v249, v15, v3

    const/16 v3, 0xf6

    aput-object v250, v15, v3

    const/16 v3, 0xf7

    aput-object v251, v15, v3

    const/16 v3, 0xf8

    aput-object v252, v15, v3

    const/16 v3, 0xf9

    aput-object v253, v15, v3

    const/16 v3, 0xfa

    aput-object v254, v15, v3

    const/16 v3, 0xfb

    aput-object v255, v15, v3

    const/16 v3, 0xfc

    move-object/from16 v4, v256

    aput-object v4, v15, v3

    const/16 v3, 0xfd

    move-object/from16 v4, v257

    aput-object v4, v15, v3

    const/16 v3, 0xfe

    move-object/from16 v4, v258

    aput-object v4, v15, v3

    const/16 v3, 0xff

    move-object/from16 v4, v259

    aput-object v4, v15, v3

    const/16 v3, 0x100

    move-object/from16 v4, v260

    aput-object v4, v15, v3

    const/16 v3, 0x101

    move-object/from16 v4, v261

    aput-object v4, v15, v3

    const/16 v3, 0x102

    move-object/from16 v4, v262

    aput-object v4, v15, v3

    const/16 v3, 0x103

    move-object/from16 v4, v263

    aput-object v4, v15, v3

    const/16 v3, 0x104

    move-object/from16 v4, v264

    aput-object v4, v15, v3

    const/16 v3, 0x105

    move-object/from16 v4, v265

    aput-object v4, v15, v3

    const/16 v3, 0x106

    move-object/from16 v4, v266

    aput-object v4, v15, v3

    const/16 v3, 0x107

    move-object/from16 v4, v267

    aput-object v4, v15, v3

    const/16 v3, 0x108

    move-object/from16 v4, v268

    aput-object v4, v15, v3

    const/16 v3, 0x109

    move-object/from16 v4, v269

    aput-object v4, v15, v3

    const/16 v3, 0x10a

    move-object/from16 v4, v270

    aput-object v4, v15, v3

    const/16 v3, 0x10b

    move-object/from16 v4, v271

    aput-object v4, v15, v3

    const/16 v3, 0x10c

    move-object/from16 v4, v272

    aput-object v4, v15, v3

    const/16 v3, 0x10d

    move-object/from16 v4, v273

    aput-object v4, v15, v3

    const/16 v3, 0x10e

    move-object/from16 v4, v274

    aput-object v4, v15, v3

    const/16 v3, 0x10f

    move-object/from16 v4, v275

    aput-object v4, v15, v3

    const/16 v3, 0x110

    move-object/from16 v4, v276

    aput-object v4, v15, v3

    const/16 v3, 0x111

    move-object/from16 v4, v277

    aput-object v4, v15, v3

    const/16 v3, 0x112

    move-object/from16 v4, v278

    aput-object v4, v15, v3

    const/16 v3, 0x113

    move-object/from16 v4, v279

    aput-object v4, v15, v3

    const/16 v3, 0x114

    move-object/from16 v4, v280

    aput-object v4, v15, v3

    const/16 v3, 0x115

    move-object/from16 v4, v281

    aput-object v4, v15, v3

    const/16 v3, 0x116

    move-object/from16 v4, v282

    aput-object v4, v15, v3

    const/16 v3, 0x117

    move-object/from16 v4, v283

    aput-object v4, v15, v3

    const/16 v3, 0x118

    move-object/from16 v4, v284

    aput-object v4, v15, v3

    const/16 v3, 0x119

    move-object/from16 v4, v285

    aput-object v4, v15, v3

    const/16 v3, 0x11a

    move-object/from16 v4, v286

    aput-object v4, v15, v3

    const/16 v3, 0x11b

    move-object/from16 v4, v287

    aput-object v4, v15, v3

    const/16 v3, 0x11c

    move-object/from16 v4, v288

    aput-object v4, v15, v3

    const/16 v3, 0x11d

    move-object/from16 v4, v289

    aput-object v4, v15, v3

    const/16 v3, 0x11e

    move-object/from16 v4, v290

    aput-object v4, v15, v3

    const/16 v3, 0x11f

    move-object/from16 v4, v291

    aput-object v4, v15, v3

    const/16 v3, 0x120

    move-object/from16 v4, v292

    aput-object v4, v15, v3

    const/16 v3, 0x121

    move-object/from16 v4, v293

    aput-object v4, v15, v3

    const/16 v3, 0x122

    move-object/from16 v4, v294

    aput-object v4, v15, v3

    const/16 v3, 0x123

    move-object/from16 v4, v295

    aput-object v4, v15, v3

    const/16 v3, 0x124

    move-object/from16 v4, v296

    aput-object v4, v15, v3

    const/16 v3, 0x125

    move-object/from16 v4, v297

    aput-object v4, v15, v3

    const/16 v3, 0x126

    move-object/from16 v4, v298

    aput-object v4, v15, v3

    const/16 v3, 0x127

    move-object/from16 v4, v299

    aput-object v4, v15, v3

    const/16 v3, 0x128

    move-object/from16 v4, v300

    aput-object v4, v15, v3

    const/16 v3, 0x129

    move-object/from16 v4, v301

    aput-object v4, v15, v3

    const/16 v3, 0x12a

    move-object/from16 v4, v302

    aput-object v4, v15, v3

    const/16 v3, 0x12b

    move-object/from16 v4, v303

    aput-object v4, v15, v3

    const/16 v3, 0x12c

    move-object/from16 v4, v304

    aput-object v4, v15, v3

    const/16 v3, 0x12d

    move-object/from16 v4, v305

    aput-object v4, v15, v3

    const/16 v3, 0x12e

    move-object/from16 v4, v306

    aput-object v4, v15, v3

    const/16 v3, 0x12f

    move-object/from16 v4, v307

    aput-object v4, v15, v3

    const/16 v3, 0x130

    move-object/from16 v4, v308

    aput-object v4, v15, v3

    const/16 v3, 0x131

    move-object/from16 v4, v309

    aput-object v4, v15, v3

    const/16 v3, 0x132

    move-object/from16 v4, v310

    aput-object v4, v15, v3

    const/16 v3, 0x133

    move-object/from16 v4, v311

    aput-object v4, v15, v3

    const/16 v3, 0x134

    move-object/from16 v4, v312

    aput-object v4, v15, v3

    const/16 v3, 0x135

    move-object/from16 v4, v313

    aput-object v4, v15, v3

    const/16 v3, 0x136

    move-object/from16 v4, v314

    aput-object v4, v15, v3

    const/16 v3, 0x137

    move-object/from16 v4, v315

    aput-object v4, v15, v3

    const/16 v3, 0x138

    move-object/from16 v4, v316

    aput-object v4, v15, v3

    const/16 v3, 0x139

    move-object/from16 v4, v317

    aput-object v4, v15, v3

    const/16 v3, 0x13a

    move-object/from16 v4, v318

    aput-object v4, v15, v3

    const/16 v3, 0x13b

    aput-object v2, v15, v3

    sput-object v15, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->ALL_VOICES:[Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    .line 454
    new-instance v2, Ljava/util/HashMap;

    array-length v3, v15

    mul-int/2addr v3, v0

    invoke-direct {v2, v3}, Ljava/util/HashMap;-><init>(I)V

    sput-object v2, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_ID:Ljava/util/Map;

    .line 455
    new-instance v0, Ljava/util/HashMap;

    const/high16 v2, 0x3f000000  # 0.5f

    invoke-direct {v0, v1, v2}, Ljava/util/HashMap;-><init>(IF)V

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_LANG:Ljava/util/Map;

    .line 457
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 459
    array-length v1, v15

    move v2, v14

    :goto_10c6
    if-ge v2, v1, :cond_10ed

    aget-object v3, v15, v2

    .line 460
    sget-object v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_ID:Ljava/util/Map;

    iget-object v5, v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    sget-object v4, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_LANG:Ljava/util/Map;

    iget-object v5, v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->languageTag:Ljava/lang/String;

    new-instance v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$$ExternalSyntheticLambda0;

    invoke-direct {v6}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 462
    iget-boolean v4, v3, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->isMultilingual:Z

    if-eqz v4, :cond_10ea

    .line 463
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_10ea
    add-int/lit8 v2, v2, 0x1

    goto :goto_10c6

    .line 467
    :cond_10ed
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_LANG:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_10f7
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_112a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 468
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 469
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 470
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v5, v14

    :cond_1114
    :goto_1114
    if-ge v5, v4, :cond_10f7

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v5, v5, 0x1

    check-cast v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    .line 471
    iget-object v7, v6, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->languageTag:Ljava/lang/String;

    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1114

    .line 472
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1114

    :cond_112a
    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIso639(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    const/16 v0, 0x2d

    .line 498
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-lez v0, :cond_d

    const/4 v1, 0x0

    .line 500
    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_d
    return-object p0
.end method

.method public static getVoice(Ljava/lang/String;)Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 482
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_ID:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    return-object p0
.end method

.method public static getVoicesForLang(Ljava/lang/String;)Ljava/util/List;
    .registers 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;",
            ">;"
        }
    .end annotation

    .line 490
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_LANG:Ljava/util/Map;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getIso639(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    return-object p0
.end method

.method public static resolve(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p1  # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 510
    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->getIso639(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 512
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_LANG:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    if-eqz p0, :cond_14

    .line 513
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_21

    .line 514
    :cond_14
    const-string p0, "en"

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p0, Ljava/util/List;

    :cond_21
    if-eqz p1, :cond_48

    .line 517
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog;->VOICES_BY_ID:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    if-eqz v0, :cond_48

    .line 519
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_31
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_48

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    .line 520
    iget-object v2, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    iget-object p0, v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    return-object p0

    :cond_48
    const/4 p1, 0x0

    .line 524
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/voiceovertranslation/VoiceCatalog$Voice;->id:Ljava/lang/String;

    return-object p0
.end method
