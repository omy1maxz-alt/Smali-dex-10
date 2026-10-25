.class public final Ljj$/time/format/DateTimeFormatterBuilder;
.super Ljava/lang/Object;
.source "DateTimeFormatterBuilder.java"


# static fields
.field private static final FIELD_MAP:Ljava/util/Map;

.field static final LENGTH_SORT:Ljava/util/Comparator;

.field private static final QUERY_REGION_ONLY:Ljj$/time/temporal/TemporalQuery;


# instance fields
.field private active:Ljj$/time/format/DateTimeFormatterBuilder;

.field private final optional:Z

.field private padNextChar:C

.field private padNextWidth:I

.field private final parent:Ljj$/time/format/DateTimeFormatterBuilder;

.field private final printerParsers:Ljava/util/List;

.field private valueParserIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljj$/time/temporal/TemporalQuery;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x47

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR_OF_ERA:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x75

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x51

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljj$/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x71

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljj$/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4c

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x44

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x64

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x46

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->ALIGNED_DAY_OF_WEEK_IN_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x45

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x63

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x61

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->AMPM_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x48

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4b

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x68

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->CLOCK_HOUR_OF_AMPM:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6d

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x73

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x53

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x41

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->MILLI_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x6e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x4e

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->NANO_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/JulianFields;->MODIFIED_JULIAN_DAY:Ljj$/time/temporal/TemporalField;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$2;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder$2;-><init>()V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder;->LENGTH_SORT:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    const/4 v0, 0x0

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->parent:Ljj$/time/format/DateTimeFormatterBuilder;

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->optional:Z

    return-void
.end method

