.class final Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;
.super Ljava/lang/Object;
.source "TtsCache.java"


# static fields
.field private static final TEST_SAMPLES_DIR:Ljava/lang/String; = "vot_voice_samples"

.field private static final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[B>;"
        }
    .end annotation
.end field


# direct methods
.method public static synthetic $r8$lambda$JSU11zdM5fR8G0H4Hr8wCNzj8gk(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disk read failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$glt3wfH5SaDOqUPUR8ImHY0Iqhc(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Disk write failed: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$sr9NH8QjvMamNdy9vqFdiD3PRrU()Ljava/lang/String;
    .registers 1

    .line 81
    const-string v0, "Failed to create cache directory"

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x3e8

    .line 36
    invoke-static {v0}, Lcom/gold/extension/shared/Utils;->createSizeRestrictedMap(I)Ljava/util/Map;

    move-result-object v0

    .line 35
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->cache:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized get(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .registers 7

    const-class v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;

    monitor-enter v0

    .line 46
    :try_start_3
    const-string v1, "system"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1c

    if-eqz v1, :cond_e

    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    .line 47
    :cond_e
    :try_start_e
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->cache:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->key(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B
    :try_end_1a
    .catchall {:try_start_e .. :try_end_1a} :catchall_1c

    monitor-exit v0

    return-object p0

    :catchall_1c
    move-exception p0

    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_1c

    throw p0
.end method

.method public static getDuration(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .registers 8

    .line 56
    const-string v0, "system"

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-wide/16 v1, -0x1

    if-eqz v0, :cond_b

    return-wide v1

    .line 57
    :cond_b
    sget-object v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->cache:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->key(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [B

    if-eqz p0, :cond_1f

    .line 58
    array-length p0, p0

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsEngine;->mp3DurationMs(I)J

    move-result-wide p0

    return-wide p0

    :cond_1f
    return-wide v1
.end method

.method public static getTestSampleFromDisk(Ljava/lang/String;Ljava/lang/String;)[B
    .registers 6

    const/4 v0, 0x0

    .line 63
    :try_start_1
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->testSampleFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 64
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_c

    return-object v0

    .line 65
    :cond_c
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_11} :catch_2e

    .line 66
    :try_start_11
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p1, v2

    new-array p1, p1, [B

    .line 67
    new-instance v2, Ljava/io/DataInputStream;

    invoke-direct {v2, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v2, p1}, Ljava/io/DataInputStream;->readFully([B)V
    :try_end_20
    .catchall {:try_start_11 .. :try_end_20} :catchall_24

    .line 69
    :try_start_20
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_23} :catch_2e

    return-object p1

    :catchall_24
    move-exception p1

    .line 65
    :try_start_25
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_28
    .catchall {:try_start_25 .. :try_end_28} :catchall_29

    goto :goto_2d

    :catchall_29
    move-exception v1

    :try_start_2a
    invoke-virtual {p1, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_2d
    throw p1
    :try_end_2e
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2e} :catch_2e

    .line 71
    :catch_2e
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-object v0
.end method

.method private static key(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x3a

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static declared-synchronized notCached(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 8

    const-class v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;

    monitor-enter v0

    .line 41
    :try_start_3
    const-string v1, "system"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1b

    const/4 v2, 0x1

    if-eqz v1, :cond_e

    monitor-exit v0

    return v2

    .line 42
    :cond_e
    :try_start_e
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->cache:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->key(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p0
    :try_end_18
    .catchall {:try_start_e .. :try_end_18} :catchall_1b

    xor-int/2addr p0, v2

    monitor-exit v0

    return p0

    :catchall_1b
    move-exception p0

    :try_start_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_1c .. :try_end_1d} :catchall_1b

    throw p0
.end method

.method public static declared-synchronized put(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 8

    const-class v0, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;

    monitor-enter v0

    .line 51
    :try_start_3
    const-string v1, "system"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_18

    if-eqz v1, :cond_d

    monitor-exit v0

    return-void

    .line 52
    :cond_d
    :try_start_d
    sget-object v1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->cache:Ljava/util/Map;

    invoke-static {p0, p1, p2, p3, p4}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->key(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {v1, p0, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_18

    .line 53
    monitor-exit v0

    return-void

    :catchall_18
    move-exception p0

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    throw p0
.end method

.method public static putTestSampleToDisk(Ljava/lang/String;Ljava/lang/String;[B)V
    .registers 5

    .line 78
    :try_start_0
    invoke-static {p0, p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache;->testSampleFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    .line 79
    invoke-virtual {p1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_1f

    .line 80
    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_1f

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 81
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache$$ExternalSyntheticLambda1;

    invoke-direct {p1}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache$$ExternalSyntheticLambda1;-><init>()V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void

    .line 84
    :cond_1f
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_24} :catch_35

    .line 85
    :try_start_24
    invoke-virtual {v0, p2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_27
    .catchall {:try_start_24 .. :try_end_27} :catchall_2b

    .line 86
    :try_start_27
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2a} :catch_35

    return-void

    :catchall_2b
    move-exception p1

    .line 84
    :try_start_2c
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_2f
    .catchall {:try_start_2c .. :try_end_2f} :catchall_30

    goto :goto_34

    :catchall_30
    move-exception p2

    :try_start_31
    invoke-virtual {p1, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_34
    throw p1
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_35} :catch_35

    .line 88
    :catch_35
    new-instance p1, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/gold/extension/youtube/patches/voiceovertranslation/TtsCache$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/gold/extension/shared/Logger;->printDebug(Lcom/gold/extension/shared/Logger$LogMessage;)V

    return-void
.end method

.method private static testSampleFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;
    .registers 6

    .line 93
    invoke-static {}, Lcom/gold/extension/shared/Utils;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 94
    new-instance v1, Ljava/io/File;

    invoke-virtual {v0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "vot_voice_samples"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x5f

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, v0, p0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1
.end method
