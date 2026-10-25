.class final Ljj$/time/format/DateTimeFormatterBuilderHelper;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilderHelper.java"


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static rewriteIcuDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const/16 v1, 0x20

    const/4 v2, 0x0

    :goto_c
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v2, v3, :cond_31

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_4a

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2d

    :sswitch_1d
    goto :goto_2d

    :sswitch_1e
    if-eqz v2, :cond_29

    const/16 v4, 0x42

    if-eq v1, v4, :cond_28

    const/16 v4, 0x62

    if-ne v1, v4, :cond_29

    :cond_28
    goto :goto_2d

    :cond_29
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    :goto_2d
    move v1, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    :cond_31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ltz v2, :cond_44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    const/16 v4, 0x20

    if-ne v3, v4, :cond_44

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    :cond_44
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    nop

    :sswitch_data_4a
    .sparse-switch
        0x20 -> :sswitch_1e
        0x42 -> :sswitch_1d
        0x62 -> :sswitch_1d
    .end sparse-switch
.end method

.method static transformAndroidJavaTextDateTimePattern(Ljava/lang/String;)Ljava/lang/String;
    .registers 6

    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    :cond_4
    const/16 v0, 0x42

    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    if-eq v0, v3, :cond_11

    const/4 v0, 0x1

    goto :goto_12

    :cond_11
    const/4 v0, 0x0

    :goto_12
    const/16 v4, 0x62

    invoke-virtual {p0, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v3, :cond_1b

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    :goto_1c
    if-nez v0, :cond_20

    if-eqz v1, :cond_24

    :cond_20
    invoke-static {p0}, Ljj$/time/format/DateTimeFormatterBuilderHelper;->rewriteIcuDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_24
    return-object p0
.end method
