.class Ljj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final field:Ljj$/time/temporal/TemporalField;

.field private final value:J


# direct methods
.method constructor <init>(Ljj$/time/temporal/TemporalField;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljj$/time/temporal/TemporalField;

    iput-wide p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->value:J

    return-void
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 11

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljj$/time/temporal/TemporalField;

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimeParseContext;->getParsed(Ljj$/time/temporal/TemporalField;)Ljava/lang/Long;

    move-result-object v0

    if-nez v0, :cond_13

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->field:Ljj$/time/temporal/TemporalField;

    iget-wide v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;->value:J

    move v6, p3

    move-object v1, p1

    move v5, p3

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->setParsedField(Ljj$/time/temporal/TemporalField;JII)I

    goto :goto_15

    :cond_13
    move-object v1, p1

    move v5, p3

    :goto_15
    return v5
.end method
