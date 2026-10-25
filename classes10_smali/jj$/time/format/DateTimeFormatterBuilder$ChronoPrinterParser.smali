.class final Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# instance fields
.field private final textStyle:Ljj$/time/format/TextStyle;


# direct methods
.method constructor <init>(Ljj$/time/format/TextStyle;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    return-void
.end method

.method private getChronologyName(Ljj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 4

    invoke-interface {p1}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 5

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->chronology()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimePrintContext;->getValue(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/chrono/Chronology;

    if-nez v0, :cond_e

    const/4 v1, 0x0

    return v1

    :cond_e
    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    if-nez v1, :cond_1a

    invoke-interface {v0}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_25

    :cond_1a
    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_25
    const/4 v1, 0x1

    return v1
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 16

    if-ltz p3, :cond_5a

    invoke-interface {p2}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-gt p3, v0, :cond_5a

    invoke-static {}, Ljj$/time/chrono/Chronology$-CC;->getAvailableChronologies()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, -0x1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_12
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4d

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/time/chrono/Chronology;

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->textStyle:Ljj$/time/format/TextStyle;

    if-nez v5, :cond_28

    invoke-interface {v4}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    goto :goto_31

    :cond_28
    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;->getChronologyName(Ljj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    move-object v9, v5

    :goto_31
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-le v11, v2, :cond_46

    const/4 v10, 0x0

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-virtual/range {v6 .. v11}, Ljj$/time/format/DateTimeParseContext;->subSequenceEquals(Ljava/lang/CharSequence;ILjava/lang/CharSequence;II)Z

    move-result p1

    if-eqz p1, :cond_49

    move-object p1, v4

    move p2, v11

    move-object v1, p1

    move v2, p2

    goto :goto_49

    :cond_46
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    :cond_49
    :goto_49
    move-object p1, v6

    move-object p2, v7

    move p3, v8

    goto :goto_12

    :cond_4d
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    if-nez v1, :cond_54

    not-int p1, v8

    return p1

    :cond_54
    invoke-virtual {v6, v1}, Ljj$/time/format/DateTimeParseContext;->setParsed(Ljj$/time/chrono/Chronology;)V

    add-int p3, v8, v2

    return p3

    :cond_5a
    move-object v6, p1

    move-object v7, p2

    move v8, p3

    new-instance p1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {p1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw p1
.end method
