.class public Lus/shandian/giga/util/Utility;
.super Ljava/lang/Object;
.source "Utility.java"


# direct methods
.method public static copyToClipboard(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    const-class v0, Landroid/content/ClipboardManager;

    invoke-static {p0, v0}, Landroidx/core/contents/ContextCompat;->getSystemService(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    if-nez v0, :cond_19

    const-string p1, "permission_denied"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void

    :cond_19
    const-string v1, "text"

    invoke-static {v1, p1}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    const-string p1, "msg_copied"

    invoke-static {p1}, Lcom/gold/youtube/om7753/util/Utils;->getStringByName(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method public static formatBytes(J)Ljava/lang/String;
    .registers 10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/16 v3, 0x400

    cmp-long v5, p0, v3

    if-gez v5, :cond_1b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%d B"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-wide/32 v3, 0x100000

    const-wide/high16 v5, 0x4090000000000000L  # 1024.0

    cmp-long v7, p0, v3

    if-gez v7, :cond_38

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v5

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f kB"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_38
    const-wide/32 v3, 0x40000000

    cmp-long v7, p0, v3

    if-gez v7, :cond_54

    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v5

    div-double/2addr p0, v5

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f MB"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_54
    new-array v2, v2, [Ljava/lang/Object;

    long-to-double p0, p0

    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    div-double/2addr p0, v5

    div-double/2addr p0, v5

    div-double/2addr p0, v5

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f GB"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static formatSpeed(D)Ljava/lang/String;
    .registers 10

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-wide/high16 v3, 0x4090000000000000L  # 1024.0

    cmpg-double v5, p0, v3

    if-gez v5, :cond_1b

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f B/s"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1b
    const-wide/high16 v5, 0x4130000000000000L  # 1048576.0

    cmpg-double v7, p0, v5

    if-gez v7, :cond_31

    new-array v2, v2, [Ljava/lang/Object;

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f kB/s"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_31
    const-wide/high16 v5, 0x41d0000000000000L  # 1.073741824E9

    cmpg-double v7, p0, v5

    if-gez v7, :cond_48

    new-array v2, v2, [Ljava/lang/Object;

    div-double/2addr p0, v3

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f MB/s"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_48
    new-array v2, v2, [Ljava/lang/Object;

    div-double/2addr p0, v3

    div-double/2addr p0, v3

    div-double/2addr p0, v3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    aput-object p0, v2, v1

    const-string p0, "%.2f GB/s"

    invoke-static {v0, p0, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getBackgroundForFileType(Landroid/content/Context;Lus/shandian/giga/util/Utility$FileType;)I
    .registers 3

    sget-object v0, Lus/shandian/giga/util/Utility$1;->$SwitchMap$us$shandian$giga$util$Utility$FileType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    const-string p1, "#FF616161"

    goto :goto_1c

    :cond_14
    const-string p1, "#FF008EA4"

    goto :goto_1c

    :cond_17
    const-string p1, "#FFCD5656"

    goto :goto_1c

    :cond_1a
    const-string p1, "#FF555555"

    :goto_1c
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getContentLength(Ljava/net/HttpURLConnection;)J
    .registers 3

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_b

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getContentLengthLong()J

    move-result-wide v0

    return-wide v0

    :cond_b
    :try_start_b
    const-string v0, "Content-Length"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_15} :catch_16

    return-wide v0

    :catch_16
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static getFileExt(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    if-le v0, v2, :cond_e

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_e
    const-string v0, "."

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_18

    const/4 p0, 0x0

    return-object p0

    :cond_18
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    const-string v0, "%"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_28

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_28
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-le v0, v2, :cond_34

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    :cond_34
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getFileType(CLjava/lang/String;)Lus/shandian/giga/util/Utility$FileType;
    .registers 3

    const/16 v0, 0x61

    if-eq p0, v0, :cond_99

    const/16 v0, 0x73

    if-eq p0, v0, :cond_96

    const/16 v0, 0x76

    if-eq p0, v0, :cond_93

    const-string p0, ".srt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_90

    const-string p0, ".vtt"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_90

    const-string p0, ".ssa"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_25

    goto :goto_90

    :cond_25
    const-string p0, ".mp3"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8d

    const-string p0, ".wav"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8d

    const-string p0, ".flac"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8d

    const-string p0, ".m4a"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8d

    const-string p0, ".opus"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_4e

    goto :goto_8d

    :cond_4e
    const-string p0, ".mp4"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8a

    const-string p0, ".mpeg"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8a

    const-string p0, ".rm"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8a

    const-string p0, ".rmvb"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8a

    const-string p0, ".flv"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8a

    const-string p0, ".webp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_8a

    const-string p0, ".webm"

    invoke-virtual {p1, p0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_87

    goto :goto_8a

    :cond_87
    sget-object p0, Lus/shandian/giga/util/Utility$FileType;->UNKNOWN:Lus/shandian/giga/util/Utility$FileType;

    return-object p0

    :cond_8a
    :goto_8a
    sget-object p0, Lus/shandian/giga/util/Utility$FileType;->VIDEO:Lus/shandian/giga/util/Utility$FileType;

    return-object p0

    :cond_8d
    :goto_8d
    sget-object p0, Lus/shandian/giga/util/Utility$FileType;->MUSIC:Lus/shandian/giga/util/Utility$FileType;

    return-object p0

    :cond_90
    :goto_90
    sget-object p0, Lus/shandian/giga/util/Utility$FileType;->SUBTITLE:Lus/shandian/giga/util/Utility$FileType;

    return-object p0

    :cond_93
    sget-object p0, Lus/shandian/giga/util/Utility$FileType;->VIDEO:Lus/shandian/giga/util/Utility$FileType;

    return-object p0

    :cond_96
    sget-object p0, Lus/shandian/giga/util/Utility$FileType;->SUBTITLE:Lus/shandian/giga/util/Utility$FileType;

    return-object p0

    :cond_99
    sget-object p0, Lus/shandian/giga/util/Utility$FileType;->MUSIC:Lus/shandian/giga/util/Utility$FileType;

    return-object p0
.end method

.method public static getForegroundForFileType(Landroid/content/Context;Lus/shandian/giga/util/Utility$FileType;)I
    .registers 3

    sget-object v0, Lus/shandian/giga/util/Utility$1;->$SwitchMap$us$shandian$giga$util$Utility$FileType:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1a

    const/4 v0, 0x2

    if-eq p1, v0, :cond_17

    const/4 v0, 0x3

    if-eq p1, v0, :cond_14

    const-string p1, "#FF616161"

    goto :goto_1c

    :cond_14
    const-string p1, "#FF005A71"

    goto :goto_1c

    :cond_17
    const-string p1, "#FF67000E"

    goto :goto_1c

    :cond_1a
    const-string p1, "#FF64004B"

    :goto_1c
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getIconForFileType(Lus/shandian/giga/util/Utility$FileType;)I
    .registers 2

    sget-object v0, Lus/shandian/giga/util/Utility$1;->$SwitchMap$us$shandian$giga$util$Utility$FileType:[I

    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_14

    const/4 v0, 0x3

    if-eq p0, v0, :cond_11

    const-string p0, "ic_download_movie"

    goto :goto_16

    :cond_11
    const-string p0, "ic_download_subtitles"

    goto :goto_16

    :cond_14
    const-string p0, "ic_download_headset"

    :goto_16
    invoke-static {p0}, Lcom/gold/youtube/om7753/util/Utils;->getDWByName(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public static getTotalContentLength(Ljava/net/HttpURLConnection;)J
    .registers 3

    :try_start_0
    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v1, 0xce

    if-ne v0, v1, :cond_1d

    const-string v0, "Content-Range"

    invoke-virtual {p0, v0}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "/"

    const/4 v1, 0x2

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    const/4 v0, 0x1

    aget-object p0, p0, v0

    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0

    :cond_1d
    invoke-static {p0}, Lus/shandian/giga/util/Utility;->getContentLength(Ljava/net/HttpURLConnection;)J

    move-result-wide v0
    :try_end_21
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22

    return-wide v0

    :catch_22
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public static mkdir(Ljava/io/File;Z)Z
    .registers 3

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    if-eqz p1, :cond_e

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    goto :goto_11

    :cond_e
    invoke-virtual {p0}, Ljava/io/File;->mkdir()Z

    :goto_11
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result p0

    return p0
.end method

.method private static pad(I)Ljava/lang/String;
    .registers 3

    const/16 v0, 0xa

    if-ge p0, v0, :cond_16

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1a

    :cond_16
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    :goto_1a
    return-object p0
.end method

.method public static readFromFile(Ljava/io/File;)Ljava/lang/Object;
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/ObjectInputStream;

    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_a} :catch_1c

    :try_start_a
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object p0
    :try_end_e
    .catchall {:try_start_a .. :try_end_e} :catchall_12

    :try_start_e
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_11} :catch_1c

    goto :goto_25

    :catchall_12
    move-exception p0

    :try_start_13
    invoke-virtual {v0}, Ljava/io/ObjectInputStream;->close()V
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_17

    goto :goto_1b

    :catchall_17
    move-exception v0

    :try_start_18
    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1b
    throw p0
    :try_end_1c
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_1c} :catch_1c

    :catch_1c
    move-exception p0

    const-string v0, "Utility"

    const-string v1, "Failed to deserialize the object"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_25
    return-object p0
.end method

.method public static stringifySeconds(D)Ljava/lang/String;
    .registers 6

    const-wide v0, 0x40ac200000000000L  # 3600.0

    div-double v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D

    move-result-wide v0

    double-to-int v0, v0

    mul-int/lit16 v1, v0, 0xe10

    int-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v1

    const-wide/high16 v1, 0x404e000000000000L  # 60.0

    div-double v1, p0, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->floor(D)D

    move-result-wide v1

    double-to-int v1, v1

    mul-int/lit8 v2, v1, 0x3c

    int-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    sub-double/2addr p0, v2

    double-to-int p0, p0

    const/4 p1, 0x1

    if-ge v0, p1, :cond_2c

    if-ge v1, p1, :cond_2c

    const-string p1, "00:"

    goto :goto_60

    :cond_2c
    const-string p1, ":"

    if-lez v0, :cond_44

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lus/shandian/giga/util/Utility;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_46

    :cond_44
    const-string v0, ""

    :goto_46
    if-lez v1, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lus/shandian/giga/util/Utility;->pad(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_60

    :cond_5f
    move-object p1, v0

    :goto_60
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lus/shandian/giga/util/Utility;->pad(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static writeToFile(Ljava/io/File;Ljava/io/Serializable;)V
    .registers 5

    :try_start_0
    new-instance v0, Ljava/io/ObjectOutputStream;

    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v0, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_f} :catch_20

    :try_start_f
    invoke-virtual {v0, p1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_16

    :try_start_12
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_15} :catch_20

    goto :goto_20

    :catchall_16
    move-exception p0

    :try_start_17
    invoke-virtual {v0}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1a
    .catchall {:try_start_17 .. :try_end_1a} :catchall_1b

    goto :goto_1f

    :catchall_1b
    move-exception p1

    :try_start_1c
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :goto_1f
    throw p0
    :try_end_20
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_20} :catch_20

    :catch_20
    :goto_20
    return-void
.end method
