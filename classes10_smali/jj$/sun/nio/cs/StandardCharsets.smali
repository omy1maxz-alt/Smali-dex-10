.class public Ljj$/sun/nio/cs/StandardCharsets;
.super Ljava/nio/charset/spi/CharsetProvider;
.source "StandardCharsets.java"


# static fields
.field static aliases_MS932:[Ljava/lang/String; = null

.field static aliases_SJIS:[Ljava/lang/String; = null

.field private static final packagePrefix:Ljava/lang/String; = "sun.nio.cs."


# instance fields
.field private aliasMap:Ljava/util/Map;

.field private cache:Ljava/util/Map;

.field private classMap:Ljava/util/Map;

.field private initialized:Z


# direct methods
.method static bridge synthetic -$$Nest$mlookup(Ljj$/sun/nio/cs/StandardCharsets;Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 2

    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/StandardCharsets;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 6

    const-string v4, "x-sjis"

    const-string v5, "csShiftJIS"

    const-string v0, "sjis"

    const-string v1, "shift_jis"

    const-string v2, "shift-jis"

    const-string v3, "ms_kanji"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljj$/sun/nio/cs/StandardCharsets;->aliases_SJIS:[Ljava/lang/String;

    const-string v0, "windows-932"

    const-string v1, "csWindows31J"

    const-string v2, "MS932"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljj$/sun/nio/cs/StandardCharsets;->aliases_MS932:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/nio/charset/spi/CharsetProvider;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/sun/nio/cs/StandardCharsets;->initialized:Z

    return-void
.end method

.method private aliasMap()Ljava/util/Map;
    .registers 4

    iget-object v0, p0, Ljj$/sun/nio/cs/StandardCharsets;->aliasMap:Ljava/util/Map;

    if-nez v0, :cond_d

    new-instance v1, Ljj$/sun/nio/cs/StandardCharsets$Aliases;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljj$/sun/nio/cs/StandardCharsets$Aliases;-><init>(Ljj$/sun/nio/cs/StandardCharsets-IA;)V

    move-object v0, v1

    iput-object v1, p0, Ljj$/sun/nio/cs/StandardCharsets;->aliasMap:Ljava/util/Map;

    :cond_d
    return-object v0
.end method

.method static aliases_Big5()[Ljava/lang/String;
    .registers 1

    const-string v0, "csBig5"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_Big5_HKSCS()[Ljava/lang/String;
    .registers 4

    const-string v0, "big5-hkscs"

    const-string v1, "big5hkscs"

    const-string v2, "Big5_HKSCS"

    const-string v3, "big5hk"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_Big5_Solaris()[Ljava/lang/String;
    .registers 1

    const-string v0, "Big5_Solaris"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_CESU_8()[Ljava/lang/String;
    .registers 2

    const-string v0, "CESU8"

    const-string v1, "csCESU-8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_EUC_CN()[Ljava/lang/String;
    .registers 7

    const-string v5, "x-EUC-CN"

    const-string v6, "EUC_CN"

    const-string v0, "gb2312"

    const-string v1, "gb2312-80"

    const-string v2, "gb2312-1980"

    const-string v3, "euc-cn"

    const-string v4, "euccn"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_EUC_JP()[Ljava/lang/String;
    .registers 7

    const-string v5, "x-euc-jp"

    const-string v6, "x-eucjp"

    const-string v0, "euc_jp"

    const-string v1, "eucjis"

    const-string v2, "eucjp"

    const-string v3, "Extended_UNIX_Code_Packed_Format_for_Japanese"

    const-string v4, "csEUCPkdFmtjapanese"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_EUC_JP_LINUX()[Ljava/lang/String;
    .registers 2

    const-string v0, "euc_jp_linux"

    const-string v1, "euc-jp-linux"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_EUC_JP_Open()[Ljava/lang/String;
    .registers 2

    const-string v0, "EUC_JP_Solaris"

    const-string v1, "eucJP-open"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_EUC_KR()[Ljava/lang/String;
    .registers 9

    const-string v7, "csEUCKR"

    const-string v8, "5601"

    const-string v0, "euc_kr"

    const-string v1, "ksc5601"

    const-string v2, "euckr"

    const-string v3, "ks_c_5601-1987"

    const-string v4, "ksc5601-1987"

    const-string v5, "ksc5601_1987"

    const-string v6, "ksc_5601"

    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_EUC_TW()[Ljava/lang/String;
    .registers 4

    const-string v0, "cns11643"

    const-string v1, "EUC-TW"

    const-string v2, "euc_tw"

    const-string v3, "euctw"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_GB18030()[Ljava/lang/String;
    .registers 1

    const-string v0, "gb18030-2000"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_GBK()[Ljava/lang/String;
    .registers 2

    const-string v0, "windows-936"

    const-string v1, "CP936"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM437()[Ljava/lang/String;
    .registers 6

    const-string v4, "cspc8codepage437"

    const-string v5, "windows-437"

    const-string v0, "cp437"

    const-string v1, "ibm437"

    const-string v2, "ibm-437"

    const-string v3, "437"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM737()[Ljava/lang/String;
    .registers 4

    const-string v0, "ibm-737"

    const-string v1, "737"

    const-string v2, "cp737"

    const-string v3, "ibm737"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM775()[Ljava/lang/String;
    .registers 4

    const-string v0, "ibm-775"

    const-string v1, "775"

    const-string v2, "cp775"

    const-string v3, "ibm775"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM850()[Ljava/lang/String;
    .registers 5

    const-string v0, "850"

    const-string v1, "cspc850multilingual"

    const-string v2, "cp850"

    const-string v3, "ibm-850"

    const-string v4, "ibm850"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM852()[Ljava/lang/String;
    .registers 5

    const-string v0, "852"

    const-string v1, "csPCp852"

    const-string v2, "cp852"

    const-string v3, "ibm852"

    const-string v4, "ibm-852"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM855()[Ljava/lang/String;
    .registers 5

    const-string v0, "855"

    const-string v1, "cspcp855"

    const-string v2, "cp855"

    const-string v3, "ibm-855"

    const-string v4, "ibm855"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM857()[Ljava/lang/String;
    .registers 5

    const-string v0, "857"

    const-string v1, "csIBM857"

    const-string v2, "cp857"

    const-string v3, "ibm857"

    const-string v4, "ibm-857"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM858()[Ljava/lang/String;
    .registers 7

    const-string v5, "ibm858"

    const-string v6, "ibm-858"

    const-string v0, "cp858"

    const-string v1, "ccsid00858"

    const-string v2, "cp00858"

    const-string v3, "858"

    const-string v4, "PC-Multilingual-850+euro"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM862()[Ljava/lang/String;
    .registers 6

    const-string v4, "csIBM862"

    const-string v5, "cspc862latinhebrew"

    const-string v0, "cp862"

    const-string v1, "ibm862"

    const-string v2, "ibm-862"

    const-string v3, "862"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM866()[Ljava/lang/String;
    .registers 5

    const-string v0, "866"

    const-string v1, "csIBM866"

    const-string v2, "cp866"

    const-string v3, "ibm866"

    const-string v4, "ibm-866"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_IBM874()[Ljava/lang/String;
    .registers 4

    const-string v0, "ibm-874"

    const-string v1, "874"

    const-string v2, "cp874"

    const-string v3, "ibm874"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_1()[Ljava/lang/String;
    .registers 14

    const-string v12, "8859_1"

    const-string v13, "ISO8859-1"

    const-string v0, "iso-ir-100"

    const-string v1, "ISO_8859-1"

    const-string v2, "latin1"

    const-string v3, "l1"

    const-string v4, "IBM819"

    const-string v5, "cp819"

    const-string v6, "csISOLatin1"

    const-string v7, "819"

    const-string v8, "IBM-819"

    const-string v9, "ISO8859_1"

    const-string v10, "ISO_8859-1:1987"

    const-string v11, "ISO_8859_1"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_11()[Ljava/lang/String;
    .registers 2

    const-string v0, "iso-8859-11"

    const-string v1, "iso8859_11"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_13()[Ljava/lang/String;
    .registers 4

    const-string v0, "iso_8859-13"

    const-string v1, "ISO8859-13"

    const-string v2, "iso8859_13"

    const-string v3, "8859_13"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_15()[Ljava/lang/String;
    .registers 18

    const-string v16, "csISOlatin9"

    const-string v17, "ISO8859_15_FDIS"

    const-string v1, "ISO_8859-15"

    const-string v2, "Latin-9"

    const-string v3, "csISO885915"

    const-string v4, "8859_15"

    const-string v5, "ISO-8859-15"

    const-string v6, "ISO8859_15"

    const-string v7, "ISO8859-15"

    const-string v8, "IBM923"

    const-string v9, "IBM-923"

    const-string v10, "cp923"

    const-string v11, "923"

    const-string v12, "LATIN0"

    const-string v13, "LATIN9"

    const-string v14, "L9"

    const-string v15, "csISOlatin0"

    filled-new-array/range {v1 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_16()[Ljava/lang/String;
    .registers 7

    const-string v5, "l10"

    const-string v6, "csISO885916"

    const-string v0, "iso-ir-226"

    const-string v1, "ISO_8859-16:2001"

    const-string v2, "ISO_8859-16"

    const-string v3, "ISO8859_16"

    const-string v4, "latin10"

    filled-new-array/range {v0 .. v6}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_2()[Ljava/lang/String;
    .registers 13

    const-string v11, "912"

    const-string v12, "csISOLatin2"

    const-string v0, "iso8859_2"

    const-string v1, "8859_2"

    const-string v2, "iso-ir-101"

    const-string v3, "ISO_8859-2"

    const-string v4, "ISO_8859-2:1987"

    const-string v5, "ISO8859-2"

    const-string v6, "latin2"

    const-string v7, "l2"

    const-string v8, "ibm912"

    const-string v9, "ibm-912"

    const-string v10, "cp912"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_3()[Ljava/lang/String;
    .registers 13

    const-string v11, "913"

    const-string v12, "csISOLatin3"

    const-string v0, "iso8859_3"

    const-string v1, "8859_3"

    const-string v2, "ISO_8859-3:1988"

    const-string v3, "iso-ir-109"

    const-string v4, "ISO_8859-3"

    const-string v5, "ISO8859-3"

    const-string v6, "latin3"

    const-string v7, "l3"

    const-string v8, "ibm913"

    const-string v9, "ibm-913"

    const-string v10, "cp913"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_4()[Ljava/lang/String;
    .registers 13

    const-string v11, "914"

    const-string v12, "csISOLatin4"

    const-string v0, "iso8859_4"

    const-string v1, "iso8859-4"

    const-string v2, "8859_4"

    const-string v3, "iso-ir-110"

    const-string v4, "ISO_8859-4"

    const-string v5, "ISO_8859-4:1988"

    const-string v6, "latin4"

    const-string v7, "l4"

    const-string v8, "ibm914"

    const-string v9, "ibm-914"

    const-string v10, "cp914"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_5()[Ljava/lang/String;
    .registers 12

    const-string v10, "915"

    const-string v11, "csISOLatinCyrillic"

    const-string v0, "iso8859_5"

    const-string v1, "8859_5"

    const-string v2, "iso-ir-144"

    const-string v3, "ISO_8859-5"

    const-string v4, "ISO_8859-5:1988"

    const-string v5, "ISO8859-5"

    const-string v6, "cyrillic"

    const-string v7, "ibm915"

    const-string v8, "ibm-915"

    const-string v9, "cp915"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_6()[Ljava/lang/String;
    .registers 14

    const-string v12, "1089"

    const-string v13, "csISOLatinArabic"

    const-string v0, "iso8859_6"

    const-string v1, "8859_6"

    const-string v2, "iso-ir-127"

    const-string v3, "ISO_8859-6"

    const-string v4, "ISO_8859-6:1987"

    const-string v5, "ISO8859-6"

    const-string v6, "ECMA-114"

    const-string v7, "ASMO-708"

    const-string v8, "arabic"

    const-string v9, "ibm1089"

    const-string v10, "ibm-1089"

    const-string v11, "cp1089"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_7()[Ljava/lang/String;
    .registers 17

    const-string v15, "cp813"

    const-string v16, "iso8859-7"

    const-string v1, "iso8859_7"

    const-string v2, "8859_7"

    const-string v3, "iso-ir-126"

    const-string v4, "ISO_8859-7"

    const-string v5, "ISO_8859-7:1987"

    const-string v6, "ELOT_928"

    const-string v7, "ECMA-118"

    const-string v8, "greek"

    const-string v9, "greek8"

    const-string v10, "csISOLatinGreek"

    const-string v11, "sun_eu_greek"

    const-string v12, "ibm813"

    const-string v13, "ibm-813"

    const-string v14, "813"

    filled-new-array/range {v1 .. v16}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_8()[Ljava/lang/String;
    .registers 12

    const-string v10, "hebrew"

    const-string v11, "csISOLatinHebrew"

    const-string v0, "iso8859_8"

    const-string v1, "8859_8"

    const-string v2, "iso-ir-138"

    const-string v3, "ISO_8859-8"

    const-string v4, "ISO_8859-8:1988"

    const-string v5, "ISO8859-8"

    const-string v6, "cp916"

    const-string v7, "916"

    const-string v8, "ibm916"

    const-string v9, "ibm-916"

    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_ISO_8859_9()[Ljava/lang/String;
    .registers 13

    const-string v11, "cp920"

    const-string v12, "csISOLatin5"

    const-string v0, "iso8859_9"

    const-string v1, "8859_9"

    const-string v2, "iso-ir-148"

    const-string v3, "ISO_8859-9"

    const-string v4, "ISO_8859-9:1989"

    const-string v5, "ISO8859-9"

    const-string v6, "latin5"

    const-string v7, "l5"

    const-string v8, "ibm920"

    const-string v9, "ibm-920"

    const-string v10, "920"

    filled-new-array/range {v0 .. v12}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_JIS_X_0201()[Ljava/lang/String;
    .registers 4

    const-string v0, "X0201"

    const-string v1, "csHalfWidthKatakana"

    const-string v2, "JIS0201"

    const-string v3, "JIS_X0201"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_JIS_X_0208()[Ljava/lang/String;
    .registers 6

    const-string v4, "JIS_X0208-1983"

    const-string v5, "csISO87JISX0208"

    const-string v0, "JIS0208"

    const-string v1, "JIS_C6226-1983"

    const-string v2, "iso-ir-87"

    const-string v3, "x0208"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_JIS_X_0208_Solaris()[Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static aliases_JIS_X_0212()[Ljava/lang/String;
    .registers 5

    const-string v0, "iso-ir-159"

    const-string v1, "csISO159JISX02121990"

    const-string v2, "JIS0212"

    const-string v3, "jis_x0212-1990"

    const-string v4, "x0212"

    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_JIS_X_0212_Solaris()[Ljava/lang/String;
    .registers 1

    const/4 v0, 0x0

    return-object v0
.end method

.method static aliases_Johab()[Ljava/lang/String;
    .registers 4

    const-string v0, "ms1361"

    const-string v1, "johab"

    const-string v2, "ksc5601-1992"

    const-string v3, "ksc5601_1992"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_KOI8_R()[Ljava/lang/String;
    .registers 3

    const-string v0, "koi8"

    const-string v1, "cskoi8r"

    const-string v2, "koi8_r"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_KOI8_U()[Ljava/lang/String;
    .registers 1

    const-string v0, "koi8_u"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_MS1250()[Ljava/lang/String;
    .registers 2

    const-string v0, "cp1250"

    const-string v1, "cp5346"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_MS1251()[Ljava/lang/String;
    .registers 3

    const-string v0, "cp5347"

    const-string v1, "ansi-1251"

    const-string v2, "cp1251"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_MS1252()[Ljava/lang/String;
    .registers 4

    const-string v0, "ibm-1252"

    const-string v1, "ibm1252"

    const-string v2, "cp1252"

    const-string v3, "cp5348"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_MS1253()[Ljava/lang/String;
    .registers 2

    const-string v0, "cp1253"

    const-string v1, "cp5349"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_MS1254()[Ljava/lang/String;
    .registers 2

    const-string v0, "cp1254"

    const-string v1, "cp5350"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_MS1257()[Ljava/lang/String;
    .registers 2

    const-string v0, "cp1257"

    const-string v1, "cp5353"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_MS932()[Ljava/lang/String;
    .registers 1

    sget-object v0, Ljj$/sun/nio/cs/StandardCharsets;->aliases_MS932:[Ljava/lang/String;

    return-object v0
.end method

.method static aliases_PCK()[Ljava/lang/String;
    .registers 1

    const-string v0, "pck"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_SJIS()[Ljava/lang/String;
    .registers 1

    sget-object v0, Ljj$/sun/nio/cs/StandardCharsets;->aliases_SJIS:[Ljava/lang/String;

    return-object v0
.end method

.method static aliases_TIS_620()[Ljava/lang/String;
    .registers 2

    const-string v0, "tis620"

    const-string v1, "tis620.2533"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_US_ASCII()[Ljava/lang/String;
    .registers 14

    const-string v12, "ANSI_X3.4-1968"

    const-string v13, "ascii7"

    const-string v0, "iso-ir-6"

    const-string v1, "ANSI_X3.4-1986"

    const-string v2, "ISO_646.irv:1991"

    const-string v3, "ASCII"

    const-string v4, "ISO646-US"

    const-string v5, "us"

    const-string v6, "IBM367"

    const-string v7, "cp367"

    const-string v8, "csASCII"

    const-string v9, "default"

    const-string v10, "646"

    const-string v11, "iso_646.irv:1983"

    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_16()[Ljava/lang/String;
    .registers 4

    const-string v0, "unicode"

    const-string v1, "UnicodeBig"

    const-string v2, "UTF_16"

    const-string v3, "utf16"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_16BE()[Ljava/lang/String;
    .registers 4

    const-string v0, "X-UTF-16BE"

    const-string v1, "UnicodeBigUnmarked"

    const-string v2, "UTF_16BE"

    const-string v3, "ISO-10646-UCS-2"

    filled-new-array {v2, v3, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_16LE()[Ljava/lang/String;
    .registers 3

    const-string v0, "X-UTF-16LE"

    const-string v1, "UnicodeLittleUnmarked"

    const-string v2, "UTF_16LE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_16LE_BOM()[Ljava/lang/String;
    .registers 1

    const-string v0, "UnicodeLittle"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_32()[Ljava/lang/String;
    .registers 2

    const-string v0, "UTF_32"

    const-string v1, "UTF32"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_32BE()[Ljava/lang/String;
    .registers 2

    const-string v0, "UTF_32BE"

    const-string v1, "X-UTF-32BE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_32BE_BOM()[Ljava/lang/String;
    .registers 2

    const-string v0, "UTF_32BE_BOM"

    const-string v1, "UTF-32BE-BOM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_32LE()[Ljava/lang/String;
    .registers 2

    const-string v0, "UTF_32LE"

    const-string v1, "X-UTF-32LE"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_32LE_BOM()[Ljava/lang/String;
    .registers 2

    const-string v0, "UTF_32LE_BOM"

    const-string v1, "UTF-32LE-BOM"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static aliases_UTF_8()[Ljava/lang/String;
    .registers 2

    const-string v0, "UTF8"

    const-string v1, "unicode-1-1-utf-8"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private cache(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;
    .registers 4

    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->cache()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method private cache()Ljava/util/Map;
    .registers 4

    iget-object v0, p0, Ljj$/sun/nio/cs/StandardCharsets;->cache:Ljava/util/Map;

    if-nez v0, :cond_37

    new-instance v1, Ljj$/sun/nio/cs/StandardCharsets$Cache;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljj$/sun/nio/cs/StandardCharsets$Cache;-><init>(Ljj$/sun/nio/cs/StandardCharsets-IA;)V

    move-object v0, v1

    const-string v1, "utf-8"

    sget-object v2, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "iso-8859-1"

    sget-object v2, Ljj$/sun/nio/cs/ISO_8859_1;->INSTANCE:Ljj$/sun/nio/cs/ISO_8859_1;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "us-ascii"

    sget-object v2, Ljj$/sun/nio/cs/US_ASCII;->INSTANCE:Ljj$/sun/nio/cs/US_ASCII;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utf-16"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utf-16be"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16BE:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "utf-16le"

    sget-object v2, Ljava/nio/charset/StandardCharsets;->UTF_16LE:Ljava/nio/charset/Charset;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v0, p0, Ljj$/sun/nio/cs/StandardCharsets;->cache:Ljava/util/Map;

    :cond_37
    return-object v0
.end method

.method private canonicalize(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->aliasMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_e

    move-object v1, v0

    goto :goto_f

    :cond_e
    move-object v1, p1

    :goto_f
    return-object v1
.end method

.method private classMap()Ljava/util/Map;
    .registers 4

    iget-object v0, p0, Ljj$/sun/nio/cs/StandardCharsets;->classMap:Ljava/util/Map;

    if-nez v0, :cond_d

    new-instance v1, Ljj$/sun/nio/cs/StandardCharsets$Classes;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljj$/sun/nio/cs/StandardCharsets$Classes;-><init>(Ljj$/sun/nio/cs/StandardCharsets-IA;)V

    move-object v0, v1

    iput-object v1, p0, Ljj$/sun/nio/cs/StandardCharsets;->classMap:Ljava/util/Map;

    :cond_d
    return-object v0
.end method

.method private init()V
    .registers 18

    move-object/from16 v0, p0

    iget-boolean v1, v0, Ljj$/sun/nio/cs/StandardCharsets;->initialized:Z

    if-eqz v1, :cond_7

    return-void

    :cond_7
    const/4 v1, 0x1

    iput-boolean v1, v0, Ljj$/sun/nio/cs/StandardCharsets;->initialized:Z

    const-string v1, "sun.nio.cs.map"

    invoke-static {v1}, Ljj$/sun/security/action/GetPropertyAction;->privilegedGetProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7b

    invoke-direct {v0}, Ljj$/sun/nio/cs/StandardCharsets;->aliasMap()Ljava/util/Map;

    move-result-object v2

    invoke-direct {v0}, Ljj$/sun/nio/cs/StandardCharsets;->classMap()Ljava/util/Map;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    :goto_21
    array-length v6, v4

    if-ge v5, v6, :cond_7b

    aget-object v6, v4, v5

    const-string v7, "Windows-31J/Shift_JIS"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_78

    const-string v6, "shift_jis"

    invoke-interface {v3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    if-eqz v7, :cond_7b

    const-string v7, "windows-31j"

    invoke-interface {v3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-nez v8, :cond_3f

    goto :goto_7b

    :cond_3f
    const-string v15, "csShiftJIS"

    const-string v16, "shift_jis"

    const-string v9, "MS932"

    const-string v10, "windows-932"

    const-string v11, "csWindows31J"

    const-string v12, "shift-jis"

    const-string v13, "ms_kanji"

    const-string v14, "x-sjis"

    filled-new-array/range {v9 .. v16}, [Ljava/lang/String;

    move-result-object v8

    sput-object v8, Ljj$/sun/nio/cs/StandardCharsets;->aliases_MS932:[Ljava/lang/String;

    const-string v8, "sjis"

    filled-new-array {v8}, [Ljava/lang/String;

    move-result-object v8

    sput-object v8, Ljj$/sun/nio/cs/StandardCharsets;->aliases_SJIS:[Ljava/lang/String;

    sget-object v8, Ljj$/sun/nio/cs/StandardCharsets;->aliases_MS932:[Ljava/lang/String;

    array-length v9, v8

    const/4 v10, 0x0

    :goto_61
    if-ge v10, v9, :cond_6f

    aget-object v11, v8, v10

    invoke-static {v11}, Ljj$/sun/nio/cs/StandardCharsets;->toLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-interface {v2, v12, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v10, v10, 0x1

    goto :goto_61

    :cond_6f
    invoke-direct {v0}, Ljj$/sun/nio/cs/StandardCharsets;->cache()Ljava/util/Map;

    move-result-object v7

    const/4 v8, 0x0

    invoke-interface {v7, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_7b

    :cond_78
    add-int/lit8 v5, v5, 0x1

    goto :goto_21

    :cond_7b
    :goto_7b
    return-void
.end method

.method private lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 9

    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->init()V

    const-string v0, "UTF-8"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Ljj$/sun/nio/cs/UTF_8;->INSTANCE:Ljj$/sun/nio/cs/UTF_8;

    return-object v0

    :cond_e
    const-string v0, "US-ASCII"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19

    sget-object v0, Ljj$/sun/nio/cs/US_ASCII;->INSTANCE:Ljj$/sun/nio/cs/US_ASCII;

    return-object v0

    :cond_19
    const-string v0, "ISO-8859-1"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24

    sget-object v0, Ljj$/sun/nio/cs/ISO_8859_1;->INSTANCE:Ljj$/sun/nio/cs/ISO_8859_1;

    return-object v0

    :cond_24
    invoke-static {p1}, Ljj$/sun/nio/cs/StandardCharsets;->toLower(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/sun/nio/cs/StandardCharsets;->canonicalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->cache()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/charset/Charset;

    if-eqz v1, :cond_39

    return-object v1

    :cond_39
    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->classMap()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x0

    if-nez v2, :cond_47

    return-object v3

    :cond_47
    :try_start_47
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sun.nio.cs."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    move-object v5, v4

    check-cast v5, Ljava/nio/charset/Charset;

    invoke-direct {p0, v0, v5}, Ljj$/sun/nio/cs/StandardCharsets;->cache(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v3
    :try_end_72
    .catch Ljava/lang/ClassNotFoundException; {:try_start_47 .. :try_end_72} :catch_77
    .catch Ljava/lang/IllegalAccessException; {:try_start_47 .. :try_end_72} :catch_75
    .catch Ljava/lang/InstantiationException; {:try_start_47 .. :try_end_72} :catch_73

    return-object v3

    :catch_73
    move-exception v4

    goto :goto_78

    :catch_75
    move-exception v4

    goto :goto_78

    :catch_77
    move-exception v4

    :goto_78
    return-object v3
.end method

.method private static toLower(Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    :goto_6
    if-ge v2, v0, :cond_18

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v4, v3, -0x41

    rsub-int/lit8 v5, v3, 0x5a

    or-int/2addr v4, v5

    if-ltz v4, :cond_15

    const/4 v1, 0x0

    goto :goto_18

    :cond_15
    add-int/lit8 v2, v2, 0x1

    goto :goto_6

    :cond_18
    :goto_18
    if-eqz v1, :cond_1b

    return-object p0

    :cond_1b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v3, 0x0

    :goto_21
    if-ge v3, v0, :cond_3c

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v4

    add-int/lit8 v5, v4, -0x41

    rsub-int/lit8 v6, v4, 0x5a

    or-int/2addr v5, v6

    if-ltz v5, :cond_35

    add-int/lit8 v5, v4, 0x20

    int-to-char v5, v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_39

    :cond_35
    int-to-char v5, v4

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_39
    add-int/lit8 v3, v3, 0x1

    goto :goto_21

    :cond_3c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public final charsetForName(Ljava/lang/String;)Ljava/nio/charset/Charset;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0, p1}, Ljj$/sun/nio/cs/StandardCharsets;->lookup(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    monitor-exit p0

    return-object v0

    :catchall_7
    move-exception v0

    monitor-exit p0
    :try_end_9
    .catchall {:try_start_1 .. :try_end_9} :catchall_7

    throw v0
.end method

.method public final charsets()Ljava/util/Iterator;
    .registers 3

    monitor-enter p0

    :try_start_1
    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->init()V

    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->classMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->aliasMap()Ljava/util/Map;

    invoke-direct {p0}, Ljj$/sun/nio/cs/StandardCharsets;->cache()Ljava/util/Map;

    monitor-exit p0
    :try_end_13
    .catchall {:try_start_1 .. :try_end_13} :catchall_19

    new-instance v1, Ljj$/sun/nio/cs/StandardCharsets$1;

    invoke-direct {v1, p0, v0}, Ljj$/sun/nio/cs/StandardCharsets$1;-><init>(Ljj$/sun/nio/cs/StandardCharsets;Ljava/util/Set;)V

    return-object v1

    :catchall_19
    move-exception v0

    :try_start_1a
    monitor-exit p0
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v0
.end method
