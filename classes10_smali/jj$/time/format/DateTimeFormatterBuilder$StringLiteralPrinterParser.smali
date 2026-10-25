.class final Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final literal:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 11

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_25

    if-ltz p3, :cond_25

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v5, 0x0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-virtual/range {v1 .. v6}, Ljj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-nez p1, :cond_1c

    not-int p1, v3

    return p1

    :cond_1c
    iget-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int p3, v3, p1

    return p3

    :cond_25
    move-object v1, p1

    move-object v2, p2

    move v3, p3

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;->literal:Ljava/lang/String;

    const-string v1, "\'\'"

    const-string v2, "\'"

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
