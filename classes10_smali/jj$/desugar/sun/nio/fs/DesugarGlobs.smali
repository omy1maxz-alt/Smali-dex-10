.class public Ljj$/desugar/sun/nio/fs/DesugarGlobs;
.super Ljava/lang/Object;
.source "DesugarGlobs.java"


# static fields
.field private static EOL:C = '\u0000'

.field private static final globMetaChars:Ljava/lang/String; = "\\*?[{"

.field private static final regexMetaChars:Ljava/lang/String; = ".^$+{[]|()"


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-char v0, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->EOL:C

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static isGlobMeta(C)Z
    .registers 3

    const-string v0, "\\*?[{"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static isRegexMeta(C)Z
    .registers 3

    const-string v0, ".^$+{[]|()"

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_b

    const/4 v0, 0x1

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method private static next(Ljava/lang/String;I)C
    .registers 3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_b

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    return v0

    :cond_b
    sget-char v0, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->EOL:C

    return v0
.end method

.method private static toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;
    .registers 14

    const/4 v0, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "^"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    :goto_9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_17c

    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v4, 0x5c

    sparse-switch v2, :sswitch_data_194

    invoke-static {v2}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->isRegexMeta(C)Z

    move-result v5

    if-eqz v5, :cond_176

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_176

    :sswitch_25
    if-eqz v0, :cond_30

    const-string v4, "))"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    move v2, v3

    goto/16 :goto_17a

    :cond_30
    const/16 v4, 0x7d

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_179

    :sswitch_37
    if-nez v0, :cond_42

    const-string v4, "(?:(?:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    move v2, v3

    goto/16 :goto_17a

    :cond_42
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "Cannot nest groups"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    :sswitch_4c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    if-eq v3, v5, :cond_6d

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->isGlobMeta(C)Z

    move-result v6

    if-nez v6, :cond_64

    invoke-static {v3}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->isRegexMeta(C)Z

    move-result v6

    if-eqz v6, :cond_67

    :cond_64
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_67
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v2, v5

    goto/16 :goto_17a

    :cond_6d
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v5, v3, -0x1

    const-string v6, "No character to escape"

    invoke-direct {v4, v6, p0, v5}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    :sswitch_77
    if-eqz p1, :cond_7f

    const-string v5, "[[^\\\\]&&["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_84

    :cond_7f
    const-string v5, "[[^/]&&["

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_84
    invoke-static {p0, v3}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v5

    const/16 v6, 0x5e

    const/16 v7, 0x2d

    if-ne v5, v6, :cond_96

    const-string v5, "\\^"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_ae

    :cond_96
    invoke-static {p0, v3}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v5

    const/16 v8, 0x21

    if-ne v5, v8, :cond_a3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_a3
    invoke-static {p0, v3}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v5

    if-ne v5, v7, :cond_ae

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    :cond_ae
    :goto_ae
    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_b0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0x5d

    if-ge v3, v8, :cond_11c

    add-int/lit8 v8, v3, 0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v9, :cond_c2

    move v3, v8

    goto :goto_11c

    :cond_c2
    const/16 v3, 0x2f

    if-eq v2, v3, :cond_112

    if-eqz p1, :cond_ca

    if-eq v2, v4, :cond_112

    :cond_ca
    if-eq v2, v4, :cond_da

    const/16 v3, 0x5b

    if-eq v2, v3, :cond_da

    const/16 v3, 0x26

    if-ne v2, v3, :cond_dd

    invoke-static {p0, v8}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v10

    if-ne v10, v3, :cond_dd

    :cond_da
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_dd
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    if-ne v2, v7, :cond_10e

    const-string v3, "Invalid range"

    if-eqz v5, :cond_106

    add-int/lit8 v10, v8, 0x1

    invoke-static {p0, v8}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v8

    move v2, v8

    sget-char v11, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->EOL:C

    if-eq v8, v11, :cond_104

    if-ne v2, v9, :cond_f4

    goto :goto_104

    :cond_f4
    if-lt v2, v6, :cond_fc

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v5, 0x0

    move v3, v10

    goto :goto_b0

    :cond_fc
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v10, -0x3

    invoke-direct {v4, v3, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    :cond_104
    :goto_104
    move v3, v10

    goto :goto_11c

    :cond_106
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v8, -0x1

    invoke-direct {v4, v3, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    :cond_10e
    const/4 v5, 0x1

    move v6, v2

    move v3, v8

    goto :goto_b0

    :cond_112
    new-instance v3, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v4, v8, -0x1

    const-string v7, "Explicit \'name separator\' in class"

    invoke-direct {v3, v7, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    :cond_11c
    :goto_11c
    if-ne v2, v9, :cond_125

    const-string v4, "]]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v3

    goto :goto_17a

    :cond_125
    new-instance v4, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v7, v3, -0x1

    const-string v8, "Missing \']"

    invoke-direct {v4, v8, p0, v7}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v4

    :sswitch_12f
    if-eqz p1, :cond_137

    const-string v4, "[^\\\\]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    :cond_137
    const-string v4, "[^/]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    :sswitch_13d
    if-eqz p1, :cond_145

    const-string v4, "\\\\"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    :cond_145
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_179

    :sswitch_149
    if-eqz v0, :cond_151

    const-string v4, ")|(?:"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    :cond_151
    const/16 v4, 0x2c

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_179

    :sswitch_157
    invoke-static {p0, v3}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->next(Ljava/lang/String;I)C

    move-result v4

    const/16 v5, 0x2a

    if-ne v4, v5, :cond_168

    const-string v4, ".*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    move v2, v3

    goto :goto_17a

    :cond_168
    if-eqz p1, :cond_170

    const-string v4, "[^\\\\]*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    :cond_170
    const-string v4, "[^/]*"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_179

    :cond_176
    :goto_176
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_179
    move v2, v3

    :goto_17a
    goto/16 :goto_9

    :cond_17c
    if-nez v0, :cond_189

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_189
    new-instance v3, Ljava/util/regex/PatternSyntaxException;

    add-int/lit8 v4, v2, -0x1

    const-string v5, "Missing \'}"

    invoke-direct {v3, v5, p0, v4}, Ljava/util/regex/PatternSyntaxException;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    throw v3

    nop

    :sswitch_data_194
    .sparse-switch
        0x2a -> :sswitch_157
        0x2c -> :sswitch_149
        0x2f -> :sswitch_13d
        0x3f -> :sswitch_12f
        0x5b -> :sswitch_77
        0x5c -> :sswitch_4c
        0x7b -> :sswitch_37
        0x7d -> :sswitch_25
    .end sparse-switch
.end method

.method static toUnixRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static toWindowsRegexPattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 2

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljj$/desugar/sun/nio/fs/DesugarGlobs;->toRegexPattern(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
