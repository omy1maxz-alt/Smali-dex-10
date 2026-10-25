.class final Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final literal:C


# direct methods
.method constructor <init>(C)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-char p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    return-void
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4

    iget-char v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 8

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_8

    not-int v1, p3

    return v1

    :cond_8
    invoke-interface {p2, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    iget-char v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    if-eq v1, v2, :cond_30

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->isCaseSensitive()Z

    move-result v2

    if-nez v2, :cond_2e

    invoke-static {v1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v2

    iget-char v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-static {v3}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v3

    if-eq v2, v3, :cond_30

    invoke-static {v1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v2

    iget-char v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    invoke-static {v3}, Ljava/lang/Character;->toLowerCase(C)C

    move-result v3

    if-eq v2, v3, :cond_30

    :cond_2e
    not-int v2, p3

    return v2

    :cond_30
    add-int/lit8 v2, p3, 0x1

    return v2
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-char v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    const/16 v1, 0x27

    if-ne v0, v1, :cond_9

    const-string v0, "\'\'"

    return-object v0

    :cond_9
    iget-char v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;->literal:C

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