.method private constructor <init>(Ljj$/time/format/DateTimeFormatterBuilder;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatterBuilder;->parent:Ljj$/time/format/DateTimeFormatterBuilder;

    iput-boolean p2, p0, Ljj$/time/format/DateTimeFormatterBuilder;->optional:Z

    return-void
.end method

.method private appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I
    .registers 5

    const-string v0, "pp"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    if-lez v0, :cond_24

    if-eqz p1, :cond_1b

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget v1, v1, Ljj$/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-char v2, v2, Ljj$/time/format/DateTimeFormatterBuilder;->padNextChar:C

    invoke-direct {v0, p1, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$PadPrinterParserDecorator;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;IC)V

    move-object p1, v0

    :cond_1b
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    const/4 v1, 0x0

    iput v1, v0, Ljj$/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iput-char v1, v0, Ljj$/time/format/DateTimeFormatterBuilder;->padNextChar:C

    :cond_24
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 6

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    if-ltz v0, :cond_48

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    iget v2, p1, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->minWidth:I

    iget v3, p1, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    if-ne v2, v3, :cond_34

    invoke-static {p1}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->-$$Nest$fgetsignStyle(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/SignStyle;

    move-result-object v2

    sget-object v3, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    if-ne v2, v3, :cond_34

    iget v2, p1, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->maxWidth:I

    invoke-virtual {v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withSubsequentWidth(I)Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    invoke-virtual {p1}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v2

    invoke-direct {p0, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iput v0, v2, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    goto :goto_40

    :cond_34
    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;->withFixedWidth()Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    move-result-object v1

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v3

    iput v3, v2, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    :goto_40
    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v2, v0, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_50

    :cond_48
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    move-result v1

    iput v1, v0, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    :goto_50
    return-object p0
.end method

.method private static convertStyle(Ljj$/time/format/FormatStyle;)I
    .registers 2

    if-nez p0, :cond_4

    const/4 v0, -0x1

    return v0

    :cond_4
    invoke-virtual {p0}, Ljj$/time/format/FormatStyle;->ordinal()I

    move-result v0

    return v0
.end method

.method public static getLocalizedDateTimePattern(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;Ljj$/time/chrono/Chronology;Ljava/util/Locale;)Ljava/lang/String;
    .registers 8

    const-string v0, "locale"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "chrono"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    if-nez p0, :cond_17

    if-eqz p1, :cond_f

    goto :goto_17

    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either dateStyle or timeStyle must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    :goto_17
    if-nez p1, :cond_22

    invoke-virtual {p0}, Ljj$/time/format/FormatStyle;->ordinal()I

    move-result v0

    invoke-static {v0, p3}, Ljava/text/DateFormat;->getDateInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_39

    :cond_22
    if-nez p0, :cond_2d

    invoke-virtual {p1}, Ljj$/time/format/FormatStyle;->ordinal()I

    move-result v0

    invoke-static {v0, p3}, Ljava/text/DateFormat;->getTimeInstance(ILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    goto :goto_39

    :cond_2d
    invoke-virtual {p0}, Ljj$/time/format/FormatStyle;->ordinal()I

    move-result v0

    invoke-virtual {p1}, Ljj$/time/format/FormatStyle;->ordinal()I

    move-result v1

    invoke-static {v0, v1, p3}, Ljava/text/DateFormat;->getDateTimeInstance(IILjava/util/Locale;)Ljava/text/DateFormat;

    move-result-object v0

    :goto_39
    instance-of v1, v0, Ljava/text/SimpleDateFormat;

    if-eqz v1, :cond_49

    move-object v1, v0

    check-cast v1, Ljava/text/SimpleDateFormat;

    invoke-virtual {v1}, Ljava/text/SimpleDateFormat;->toPattern()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljj$/time/format/DateTimeFormatterBuilderHelper;->transformAndroidJavaTextDateTimePattern(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_49
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t determine pattern from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$static$0(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZoneId;
    .registers 3

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v0

    invoke-interface {p0, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/ZoneId;

    if-eqz v0, :cond_12

    instance-of v1, v0, Ljj$/time/ZoneOffset;

    if-nez v1, :cond_12

    move-object v1, v0

    goto :goto_13

    :cond_12
    const/4 v1, 0x0

    :goto_13
    return-object v1
.end method

.method private parseField(CILjj$/time/temporal/TemporalField;)V
    .registers 9

    const/4 v0, 0x0

    const/16 v1, 0x13

    const-string v2, "Too many pattern letters: "

    const/4 v3, 0x2

    const/4 v4, 0x1

    sparse-switch p1, :sswitch_data_176

    if-ne p2, v4, :cond_171

    invoke-virtual {p0, p3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :sswitch_11
    if-ne p2, v3, :cond_1a

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;->BASE_DATE:Ljj$/time/LocalDate;

    invoke-virtual {p0, p3, v3, v3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValueReduced(Ljj$/time/temporal/TemporalField;IILjj$/time/chrono/ChronoLocalDate;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :cond_1a
    const/4 v2, 0x4

    if-ge p2, v2, :cond_24

    sget-object v2, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :cond_24
    sget-object v2, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :sswitch_2b
    sget-object v2, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :sswitch_32
    if-ne p2, v4, :cond_3e

    new-instance v1, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2, p2, p2}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :cond_3e
    if-eq p2, v3, :cond_41

    goto :goto_71

    :cond_41
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid pattern \"cc\""

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_49
    if-ne p2, v4, :cond_52

    sget-object v1, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :cond_52
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_69
    sget-object v1, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p2, p2, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendFraction(Ljj$/time/temporal/TemporalField;IIZ)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :goto_71
    :sswitch_71
    const/4 v0, 0x1

    goto :goto_e5

    :sswitch_73
    if-ne p2, v4, :cond_7a

    invoke-virtual {p0, p3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :cond_7a
    if-ne p2, v3, :cond_81

    invoke-virtual {p0, p3, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :cond_81
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :sswitch_98
    packed-switch p2, :pswitch_data_1dc

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_b2  #0x5
    sget-object v1, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :pswitch_b9  #0x4
    sget-object v1, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :pswitch_c0  #0x1, 0x2, 0x3
    sget-object v1, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :sswitch_c7
    if-ne p2, v4, :cond_ce

    invoke-virtual {p0, p3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :cond_ce
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :goto_e5
    :sswitch_e5
    packed-switch p2, :pswitch_data_1ea

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_ff  #0x5
    if-eqz v0, :cond_104

    sget-object v1, Ljj$/time/format/TextStyle;->NARROW_STANDALONE:Ljj$/time/format/TextStyle;

    goto :goto_106

    :cond_104
    sget-object v1, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    :goto_106
    invoke-virtual {p0, p3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_174

    :pswitch_10b  #0x4
    if-eqz v0, :cond_110

    sget-object v1, Ljj$/time/format/TextStyle;->FULL_STANDALONE:Ljj$/time/format/TextStyle;

    goto :goto_112

    :cond_110
    sget-object v1, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    :goto_112
    invoke-virtual {p0, p3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :pswitch_116  #0x3
    if-eqz v0, :cond_11b

    sget-object v1, Ljj$/time/format/TextStyle;->SHORT_STANDALONE:Ljj$/time/format/TextStyle;

    goto :goto_11d

    :cond_11b
    sget-object v1, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    :goto_11d
    invoke-virtual {p0, p3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :pswitch_121  #0x1, 0x2
    const/16 v1, 0x65

    if-ne p1, v1, :cond_12e

    new-instance v1, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v1, p1, p2, p2, p2}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :cond_12e
    const/16 v1, 0x45

    if-ne p1, v1, :cond_138

    sget-object v1, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, p3, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :cond_138
    if-ne p2, v4, :cond_13e

    invoke-virtual {p0, p3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :cond_13e
    invoke-virtual {p0, p3, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :sswitch_142
    if-ne p2, v4, :cond_148

    invoke-virtual {p0, p3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :cond_148
    const/4 v1, 0x3

    if-eq p2, v3, :cond_165

    if-ne p2, v1, :cond_14e

    goto :goto_165

    :cond_14e
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_165
    :goto_165
    sget-object v2, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :sswitch_16b
    sget-object v2, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    invoke-virtual {p0, p3, p2, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_174

    :cond_171
    invoke-virtual {p0, p3, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    :goto_174
    return-void

    nop

    :sswitch_data_176
    .sparse-switch
        0x41 -> :sswitch_16b
        0x44 -> :sswitch_142
        0x45 -> :sswitch_e5
        0x46 -> :sswitch_c7
        0x47 -> :sswitch_98
        0x48 -> :sswitch_73
        0x4b -> :sswitch_73
        0x4c -> :sswitch_71
        0x4d -> :sswitch_e5
        0x4e -> :sswitch_16b
        0x51 -> :sswitch_e5
        0x53 -> :sswitch_69
        0x61 -> :sswitch_49
        0x63 -> :sswitch_32
        0x64 -> :sswitch_73
        0x65 -> :sswitch_e5
        0x67 -> :sswitch_2b
        0x68 -> :sswitch_73
        0x6b -> :sswitch_73
        0x6d -> :sswitch_73
        0x6e -> :sswitch_16b
        0x71 -> :sswitch_71
        0x73 -> :sswitch_73
        0x75 -> :sswitch_11
        0x79 -> :sswitch_11
    .end sparse-switch

    :pswitch_data_1dc
    .packed-switch 0x1
        :pswitch_c0  #00000001
        :pswitch_c0  #00000002
        :pswitch_c0  #00000003
        :pswitch_b9  #00000004
        :pswitch_b2  #00000005
    .end packed-switch

    :pswitch_data_1ea
    .packed-switch 0x1
        :pswitch_121  #00000001
        :pswitch_121  #00000002
        :pswitch_116  #00000003
        :pswitch_10b  #00000004
        :pswitch_ff  #00000005
    .end packed-switch
.end method

.method private parsePattern(Ljava/lang/String;)V
    .registers 15

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_30e

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x61

    const/16 v3, 0x41

    const/16 v4, 0x7a

    const/16 v5, 0x5a

    const/4 v6, 0x1

    if-lt v1, v3, :cond_18

    if-le v1, v5, :cond_1c

    :cond_18
    if-lt v1, v2, :cond_25f

    if-gt v1, v4, :cond_25f

    :cond_1c
    add-int/lit8 v7, v0, 0x1

    :goto_1e
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    if-ge v7, v8, :cond_2d

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v1, :cond_2d

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_2d
    sub-int v8, v7, v0

    const/16 v9, 0x70

    if-ne v1, v9, :cond_7c

    const/4 v9, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v7, v10, :cond_5d

    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-lt v1, v3, :cond_42

    if-le v1, v5, :cond_46

    :cond_42
    if-lt v1, v2, :cond_5d

    if-gt v1, v4, :cond_5d

    :cond_46
    move v9, v8

    add-int/lit8 v2, v7, 0x1

    :goto_49
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-ge v2, v0, :cond_58

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v1, :cond_58

    add-int/lit8 v2, v2, 0x1

    goto :goto_49

    :cond_58
    sub-int v0, v2, v7

    move v8, v0

    move v0, v7

    move v7, v2

    :cond_5d
    if-eqz v9, :cond_63

    invoke-virtual {p0, v9}, Ljj$/time/format/DateTimeFormatterBuilder;->padNext(I)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_7c

    :cond_63
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Pad letter \'p\' must be followed by valid pad pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7c
    :goto_7c
    sget-object v2, Ljj$/time/format/DateTimeFormatterBuilder;->FIELD_MAP:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljj$/time/temporal/TemporalField;

    if-eqz v2, :cond_8f

    invoke-direct {p0, v1, v8, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->parseField(CILjj$/time/temporal/TemporalField;)V

    goto/16 :goto_241

    :cond_8f
    const-string v3, "Too many pattern letters: "

    const/4 v9, 0x4

    if-ne v1, v4, :cond_bd

    if-gt v8, v9, :cond_a6

    if-ne v8, v9, :cond_9f

    sget-object v3, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_9f
    sget-object v3, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendZoneText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_a6
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_bd
    const/16 v4, 0x56

    const/4 v10, 0x2

    if-ne v1, v4, :cond_e2

    if-ne v8, v10, :cond_c9

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendZoneId()Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_c9
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern letter count must be 2: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_e2
    const/16 v4, 0x76

    if-ne v1, v4, :cond_111

    if-ne v8, v6, :cond_ef

    sget-object v3, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendGenericZoneText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_ef
    if-ne v8, v9, :cond_f8

    sget-object v3, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendGenericZoneText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_f8
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Wrong number of  pattern letters: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_111
    const-string v4, "Z"

    const-string v11, "+0000"

    const/4 v12, 0x5

    if-ne v1, v5, :cond_14a

    if-ge v8, v9, :cond_121

    const-string v3, "+HHMM"

    invoke-virtual {p0, v3, v11}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_121
    if-ne v8, v9, :cond_12a

    sget-object v3, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_12a
    if-ne v8, v12, :cond_133

    const-string v3, "+HH:MM:ss"

    invoke-virtual {p0, v3, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_133
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_14a
    const/16 v5, 0x4f

    if-ne v1, v5, :cond_179

    if-ne v8, v6, :cond_157

    sget-object v3, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_157
    if-ne v8, v9, :cond_160

    sget-object v3, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLocalizedOffset(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_160
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern letter count must be 1 or 4: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_179
    const/16 v5, 0x58

    const/4 v9, 0x0

    if-ne v1, v5, :cond_1a5

    if-gt v8, v12, :cond_18e

    sget-object v3, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    if-ne v8, v6, :cond_185

    goto :goto_186

    :cond_185
    const/4 v9, 0x1

    :goto_186
    add-int/2addr v9, v8

    aget-object v3, v3, v9

    invoke-virtual {p0, v3, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_18e
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1a5
    const/16 v4, 0x78

    if-ne v1, v4, :cond_1dc

    if-gt v8, v12, :cond_1c5

    if-ne v8, v6, :cond_1b0

    const-string v11, "+00"

    goto :goto_1b7

    :cond_1b0
    rem-int/lit8 v3, v8, 0x2

    if-nez v3, :cond_1b5

    goto :goto_1b7

    :cond_1b5
    const-string v11, "+00:00"

    :goto_1b7
    sget-object v3, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->PATTERNS:[Ljava/lang/String;

    if-ne v8, v6, :cond_1bc

    goto :goto_1bd

    :cond_1bc
    const/4 v9, 0x1

    :goto_1bd
    add-int/2addr v9, v8

    aget-object v3, v3, v9

    invoke-virtual {p0, v3, v11}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto/16 :goto_241

    :cond_1c5
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1dc
    const/16 v4, 0x57

    if-ne v1, v4, :cond_202

    if-gt v8, v6, :cond_1eb

    new-instance v3, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v8}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_241

    :cond_1eb
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_202
    const/16 v4, 0x77

    if-ne v1, v4, :cond_228

    if-gt v8, v10, :cond_211

    new-instance v3, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v10}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_241

    :cond_211
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_228
    const/16 v3, 0x59

    if-ne v1, v3, :cond_246

    if-ne v8, v10, :cond_237

    new-instance v3, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    invoke-direct {v3, v1, v8, v8, v10}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_241

    :cond_237
    new-instance v3, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;

    const/16 v4, 0x13

    invoke-direct {v3, v1, v8, v8, v4}, Ljj$/time/format/DateTimeFormatterBuilder$WeekBasedFieldPrinterParser;-><init>(CIII)V

    invoke-direct {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    :goto_241
    nop

    add-int/lit8 v0, v7, -0x1

    goto/16 :goto_2ee

    :cond_246
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown pattern letter: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_25f
    const-string v2, "\'"

    const/16 v3, 0x27

    if-ne v1, v3, :cond_2c1

    add-int/lit8 v4, v0, 0x1

    :goto_267
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_287

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_285

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_287

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    if-ne v5, v3, :cond_287

    add-int/lit8 v4, v4, 0x1

    :cond_285
    add-int/2addr v4, v6

    goto :goto_267

    :cond_287
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_2a8

    add-int/lit8 v5, v0, 0x1

    invoke-virtual {p1, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_29d

    invoke-virtual {p0, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_2a6

    :cond_29d
    const-string v3, "\'\'"

    invoke-virtual {v5, v3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    :goto_2a6
    move v0, v4

    goto :goto_2ee

    :cond_2a8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern ends with an incomplete string literal: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2c1
    const/16 v3, 0x5b

    if-ne v1, v3, :cond_2c9

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_2ee

    :cond_2c9
    const/16 v3, 0x5d

    if-ne v1, v3, :cond_2df

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v2, v2, Ljj$/time/format/DateTimeFormatterBuilder;->parent:Ljj$/time/format/DateTimeFormatterBuilder;

    if-eqz v2, :cond_2d7

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_2ee

    :cond_2d7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Pattern invalid as it contains ] without previous ["

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2df
    const/16 v3, 0x7b

    if-eq v1, v3, :cond_2f1

    const/16 v3, 0x7d

    if-eq v1, v3, :cond_2f1

    const/16 v3, 0x23

    if-eq v1, v3, :cond_2f1

    invoke-virtual {p0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    :goto_2ee
    add-int/2addr v0, v6

    goto/16 :goto_1

    :cond_2f1
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pattern includes reserved character: \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_30e
    return-void
.end method

.method private toFormatter(Ljava/util/Locale;Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;
    .registers 15

    const-string v0, "locale"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :goto_5
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->parent:Ljj$/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_f

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_5

    :cond_f
    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    move-object v4, v0

    new-instance v3, Ljj$/time/format/DateTimeFormatter;

    sget-object v6, Ljj$/time/format/DecimalStyle;->STANDARD:Ljj$/time/format/DecimalStyle;

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p1

    move-object v7, p2

    move-object v9, p3

    invoke-direct/range {v3 .. v10}, Ljj$/time/format/DateTimeFormatter;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v3
.end method


# virtual methods
.method public append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendChronologyId()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljj$/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendChronologyText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    const-string v0, "textStyle"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;

    invoke-direct {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$ChronoPrinterParser;-><init>(Ljj$/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendFraction(Ljj$/time/temporal/TemporalField;IIZ)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 6

    if-ne p2, p3, :cond_d

    if-nez p4, :cond_d

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    goto :goto_15

    :cond_d
    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljj$/time/format/DateTimeFormatterBuilder$FractionPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIZ)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    :goto_15
    return-object p0
.end method

.method public appendGenericZoneText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljj$/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendGenericZoneText(Ljj$/time/format/TextStyle;Ljava/util/Set;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x1

    invoke-direct {v0, p1, p2, v1}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljj$/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendInstant()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    const/4 v1, -0x2

    invoke-direct {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendInstant(I)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 5

    const/4 v0, -0x1

    if-lt p1, v0, :cond_10

    const/16 v0, 0x9

    if-gt p1, v0, :cond_10

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;

    invoke-direct {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$InstantPrinterParser;-><init>(I)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The fractional digits must be from -1 to 9 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendLiteral(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 4

    const-string v0, "literal"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_28

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder$CharLiteralPrinterParser;-><init>(C)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_28

    :cond_20
    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;

    invoke-direct {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$StringLiteralPrinterParser;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    :cond_28
    :goto_28
    return-object p0
.end method

.method public appendLocalized(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 5

    if-nez p1, :cond_d

    if-eqz p2, :cond_5

    goto :goto_d

    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Either the date or time style must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    :goto_d
    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;

    invoke-direct {v0, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedPrinterParser;-><init>(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendLocalizedOffset(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 4

    const-string v0, "style"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    sget-object v0, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    if-eq p1, v0, :cond_16

    sget-object v0, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    if-ne p1, v0, :cond_e

    goto :goto_16

    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Style must be either full or short"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_16
    :goto_16
    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;

    invoke-direct {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$LocalizedOffsetIdPrinterParser;-><init>(Ljj$/time/format/TextStyle;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 4

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {v0, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;->INSTANCE_ID_Z:Ljj$/time/format/DateTimeFormatterBuilder$OffsetIdPrinterParser;

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendOptional(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    const-string v0, "formatter"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Ljj$/time/format/DateTimeFormatter;->toPrinterParser(Z)Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendPattern(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    const-string v0, "pattern"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->parsePattern(Ljava/lang/String;)V

    return-object p0
.end method

.method public appendText(Ljj$/time/temporal/TemporalField;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    sget-object v0, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-virtual {p0, p1, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public appendText(Ljj$/time/temporal/TemporalField;Ljava/util/Map;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 9

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textLookup"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p2}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    sget-object v1, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-static {v1, v0}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    new-instance v2, Ljj$/time/format/DateTimeTextProvider$LocaleStore;

    invoke-direct {v2, v1}, Ljj$/time/format/DateTimeTextProvider$LocaleStore;-><init>(Ljava/util/Map;)V

    new-instance v3, Ljj$/time/format/DateTimeFormatterBuilder$1;

    invoke-direct {v3, p0, v2}, Ljj$/time/format/DateTimeFormatterBuilder$1;-><init>(Ljj$/time/format/DateTimeFormatterBuilder;Ljj$/time/format/DateTimeTextProvider$LocaleStore;)V

    new-instance v4, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    sget-object v5, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    invoke-direct {v4, p1, v5, v3}, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljj$/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendText(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 5

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "textStyle"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;

    invoke-static {}, Ljj$/time/format/DateTimeTextProvider;->getInstance()Ljj$/time/format/DateTimeTextProvider;

    move-result-object v1

    invoke-direct {v0, p1, p2, v1}, Ljj$/time/format/DateTimeFormatterBuilder$TextPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;Ljj$/time/format/TextStyle;Ljj$/time/format/DateTimeTextProvider;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendValue(Ljj$/time/temporal/TemporalField;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 6

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    const/16 v1, 0x13

    sget-object v2, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    const/4 v3, 0x1

    invoke-direct {v0, p1, v3, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 6

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_17

    const/16 v0, 0x13

    if-gt p2, v0, :cond_17

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    sget-object v1, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    invoke-direct {v0, p1, p2, p2, v1}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    return-object p0

    :cond_17
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 8

    if-ne p2, p3, :cond_b

    sget-object v0, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    if-ne p4, v0, :cond_b

    invoke-virtual {p0, p1, p3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0

    :cond_b
    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "signStyle"

    invoke-static {p4, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x1

    if-lt p2, v0, :cond_67

    const/16 v1, 0x13

    if-gt p2, v1, :cond_67

    if-lt p3, v0, :cond_4e

    if-gt p3, v1, :cond_4e

    if-lt p3, p2, :cond_2b

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;

    invoke-direct {v0, p1, p2, p3, p4}, Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    return-object p0

    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum width must exceed or equal the minimum width but "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " < "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The maximum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_67
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The minimum width must be from 1 to 19 inclusive but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public appendValueReduced(Ljj$/time/temporal/TemporalField;III)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 12

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v6, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;)V

    invoke-direct {p0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendValueReduced(Ljj$/time/temporal/TemporalField;IILjj$/time/chrono/ChronoLocalDate;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 12

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "baseDate"

    invoke-static {p4, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v1, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;

    const/4 v5, 0x0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Ljj$/time/format/DateTimeFormatterBuilder$ReducedPrinterParser;-><init>(Ljj$/time/temporal/TemporalField;IIILjj$/time/chrono/ChronoLocalDate;)V

    invoke-direct {p0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/format/DateTimeFormatterBuilder$NumberPrinterParser;)Ljj$/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public appendZoneId()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 4

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zoneId()Ljj$/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneId()"

    invoke-direct {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneOrOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 4

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    invoke-static {}, Ljj$/time/temporal/TemporalQueries;->zone()Ljj$/time/temporal/TemporalQuery;

    move-result-object v1

    const-string v2, "ZoneOrOffsetId()"

    invoke-direct {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneRegionId()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 4

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder;->QUERY_REGION_ONLY:Ljj$/time/temporal/TemporalQuery;

    const-string v2, "ZoneRegionId()"

    invoke-direct {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneIdPrinterParser;-><init>(Ljj$/time/temporal/TemporalQuery;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneText(Ljj$/time/format/TextStyle;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 5

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljj$/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public appendZoneText(Ljj$/time/format/TextStyle;Ljava/util/Set;)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 5

    const-string v0, "preferredZones"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;

    const/4 v1, 0x0

    invoke-direct {v0, p1, p2, v1}, Ljj$/time/format/DateTimeFormatterBuilder$ZoneTextPrinterParser;-><init>(Ljj$/time/format/TextStyle;Ljava/util/Set;Z)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public optionalEnd()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 4

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->parent:Ljj$/time/format/DateTimeFormatterBuilder;

    if-eqz v0, :cond_2e

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_27

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljj$/time/format/DateTimeFormatterBuilder;->printerParsers:Ljava/util/List;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-boolean v2, v2, Ljj$/time/format/DateTimeFormatterBuilder;->optional:Z

    invoke-direct {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;-><init>(Ljava/util/List;Z)V

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v1, v1, Ljj$/time/format/DateTimeFormatterBuilder;->parent:Ljj$/time/format/DateTimeFormatterBuilder;

    iput-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    goto :goto_2d

    :cond_27
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v0, v0, Ljj$/time/format/DateTimeFormatterBuilder;->parent:Ljj$/time/format/DateTimeFormatterBuilder;

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    :goto_2d
    return-object p0

    :cond_2e
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call optionalEnd() as there was no previous call to optionalStart()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 4

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>(Ljj$/time/format/DateTimeFormatterBuilder;Z)V

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    return-object p0
.end method

.method public padNext(I)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 3

    const/16 v0, 0x20

    invoke-virtual {p0, p1, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->padNext(IC)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    return-object v0
.end method

.method public padNext(IC)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 6

    const/4 v0, 0x1

    if-lt p1, v0, :cond_11

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iput p1, v0, Ljj$/time/format/DateTimeFormatterBuilder;->padNextWidth:I

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    iput-char p2, v0, Ljj$/time/format/DateTimeFormatterBuilder;->padNextChar:C

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatterBuilder;->active:Ljj$/time/format/DateTimeFormatterBuilder;

    const/4 v1, -0x1

    iput v1, v0, Ljj$/time/format/DateTimeFormatterBuilder;->valueParserIndex:I

    return-object p0

    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The pad width must be at least one but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseCaseSensitive()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseDefaulting(Ljj$/time/temporal/TemporalField;J)Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 5

    const-string v0, "field"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;

    invoke-direct {v0, p1, p2, p3}, Ljj$/time/format/DateTimeFormatterBuilder$DefaultValueParser;-><init>(Ljj$/time/temporal/TemporalField;J)V

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseLenient()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public parseStrict()Ljj$/time/format/DateTimeFormatterBuilder;
    .registers 2

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-direct {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInternal(Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;)I

    return-object p0
.end method

.method public toFormatter()Ljj$/time/format/DateTimeFormatter;
    .registers 2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;
    .registers 4

    sget-object v0, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;
    .registers 4

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-direct {p0, v0, p1, p2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method
