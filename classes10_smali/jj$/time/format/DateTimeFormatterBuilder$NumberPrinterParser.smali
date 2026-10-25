.class Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# static fields
.field static final EXCEED_POINTS:[J


# instance fields
.field final field:Ljj$/time/temporal/TemporalField;

.field final maxWidth:I

.field final minWidth:I

.field private final signStyle:Ljj$/time/format/SignStyle;

.field final subsequentWidth:I


# direct methods
.method static bridge synthetic -$$Nest$fgetsignStyle(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/SignStyle;
    .registers 1

    iget-object p0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0xb

    new-array v0, v0, [J

    fill-array-data v0, :array_a

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    return-void

    :array_a
    .array-data 8
        0x0
        0xa
        0x64
        0x3e8
        0x2710
        0x186a0
        0xf4240
        0x989680
        0x5f5e100
        0x3b9aca00
        0x2540be400L
    .end array-data
.end method

.method constructor <init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iput p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iput p3, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iput-object p4, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    const/4 v0, 0x0

    iput v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    return-void
.end method

.method protected constructor <init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;I)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iput p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iput p3, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iput-object p4, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    iput p5, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    return-void
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 14

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v1, 0x0

    return v1

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {p0, p1, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->getValue(Ljj$/time/format/DateTimePrintContext;J)J

    move-result-wide v1

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v3

    const-wide/high16 v4, -0x8000000000000000L

    cmp-long v6, v1, v4

    if-nez v6, :cond_1f

    const-string v4, "9223372036854775808"

    goto :goto_27

    :cond_1f
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v4

    :goto_27
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    iget v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v7, " cannot be printed as the value "

    const-string v8, "Field "

    if-gt v5, v6, :cond_c1

    invoke-virtual {v3, v4}, Ljj$/time/format/DecimalStyle;->convertNumberToI18N(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-wide/16 v5, 0x0

    cmp-long v9, v1, v5

    if-ltz v9, :cond_6b

    sget-object v5, Ljj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    invoke-virtual {v6}, Ljj$/time/format/SignStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_ee

    goto :goto_6a

    :pswitch_4b  #0x2
    invoke-virtual {v3}, Ljj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6a

    :pswitch_53  #0x1
    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/16 v6, 0x13

    if-ge v5, v6, :cond_6a

    sget-object v5, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->EXCEED_POINTS:[J

    iget v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    aget-wide v6, v5, v6

    cmp-long v5, v1, v6

    if-ltz v5, :cond_6a

    invoke-virtual {v3}, Ljj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6a
    :goto_6a
    goto :goto_a8

    :cond_6b
    sget-object v5, Ljj$/time/format/DateTimeFormatterBuilder$3;->$SwitchMap$java$time$format$SignStyle:[I

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    invoke-virtual {v6}, Ljj$/time/format/SignStyle;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_f6

    goto :goto_a8

    :pswitch_79  #0x4
    new-instance v5, Ljj$/time/DateTimeException;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " cannot be negative according to the SignStyle"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_a0  #0x1, 0x2, 0x3
    invoke-virtual {v3}, Ljj$/time/format/DecimalStyle;->getNegativeSign()C

    move-result v5

    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    nop

    :goto_a8
    const/4 v5, 0x0

    :goto_a9
    iget v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v6, v7

    if-ge v5, v6, :cond_bc

    invoke-virtual {v3}, Ljj$/time/format/DecimalStyle;->getZeroDigit()C

    move-result v6

    invoke-virtual {p2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a9

    :cond_bc
    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v5, 0x1

    return v5

    :cond_c1
    new-instance v5, Ljj$/time/DateTimeException;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v9, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " exceeds the maximum print width of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v5

    :pswitch_data_ee
    .packed-switch 0x1
        :pswitch_53  #00000001
        :pswitch_4b  #00000002
    .end packed-switch

    :pswitch_data_f6
    .packed-switch 0x1
        :pswitch_a0  #00000001
        :pswitch_a0  #00000002
        :pswitch_a0  #00000003
        :pswitch_79  #00000004
    .end packed-switch
.end method

.method getValue(Ljj$/time/format/DateTimePrintContext;J)J
    .registers 4

    return-wide p2
.end method

.method isFixedWidth(Ljj$/time/format/DateTimeParseContext;)Z
    .registers 4

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_18

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v0, :cond_16

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    sget-object v1, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    if-ne v0, v1, :cond_16

    goto :goto_18

    :cond_16
    const/4 v0, 0x0

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v0, 0x1

    :goto_19
    return v0
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 27

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-interface/range {p2 .. p2}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ne v1, v6, :cond_c

    not-int v2, v1

    return v2

    :cond_c
    invoke-interface/range {p2 .. p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/format/DecimalStyle;->getPositiveSign()C

    move-result v4

    const/4 v5, 0x0

    const/4 v8, 0x1

    if-ne v7, v4, :cond_3c

    iget-object v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_2c

    const/4 v10, 0x1

    goto :goto_2d

    :cond_2c
    const/4 v10, 0x0

    :goto_2d
    invoke-virtual {v4, v8, v9, v10}, Ljj$/time/format/SignStyle;->parse(ZZZ)Z

    move-result v4

    if-nez v4, :cond_35

    not-int v4, v1

    return v4

    :cond_35
    const/4 v3, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v1

    move v9, v2

    move v10, v3

    goto :goto_75

    :cond_3c
    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v4

    invoke-virtual {v4}, Ljj$/time/format/DecimalStyle;->getNegativeSign()C

    move-result v4

    if-ne v7, v4, :cond_64

    iget-object v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v9

    iget v10, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v11, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v10, v11, :cond_54

    const/4 v10, 0x1

    goto :goto_55

    :cond_54
    const/4 v10, 0x0

    :goto_55
    invoke-virtual {v4, v5, v9, v10}, Ljj$/time/format/SignStyle;->parse(ZZZ)Z

    move-result v4

    if-nez v4, :cond_5d

    not-int v4, v1

    return v4

    :cond_5d
    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    move v4, v1

    move v9, v2

    move v10, v3

    goto :goto_75

    :cond_64
    iget-object v4, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    sget-object v9, Ljj$/time/format/SignStyle;->ALWAYS:Ljj$/time/format/SignStyle;

    if-ne v4, v9, :cond_72

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v4

    if-eqz v4, :cond_72

    not-int v4, v1

    return v4

    :cond_72
    move v4, v1

    move v9, v2

    move v10, v3

    :goto_75
    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_81

    invoke-virtual/range {p0 .. p1}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljj$/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_83

    :cond_81
    iget v8, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    :cond_83
    add-int v11, v4, v8

    if-le v11, v6, :cond_89

    not-int v1, v4

    return v1

    :cond_89
    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v1

    if-nez v1, :cond_99

    invoke-virtual/range {p0 .. p1}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->isFixedWidth(Ljj$/time/format/DateTimeParseContext;)Z

    move-result v1

    if-eqz v1, :cond_96

    goto :goto_99

    :cond_96
    const/16 v1, 0x9

    goto :goto_9b

    :cond_99
    :goto_99
    iget v1, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    :goto_9b
    iget v2, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/2addr v1, v2

    const-wide/16 v2, 0x0

    const/4 v5, 0x0

    move v12, v4

    const/4 v13, 0x0

    move/from16 v21, v12

    move v12, v1

    move/from16 v1, v21

    :goto_ac
    const/4 v14, 0x2

    if-ge v13, v14, :cond_130

    add-int v14, v1, v12

    invoke-static {v14, v6}, Ljava/lang/Math;->min(II)I

    move-result v14

    :goto_b5
    if-ge v1, v14, :cond_108

    add-int/lit8 v15, v1, 0x1

    move/from16 v16, v6

    move-object/from16 v6, p2

    invoke-interface {v6, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    move-wide/from16 v17, v2

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->getDecimalStyle()Ljj$/time/format/DecimalStyle;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljj$/time/format/DecimalStyle;->convertToDigit(C)I

    move-result v2

    if-gez v2, :cond_d6

    add-int/lit8 v15, v15, -0x1

    if-ge v15, v11, :cond_d3

    not-int v3, v4

    return v3

    :cond_d3
    move-object v3, v5

    move v1, v15

    goto :goto_10d

    :cond_d6
    sub-int v3, v15, v4

    move/from16 p3, v1

    const/16 v1, 0x12

    if-le v3, v1, :cond_f7

    if-nez v5, :cond_e4

    invoke-static/range {v17 .. v18}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    :cond_e4
    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v5, v1}, Ljava/math/BigInteger;->multiply(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v1

    move-object v3, v5

    int-to-long v5, v2

    invoke-static {v5, v6}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/math/BigInteger;->add(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v5

    move-wide/from16 v2, v17

    goto :goto_104

    :cond_f7
    const-wide/16 v19, 0xa

    mul-long v19, v19, v17

    move-object v3, v5

    int-to-long v5, v2

    add-long v5, v19, v5

    move-wide/from16 v21, v5

    move-object v5, v3

    move-wide/from16 v2, v21

    :goto_104
    move v1, v15

    move/from16 v6, v16

    goto :goto_b5

    :cond_108
    move-wide/from16 v17, v2

    move-object v3, v5

    move/from16 v16, v6

    :goto_10d
    iget v2, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    if-lez v2, :cond_12b

    if-nez v13, :cond_12b

    sub-int v2, v1, v4

    iget v5, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    sub-int v5, v2, v5

    invoke-static {v8, v5}, Ljava/lang/Math;->max(II)I

    move-result v12

    move v1, v4

    const-wide/16 v5, 0x0

    const/4 v2, 0x0

    add-int/lit8 v13, v13, 0x1

    move-wide/from16 v21, v5

    move-object v5, v2

    move-wide/from16 v2, v21

    move/from16 v6, v16

    goto :goto_ac

    :cond_12b
    move v5, v1

    move-object v1, v3

    move-wide/from16 v2, v17

    goto :goto_137

    :cond_130
    move/from16 v16, v6

    move-object/from16 v21, v5

    move v5, v1

    move-object/from16 v1, v21

    :goto_137
    if-eqz v9, :cond_168

    if-eqz v1, :cond_154

    sget-object v6, Ljava/math/BigInteger;->ZERO:Ljava/math/BigInteger;

    invoke-virtual {v1, v6}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_14d

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_14d

    add-int/lit8 v6, v4, -0x1

    not-int v6, v6

    return v6

    :cond_14d
    invoke-virtual {v1}, Ljava/math/BigInteger;->negate()Ljava/math/BigInteger;

    move-result-object v1

    move-object v6, v1

    move-wide v13, v2

    goto :goto_188

    :cond_154
    const-wide/16 v13, 0x0

    cmp-long v6, v2, v13

    if-nez v6, :cond_164

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_164

    add-int/lit8 v6, v4, -0x1

    not-int v6, v6

    return v6

    :cond_164
    neg-long v2, v2

    move-object v6, v1

    move-wide v13, v2

    goto :goto_188

    :cond_168
    iget-object v6, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    sget-object v13, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    if-ne v6, v13, :cond_186

    invoke-virtual/range {p1 .. p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v6

    if-eqz v6, :cond_186

    sub-int v6, v5, v4

    if-eqz v10, :cond_180

    iget v13, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    if-gt v6, v13, :cond_186

    add-int/lit8 v13, v4, -0x1

    not-int v13, v13

    return v13

    :cond_180
    iget v13, v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    if-le v6, v13, :cond_186

    not-int v13, v4

    return v13

    :cond_186
    move-object v6, v1

    move-wide v13, v2

    :goto_188
    if-eqz v6, :cond_1a5

    invoke-virtual {v6}, Ljava/math/BigInteger;->bitLength()I

    move-result v1

    const/16 v2, 0x3f

    if-le v1, v2, :cond_19a

    sget-object v1, Ljava/math/BigInteger;->TEN:Ljava/math/BigInteger;

    invoke-virtual {v6, v1}, Ljava/math/BigInteger;->divide(Ljava/math/BigInteger;)Ljava/math/BigInteger;

    move-result-object v6

    add-int/lit8 v5, v5, -0x1

    :cond_19a
    invoke-virtual {v6}, Ljava/math/BigInteger;->longValue()J

    move-result-wide v2

    move-object/from16 v1, p1

    invoke-virtual/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljj$/time/format/DateTimeParseContext;JII)I

    move-result v2

    return v2

    :cond_1a5
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v13

    invoke-virtual/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->setValue(Ljj$/time/format/DateTimeParseContext;JII)I

    move-result v13

    return v13
.end method

.method setValue(Ljj$/time/format/DateTimeParseContext;JII)I
    .registers 12

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    move-object v0, p1

    move-wide v2, p2

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .registers 9

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    const/4 v1, 0x1

    const-string v2, ")"

    const-string v3, "Value("

    if-ne v0, v1, :cond_2d

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const/16 v1, 0x13

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    sget-object v1, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    if-ne v0, v1, :cond_2d

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2d
    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    const-string v4, ","

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    sget-object v1, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    if-ne v0, v1, :cond_5d

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_5d
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 9

    iget v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    return-object p0

    :cond_6
    new-instance v2, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    const/4 v7, -0x1

    invoke-direct/range {v2 .. v7}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;I)V

    return-object v2
.end method

.method withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;
    .registers 8

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->field:Ljj$/time/temporal/TemporalField;

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->signStyle:Ljj$/time/format/SignStyle;

    iget v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->subsequentWidth:I

    add-int/2addr v5, p1

    invoke-direct/range {v0 .. v5}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;I)V

    return-object v0
.end method
