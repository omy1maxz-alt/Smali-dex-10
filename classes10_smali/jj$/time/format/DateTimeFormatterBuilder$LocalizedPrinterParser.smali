.class final Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# static fields
.field private static final FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;


# instance fields
.field private final dateStyle:Ljj$/time/format/FormatStyle;

.field private final timeStyle:Ljj$/time/format/FormatStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 4

    new-instance v0, Ljj$/util/concurrent/ConcurrentHashMap;

    const/high16 v1, 0x3f400000  # 0.75f

    const/4 v2, 0x2

    const/16 v3, 0x10

    invoke-direct {v0, v3, v1, v2}, Ljj$/util/concurrent/ConcurrentHashMap;-><init>(IFI)V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    return-void
.end method

.method constructor <init>(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljj$/time/format/FormatStyle;

    iput-object p2, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljj$/time/format/FormatStyle;

    return-void
.end method

.method private formatter(Ljava/util/Locale;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;
    .registers 8

    invoke-interface {p2}, Ljj$/time/chrono/Chronology;->getId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljj$/time/format/FormatStyle;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljj$/time/format/FormatStyle;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "|"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/format/DateTimeFormatter;

    if-nez v1, :cond_59

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljj$/time/format/FormatStyle;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljj$/time/format/FormatStyle;

    invoke-static {v2, v3, p2, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->getLocalizedDateTimePattern(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;Ljj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v3}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v1

    sget-object v3, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->FORMATTER_CACHE:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljj$/time/format/DateTimeFormatter;

    if-eqz v3, :cond_59

    move-object v1, v3

    :cond_59
    return-object v1
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 6

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getTemporal()Ljj$/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-static {v0}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Ljj$/time/format/DateTimePrintContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->formatter(Ljava/util/Locale;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    move-result v1

    return v1
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 7

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getEffectiveChronology()Ljj$/time/chrono/Chronology;

    move-result-object v0

    invoke-virtual {p1}, Ljj$/time/format/DateTimeParseContext;->getLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->formatter(Ljava/util/Locale;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljj$/time/format/FormatStyle;

    const-string v1, ""

    if-eqz v0, :cond_9

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->dateStyle:Ljj$/time/format/FormatStyle;

    goto :goto_a

    :cond_9
    move-object v0, v1

    :goto_a
    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljj$/time/format/FormatStyle;

    if-eqz v2, :cond_10

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;->timeStyle:Ljj$/time/format/FormatStyle;

    :cond_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Localized("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
