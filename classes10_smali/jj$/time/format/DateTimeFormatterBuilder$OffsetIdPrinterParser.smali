.class final Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# static fields
.field static final INSTANCE_ID_Z:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final INSTANCE_ID_ZERO:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

.field static final PATTERNS:[Ljava/lang/String;


# instance fields
.field private final noOffsetText:Ljava/lang/String;

.field private final style:I

.field private final type:I


# direct methods
.method static constructor <clinit>()V
    .registers 23

    const-string v21, "+Hmmss"

    const-string v22, "+H:mm:ss"

    const-string v1, "+HH"

    const-string v2, "+HHmm"

    const-string v3, "+HH:mm"

    const-string v4, "+HHMM"

    const-string v5, "+HH:MM"

    const-string v6, "+HHMMss"

    const-string v7, "+HH:MM:ss"

    const-string v8, "+HHMMSS"

    const-string v9, "+HH:MM:SS"

    const-string v10, "+HHmmss"

    const-string v11, "+HH:mm:ss"

    const-string v12, "+H"

    const-string v13, "+Hmm"

    const-string v14, "+H:mm"

    const-string v15, "+HMM"

    const-string v16, "+H:MM"

    const-string v17, "+HMMss"

    const-string v18, "+H:MM:ss"

    const-string v19, "+HMMSS"

    const-string v20, "+H:MM:SS"

    filled-new-array/range {v1 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v1, "Z"

    const-string v2, "+HH:MM:ss"

    invoke-direct {v0, v2, v1}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    const-string v1, "0"

    invoke-direct {v0, v2, v1}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_ZERO:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "noOffsetText"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->checkPattern(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    rem-int/lit8 v0, v0, 0xb

    iput v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    iput-object p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    return-void
.end method

.method private checkPattern(Ljava/lang/String;)I
    .registers 5

    const/4 v0, 0x0

    :goto_1
    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    return v0

    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid zone offset pattern: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private formatZeroPad(ZILjava/lang/StringBuilder;)V
    .registers 6

    if-eqz p1, :cond_5

    const-string v0, ":"

    goto :goto_7

    :cond_5
    const-string v0, ""

    :goto_7
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    div-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    rem-int/lit8 v1, p2, 0xa

    add-int/lit8 v1, v1, 0x30

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private isColon()Z
    .registers 2

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-lez v0, :cond_c

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method private isPaddedHour()Z
    .registers 3

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method private parseDigits(Ljava/lang/CharSequence;ZI[I)Z
    .registers 12

    const/4 v0, 0x0

    aget v1, p4, v0

    const/4 v2, 0x1

    if-gez v1, :cond_7

    return v2

    :cond_7
    if-eqz p2, :cond_20

    if-eq p3, v2, :cond_20

    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-gt v3, v4, :cond_1f

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0x3a

    if-eq v3, v4, :cond_1c

    goto :goto_1f

    :cond_1c
    add-int/lit8 v1, v1, 0x1

    goto :goto_20

    :cond_1f
    :goto_1f
    return v0

    :cond_20
    :goto_20
    add-int/lit8 v3, v1, 0x2

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-le v3, v4, :cond_29

    return v0

    :cond_29
    add-int/lit8 v3, v1, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v4, v3, 0x1

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v5, 0x30

    if-lt v1, v5, :cond_56

    const/16 v6, 0x39

    if-gt v1, v6, :cond_56

    if-lt v3, v5, :cond_56

    if-le v3, v6, :cond_42

    goto :goto_56

    :cond_42
    add-int/lit8 v5, v1, -0x30

    mul-int/lit8 v5, v5, 0xa

    add-int/lit8 v6, v3, -0x30

    add-int/2addr v5, v6

    if-ltz v5, :cond_55

    const/16 v6, 0x3b

    if-le v5, v6, :cond_50

    goto :goto_55

    :cond_50
    aput v5, p4, p3

    aput v4, p4, v0

    return v2

    :cond_55
    :goto_55
    return v0

    :cond_56
    :goto_56
    return v0
.end method

.method private parseHour(Ljava/lang/CharSequence;Z[I)V
    .registers 6

    const/4 v0, 0x1

    if-eqz p2, :cond_10

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0, p3}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_14

    aget v0, p3, v1

    not-int v0, v0

    aput v0, p3, v1

    goto :goto_14

    :cond_10
    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, p3}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    :cond_14
    :goto_14
    return-void
.end method

.method private parseMinute(Ljava/lang/CharSequence;ZZ[I)V
    .registers 7

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p4}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p3, :cond_f

    const/4 v0, 0x0

    aget v1, p4, v0

    not-int v1, v1

    aput v1, p4, v0

    :cond_f
    return-void
.end method

.method private parseOptionalMinuteSecond(Ljava/lang/CharSequence;Z[I)V
    .registers 5

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0, p3}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p3}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    :cond_b
    return-void
.end method

.method private parseSecond(Ljava/lang/CharSequence;ZZ[I)V
    .registers 7

    const/4 v0, 0x3

    invoke-direct {p0, p1, p2, v0, p4}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseDigits(Ljava/lang/CharSequence;ZI[I)Z

    move-result v0

    if-nez v0, :cond_f

    if-eqz p3, :cond_f

    const/4 v0, 0x0

    aget v1, p4, v0

    not-int v1, v1

    aput v1, p4, v0

    :cond_f
    return-void
.end method

.method private parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V
    .registers 16

    const/4 v0, 0x0

    aget v1, p4, v0

    const/4 v2, 0x0

    new-array v3, p3, [C

    const/4 v4, 0x0

    :goto_7
    const/16 v5, 0x30

    if-ge v4, p3, :cond_2d

    add-int/lit8 v6, v1, 0x1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v7

    if-le v6, v7, :cond_14

    goto :goto_2d

    :cond_14
    add-int/lit8 v6, v1, 0x1

    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-lt v1, v5, :cond_2a

    const/16 v7, 0x39

    if-le v1, v7, :cond_21

    goto :goto_2a

    :cond_21
    aput-char v1, v3, v4

    nop

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v4, v4, 0x1

    move v1, v6

    goto :goto_7

    :cond_2a
    :goto_2a
    add-int/lit8 v6, v6, -0x1

    move v1, v6

    :cond_2d
    :goto_2d
    if-ge v2, p2, :cond_35

    aget v4, p4, v0

    not-int v4, v4

    aput v4, p4, v0

    return-void

    :cond_35
    const/4 v4, 0x4

    const/4 v6, 0x3

    const/4 v7, 0x2

    const/4 v8, 0x1

    packed-switch v2, :pswitch_data_ba

    goto/16 :goto_b7

    :pswitch_3e  #0x6
    aget-char v9, v3, v0

    sub-int/2addr v9, v5

    mul-int/lit8 v9, v9, 0xa

    aget-char v10, v3, v8

    sub-int/2addr v10, v5

    add-int/2addr v9, v10

    aput v9, p4, v8

    aget-char v8, v3, v7

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    aget-char v9, v3, v6

    sub-int/2addr v9, v5

    add-int/2addr v8, v9

    aput v8, p4, v7

    aget-char v4, v3, v4

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    const/4 v7, 0x5

    aget-char v7, v3, v7

    sub-int/2addr v7, v5

    add-int/2addr v4, v7

    aput v4, p4, v6

    goto :goto_b7

    :pswitch_61  #0x5
    aget-char v9, v3, v0

    sub-int/2addr v9, v5

    aput v9, p4, v8

    aget-char v8, v3, v8

    sub-int/2addr v8, v5

    mul-int/lit8 v8, v8, 0xa

    aget-char v9, v3, v7

    sub-int/2addr v9, v5

    add-int/2addr v8, v9

    aput v8, p4, v7

    aget-char v7, v3, v6

    sub-int/2addr v7, v5

    mul-int/lit8 v7, v7, 0xa

    aget-char v4, v3, v4

    sub-int/2addr v4, v5

    add-int/2addr v7, v4

    aput v7, p4, v6

    goto :goto_b7

    :pswitch_7d  #0x4
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v9, v3, v8

    sub-int/2addr v9, v5

    add-int/2addr v4, v9

    aput v4, p4, v8

    aget-char v4, v3, v7

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v6

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v7

    goto :goto_b7

    :pswitch_94  #0x3
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    aput v4, p4, v8

    aget-char v4, v3, v8

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v7

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v7

    goto :goto_b7

    :pswitch_a5  #0x2
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    mul-int/lit8 v4, v4, 0xa

    aget-char v6, v3, v8

    sub-int/2addr v6, v5

    add-int/2addr v4, v6

    aput v4, p4, v8

    goto :goto_b7

    :pswitch_b1  #0x1
    aget-char v4, v3, v0

    sub-int/2addr v4, v5

    aput v4, p4, v8

    nop

    :goto_b7
    aput v1, p4, v0

    return-void

    :pswitch_data_ba
    .packed-switch 0x1
        :pswitch_b1  #00000001
        :pswitch_a5  #00000002
        :pswitch_94  #00000003
        :pswitch_7d  #00000004
        :pswitch_61  #00000005
        :pswitch_3e  #00000006
    .end packed-switch
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 14

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljj$/time/LocalDate$$ExternalSyntheticBackport0;->m(J)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1c

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_99

    :cond_1c
    div-int/lit16 v4, v2, 0xe10

    rem-int/lit8 v4, v4, 0x64

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    div-int/lit8 v5, v2, 0x3c

    rem-int/lit8 v5, v5, 0x3c

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    rem-int/lit8 v6, v2, 0x3c

    invoke-static {v6}, Ljava/lang/Math;->abs(I)I

    move-result v6

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    move v8, v4

    if-gez v2, :cond_3c

    const-string v9, "-"

    goto :goto_3e

    :cond_3c
    const-string v9, "+"

    :goto_3e
    invoke-virtual {p2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isPaddedHour()Z

    move-result v9

    if-nez v9, :cond_53

    const/16 v9, 0xa

    if-lt v4, v9, :cond_4c

    goto :goto_53

    :cond_4c
    add-int/lit8 v1, v4, 0x30

    int-to-char v1, v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_56

    :cond_53
    :goto_53
    invoke-direct {p0, v1, v4, p2}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    :goto_56
    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x3

    const/16 v10, 0x8

    if-lt v1, v9, :cond_61

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-le v1, v10, :cond_6f

    :cond_61
    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/16 v9, 0x9

    if-lt v1, v9, :cond_69

    if-gtz v6, :cond_6f

    :cond_69
    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-lt v1, v3, :cond_8f

    if-lez v5, :cond_8f

    :cond_6f
    invoke-direct {p0}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v1

    invoke-direct {p0, v1, v5, p2}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    add-int/2addr v8, v5

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x7

    if-eq v1, v9, :cond_87

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    if-eq v1, v10, :cond_87

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->style:I

    const/4 v9, 0x5

    if-lt v1, v9, :cond_8f

    if-lez v6, :cond_8f

    :cond_87
    invoke-direct {p0}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v1

    invoke-direct {p0, v1, v6, p2}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->formatZeroPad(ZILjava/lang/StringBuilder;)V

    add-int/2addr v8, v6

    :cond_8f
    if-nez v8, :cond_99

    invoke-virtual {p2, v7}, Ljava/lang/StringBuilder;->setLength(I)V

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_99
    :goto_99
    return v3
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 24

    move-object/from16 v0, p0

    move/from16 v5, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v7

    iget-object v1, v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v8

    if-nez v8, :cond_23

    if-ne v5, v7, :cond_1f

    sget-object v2, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move/from16 v6, p3

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    :cond_1f
    move v9, v8

    move-object/from16 v8, p2

    goto :goto_48

    :cond_23
    if-ne v5, v7, :cond_27

    not-int v1, v5

    return v1

    :cond_27
    iget-object v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move v6, v8

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result v4

    move-object v8, v2

    move v9, v6

    if-eqz v4, :cond_48

    sget-object v2, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    add-int v6, p3, v9

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v2

    return v2

    :cond_48
    :goto_48
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v1, 0x2b

    const/16 v2, 0x2d

    if-eq v10, v1, :cond_54

    if-ne v10, v2, :cond_14b

    :cond_54
    const/4 v1, 0x1

    if-ne v10, v2, :cond_59

    const/4 v2, -0x1

    goto :goto_5a

    :cond_59
    const/4 v2, 0x1

    :goto_5a
    move v11, v2

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isColon()Z

    move-result v2

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->isPaddedHour()Z

    move-result v12

    const/4 v3, 0x4

    new-array v13, v3, [I

    add-int/lit8 v4, p3, 0x1

    const/4 v5, 0x0

    aput v4, v13, v5

    iget v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-nez v6, :cond_b9

    const/16 v6, 0x3a

    if-eqz v12, :cond_93

    if-nez v2, :cond_8d

    if-nez v4, :cond_88

    add-int/lit8 v14, p3, 0x3

    if-le v7, v14, :cond_88

    add-int/lit8 v14, p3, 0x3

    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v6, :cond_88

    goto :goto_8d

    :cond_88
    const/16 v4, 0x9

    move v14, v2

    move v15, v4

    goto :goto_bb

    :cond_8d
    :goto_8d
    const/4 v2, 0x1

    const/16 v4, 0xa

    move v14, v2

    move v15, v4

    goto :goto_bb

    :cond_93
    if-nez v2, :cond_b3

    const/16 v14, 0xb

    if-ne v4, v14, :cond_ae

    add-int/lit8 v14, p3, 0x3

    if-le v7, v14, :cond_ae

    add-int/lit8 v14, p3, 0x2

    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-eq v14, v6, :cond_b3

    add-int/lit8 v14, p3, 0x3

    invoke-interface {v8, v14}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v14

    if-ne v14, v6, :cond_ae

    goto :goto_b3

    :cond_ae
    const/16 v4, 0x14

    move v14, v2

    move v15, v4

    goto :goto_bb

    :cond_b3
    :goto_b3
    const/4 v2, 0x1

    const/16 v4, 0x15

    move v14, v2

    move v15, v4

    goto :goto_bb

    :cond_b9
    move v14, v2

    move v15, v4

    :goto_bb
    const/4 v2, 0x6

    const/4 v4, 0x3

    packed-switch v15, :pswitch_data_160

    goto :goto_103

    :pswitch_c1  #0x14
    invoke-direct {v0, v8, v1, v2, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    goto :goto_103

    :pswitch_c5  #0x12
    const/4 v3, 0x5

    invoke-direct {v0, v8, v3, v2, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    goto :goto_103

    :pswitch_ca  #0x10
    invoke-direct {v0, v8, v4, v2, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    goto :goto_103

    :pswitch_ce  #0xe
    invoke-direct {v0, v8, v4, v3, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    goto :goto_103

    :pswitch_d2  #0xc
    invoke-direct {v0, v8, v1, v3, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseVariableWidthDigits(Ljava/lang/CharSequence;II[I)V

    goto :goto_103

    :pswitch_d6  #0x9, 0xa, 0x15
    invoke-direct {v0, v8, v12, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    invoke-direct {v0, v8, v14, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseOptionalMinuteSecond(Ljava/lang/CharSequence;Z[I)V

    goto :goto_103

    :pswitch_dd  #0x7, 0x8, 0x13
    invoke-direct {v0, v8, v12, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    invoke-direct {v0, v8, v14, v1, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    invoke-direct {v0, v8, v14, v1, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseSecond(Ljava/lang/CharSequence;ZZ[I)V

    goto :goto_103

    :pswitch_e7  #0x5, 0x6, 0x11
    invoke-direct {v0, v8, v12, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    invoke-direct {v0, v8, v14, v1, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    invoke-direct {v0, v8, v14, v5, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseSecond(Ljava/lang/CharSequence;ZZ[I)V

    goto :goto_103

    :pswitch_f1  #0x3, 0x4, 0xf
    invoke-direct {v0, v8, v12, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    invoke-direct {v0, v8, v14, v1, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    goto :goto_103

    :pswitch_f8  #0x1, 0x2, 0xd
    invoke-direct {v0, v8, v12, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    invoke-direct {v0, v8, v14, v5, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseMinute(Ljava/lang/CharSequence;ZZ[I)V

    goto :goto_103

    :pswitch_ff  #0x0, 0xb
    invoke-direct {v0, v8, v12, v13}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->parseHour(Ljava/lang/CharSequence;Z[I)V

    nop

    :goto_103
    aget v2, v13, v5

    if-lez v2, :cond_14b

    aget v2, v13, v1

    const/16 v3, 0x17

    if-gt v2, v3, :cond_143

    const/4 v2, 0x2

    aget v3, v13, v2

    const/16 v6, 0x3b

    if-gt v3, v6, :cond_143

    aget v3, v13, v4

    if-gt v3, v6, :cond_143

    const/4 v3, 0x1

    const/4 v6, 0x2

    int-to-long v1, v11

    aget v3, v13, v3

    const/16 v16, 0x0

    const/16 v17, 0x3

    int-to-long v4, v3

    const-wide/16 v18, 0xe10

    mul-long v4, v4, v18

    aget v3, v13, v6

    move-wide/from16 v18, v1

    int-to-long v0, v3

    const-wide/16 v2, 0x3c

    mul-long v0, v0, v2

    add-long/2addr v4, v0

    aget v0, v13, v17

    int-to-long v0, v0

    add-long/2addr v4, v0

    mul-long v3, v18, v4

    sget-object v2, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    aget v6, v13, v16

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    :cond_143
    new-instance v0, Ljj$/time/DateTimeException;

    const-string v1, "Value out of range: Hour[0-23], Minute[0-59], Second[0-59]"

    invoke-direct {v0, v1}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_14b
    if-nez v9, :cond_15c

    sget-object v2, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    const-wide/16 v3, 0x0

    move/from16 v6, p3

    move-object/from16 v1, p1

    move/from16 v5, p3

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result v0

    return v0

    :cond_15c
    move/from16 v5, p3

    not-int v0, v5

    return v0

    :pswitch_data_160
    .packed-switch 0x0
        :pswitch_ff  #00000000
        :pswitch_f8  #00000001
        :pswitch_f8  #00000002
        :pswitch_f1  #00000003
        :pswitch_f1  #00000004
        :pswitch_e7  #00000005
        :pswitch_e7  #00000006
        :pswitch_dd  #00000007
        :pswitch_dd  #00000008
        :pswitch_d6  #00000009
        :pswitch_d6  #0000000a
        :pswitch_ff  #0000000b
        :pswitch_d2  #0000000c
        :pswitch_f8  #0000000d
        :pswitch_ce  #0000000e
        :pswitch_f1  #0000000f
        :pswitch_ca  #00000010
        :pswitch_e7  #00000011
        :pswitch_c5  #00000012
        :pswitch_dd  #00000013
        :pswitch_c1  #00000014
        :pswitch_d6  #00000015
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->noOffsetText:Ljava/lang/String;

    const-string v1, "\'"

    const-string v2, "\'\'"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->type:I

    aget-object v1, v1, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Offset("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
