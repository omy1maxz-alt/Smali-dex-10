.class final Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final optional:Z

.field private final printerParsers:[Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# direct methods
.method constructor <init>(Ljava/util/List;Z)V
    .registers 4

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-interface {p1, v0}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {p0, v0, p2}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-void
.end method

.method constructor <init>([Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    iput-boolean p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    return-void
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 10

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    iget-boolean v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_b

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->startOptional()V

    :cond_b
    :try_start_b
    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_f
    const/4 v4, 0x1

    if-ge v3, v2, :cond_29

    aget-object v5, v1, v3

    invoke-interface {v5, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v6

    if-nez v6, :cond_26

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->setLength(I)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_31

    nop

    iget-boolean v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_25

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->endOptional()V

    :cond_25
    return v4

    :cond_26
    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_29
    iget-boolean v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_30

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->endOptional()V

    :cond_30
    return v4

    :catchall_31
    move-exception v1

    iget-boolean v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v2, :cond_39

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->endOptional()V

    :cond_39
    throw v1
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 10

    iget-boolean v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_23

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->startOptional()V

    move v0, p3

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_d
    if-ge v4, v3, :cond_1e

    aget-object v5, v2, v4

    invoke-interface {v5, p1, p2, v0}, Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v0

    if-gez v0, :cond_1b

    invoke-virtual {p1, v1}, Ljj$/time/format/DateTimeParseContext;->endOptional(Z)V

    return p3

    :cond_1b
    add-int/lit8 v4, v4, 0x1

    goto :goto_d

    :cond_1e
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Ljj$/time/format/DateTimeParseContext;->endOptional(Z)V

    return v0

    :cond_23
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v0

    :goto_26
    if-ge v1, v2, :cond_34

    aget-object v3, v0, v1

    invoke-interface {v3, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result p3

    if-gez p3, :cond_31

    goto :goto_34

    :cond_31
    add-int/lit8 v1, v1, 0x1

    goto :goto_26

    :cond_34
    :goto_34
    return p3
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    if-eqz v1, :cond_2f

    iget-boolean v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_10

    const-string v1, "["

    goto :goto_12

    :cond_10
    const-string v1, "("

    :goto_12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_19
    if-ge v3, v2, :cond_23

    aget-object v4, v1, v3

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_23
    iget-boolean v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-eqz v1, :cond_2a

    const-string v1, "]"

    goto :goto_2c

    :cond_2a
    const-string v1, ")"

    :goto_2c
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2f
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public withOptional(Z)Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .registers 4

    iget-boolean v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->optional:Z

    if-ne p1, v0, :cond_5

    return-object p0

    :cond_5
    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->printerParsers:[Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;

    invoke-direct {v0, v1, p1}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>([Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;Z)V

    return-object v0
.end method
