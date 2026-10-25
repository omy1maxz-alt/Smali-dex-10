.class final Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final padChar:C

.field private final padWidth:I

.field private final printerParser:Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    iput p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    iput-char p3, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    return-void
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 9

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v1, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    sub-int/2addr v1, v0

    iget v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    if-gt v1, v2, :cond_27

    const/4 v2, 0x0

    :goto_18
    iget v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    sub-int/2addr v3, v1

    if-ge v2, v3, :cond_25

    iget-char v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p2, v0, v3}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_18

    :cond_25
    const/4 v2, 0x1

    return v2

    :cond_27
    new-instance v2, Ljj$/time/DateTimeException;

    iget v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot print as output of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " characters exceeds pad width of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 9

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isStrict()Z

    move-result v0

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-gt p3, v1, :cond_49

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-ne p3, v1, :cond_12

    not-int v1, p3

    return v1

    :cond_12
    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    add-int/2addr v1, p3

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-le v1, v2, :cond_23

    if-eqz v0, :cond_1f

    not-int v2, p3

    return v2

    :cond_1f
    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v1

    :cond_23
    move v2, p3

    :goto_24
    if-ge v2, v1, :cond_35

    invoke-interface {p2, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    iget-char v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    invoke-virtual {p1, v3, v4}, Ljj$/time/format/DateTimeParseContext;->charEquals(CC)Z

    move-result v3

    if-eqz v3, :cond_35

    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    :cond_35
    const/4 v3, 0x0

    invoke-interface {p2, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {v3, p1, p2, v2}, Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v3

    if-eq v3, v1, :cond_48

    if-eqz v0, :cond_48

    add-int v4, p3, v2

    not-int v4, v4

    return v4

    :cond_48
    return v3

    :cond_49
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    iget v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padWidth:I

    iget-char v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    const/16 v3, 0x20

    if-ne v2, v3, :cond_d

    const-string v2, ")"

    goto :goto_28

    :cond_d
    iget-char v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;->padChar:C

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ",\'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\')"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_28
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pad("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
