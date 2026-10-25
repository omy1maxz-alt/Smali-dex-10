.class public final Ljj$/time/format/DateTimeFormatter;
.super Ljava/lang/Object;
.source "DateTimeFormatter.java"


# static fields
.field public static final BASIC_ISO_DATE:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_DATE:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_INSTANT:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_LOCAL_TIME:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_OFFSET_TIME:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_ORDINAL_DATE:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_TIME:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_WEEK_DATE:Ljj$/time/format/DateTimeFormatter;

.field public static final ISO_ZONED_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

.field private static final PARSED_EXCESS_DAYS:Ljj$/time/temporal/TemporalQuery;

.field private static final PARSED_LEAP_SECOND:Ljj$/time/temporal/TemporalQuery;

.field public static final RFC_1123_DATE_TIME:Ljj$/time/format/DateTimeFormatter;


# instance fields
.field private final chrono:Ljj$/time/chrono/Chronology;

.field private final decimalStyle:Ljj$/time/format/DecimalStyle;

.field private final locale:Ljava/util/Locale;

.field private final printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

.field private final resolverFields:Ljava/util/Set;

.field private final resolverStyle:Ljj$/time/format/ResolverStyle;

.field private final zone:Ljj$/time/ZoneId;


# direct methods
.method static bridge synthetic -$$Nest$fgetresolverFields(Ljj$/time/format/DateTimeFormatter;)Ljava/util/Set;
    .registers 1

    iget-object p0, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetresolverStyle(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/ResolverStyle;
    .registers 1

    iget-object p0, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparseResolved0(Ljj$/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mparseUnresolved0(Ljj$/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/format/DateTimeParseContext;
    .registers 3

    invoke-direct {p0, p1, p2}, Ljj$/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/format/DateTimeParseContext;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .registers 14

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v2, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    const/4 v3, 0x4

    const/16 v4, 0xa

    invoke-virtual {v0, v1, v3, v4, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v1, 0x2d

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const/4 v5, 0x2

    invoke-virtual {v0, v2, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v2, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v6, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v2, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v6, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v2, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v2, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v6, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v2, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_DATE:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v2, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v2, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v2, 0x3a

    invoke-virtual {v0, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v6, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v6, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/temporal/ChronoField;->NANO_OF_SECOND:Ljj$/time/temporal/ChronoField;

    const/4 v7, 0x0

    const/16 v8, 0x9

    const/4 v9, 0x1

    invoke-virtual {v0, v6, v7, v8, v9}, Ljj$/time/format/DateTimeFormatterBuilder;->appendFraction(Ljj$/time/temporal/TemporalField;IIZ)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    const/4 v7, 0x0

    invoke-virtual {v0, v6, v7}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    invoke-virtual {v0, v6, v7}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_OFFSET_TIME:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    invoke-virtual {v0, v6, v7}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_TIME:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v6, 0x54

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v8, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v6, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseLenient()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseStrict()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v8, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v6, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v6, Ljj$/time/format/DateTimeFormatter;->ISO_OFFSET_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v6, 0x5b

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const/16 v8, 0x5d

    invoke-virtual {v0, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v10, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v11, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v10, v11}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_ZONED_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    sget-object v10, Ljj$/time/format/DateTimeFormatter;->ISO_LOCAL_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    invoke-virtual {v0, v10}, Ljj$/time/format/DateTimeFormatterBuilder;->append(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseSensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendZoneRegionId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v8, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v6, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    sget-object v8, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    invoke-virtual {v0, v6, v3, v4, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/temporal/ChronoField;->DAY_OF_YEAR:Ljj$/time/temporal/ChronoField;

    const/4 v8, 0x3

    invoke-virtual {v0, v6, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v8, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v6, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_ORDINAL_DATE:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v6, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

    sget-object v8, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    invoke-virtual {v0, v6, v3, v4, v8}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v4, "-W"

    invoke-virtual {v0, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v4, Ljj$/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

    invoke-virtual {v0, v4, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v9}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffsetId()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v4, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_WEEK_DATE:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendInstant()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    invoke-virtual {v0, v1, v7}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->ISO_INSTANT:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v0, v1, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseLenient()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    const-string v1, "+HHMMss"

    const-string v4, "Z"

    invoke-virtual {v0, v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->parseStrict()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    sget-object v4, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->BASIC_ISO_DATE:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-wide/16 v6, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Mon"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    const-string v6, "Tue"

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x3

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    const-string v7, "Wed"

    invoke-interface {v0, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v7, 0x4

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const-string v8, "Thu"

    invoke-interface {v0, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v10, 0x5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const-string v10, "Fri"

    invoke-interface {v0, v8, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v10, 0x6

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    const-string v11, "Sat"

    invoke-interface {v0, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v11, 0x7

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const-string v12, "Sun"

    invoke-interface {v0, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    const-string v13, "Jan"

    invoke-interface {v12, v1, v13}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Feb"

    invoke-interface {v12, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Mar"

    invoke-interface {v12, v6, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Apr"

    invoke-interface {v12, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "May"

    invoke-interface {v12, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Jun"

    invoke-interface {v12, v10, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "Jul"

    invoke-interface {v12, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Aug"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0x9

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Sep"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0xa

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Oct"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0xb

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Nov"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v6, 0xc

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v4, "Dec"

    invoke-interface {v12, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v1}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder;->parseCaseInsensitive()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder;->parseLenient()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_WEEK:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v4, v0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljava/util/Map;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v4, Ljj$/time/temporal/ChronoField;->DAY_OF_MONTH:Ljj$/time/temporal/ChronoField;

    sget-object v6, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    invoke-virtual {v1, v4, v9, v5, v6}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;IILjj$/time/format/SignStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v6, Ljj$/time/temporal/ChronoField;->MONTH_OF_YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v6, v12}, Ljj$/time/format/DateTimeFormatterBuilder;->appendText(Ljj$/time/temporal/TemporalField;Ljava/util/Map;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v6, Ljj$/time/temporal/ChronoField;->YEAR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v6, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->HOUR_OF_DAY:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v3, Ljj$/time/temporal/ChronoField;->MINUTE_OF_HOUR:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v3, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalStart()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Ljj$/time/temporal/ChronoField;->SECOND_OF_MINUTE:Ljj$/time/temporal/ChronoField;

    invoke-virtual {v1, v2, v5}, Ljj$/time/format/DateTimeFormatterBuilder;->appendValue(Ljj$/time/temporal/TemporalField;I)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljj$/time/format/DateTimeFormatterBuilder;->optionalEnd()Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLiteral(C)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    const-string v2, "+HHMM"

    const-string v3, "GMT"

    invoke-virtual {v1, v2, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->appendOffset(Ljava/lang/String;Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v1

    sget-object v2, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    sget-object v3, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v1, v2, v3}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v1

    sput-object v1, Ljj$/time/format/DateTimeFormatter;->RFC_1123_DATE_TIME:Ljj$/time/format/DateTimeFormatter;

    new-instance v0, Ljj$/time/format/DateTimeFormatter$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatter$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljj$/time/temporal/TemporalQuery;

    new-instance v0, Ljj$/time/format/DateTimeFormatter$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatter$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Ljj$/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljj$/time/temporal/TemporalQuery;

    return-void
.end method

.method constructor <init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "printerParser"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iput-object p5, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    const-string v0, "locale"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    const-string v0, "decimalStyle"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/format/DecimalStyle;

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    const-string v0, "resolverStyle"

    invoke-static {p4, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/format/ResolverStyle;

    iput-object v0, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    iput-object p6, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    iput-object p7, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    return-void
.end method

.method private createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljj$/time/format/DateTimeParseException;
    .registers 9

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    const/16 v2, 0x40

    if-le v0, v2, :cond_25

    invoke-interface {p1, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "..."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_29

    :cond_25
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_29
    new-instance v2, Ljj$/time/format/DateTimeParseException;

    invoke-virtual {p2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Text \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\' could not be parsed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, p1, v1, p2}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;ILjava/lang/Throwable;)V

    return-object v2
.end method

.method static synthetic lambda$static$0(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/Period;
    .registers 2

    instance-of v0, p0, Ljj$/time/format/Parsed;

    if-eqz v0, :cond_a

    move-object v0, p0

    check-cast v0, Ljj$/time/format/Parsed;

    iget-object v0, v0, Ljj$/time/format/Parsed;->excessDays:Ljj$/time/Period;

    return-object v0

    :cond_a
    sget-object v0, Ljj$/time/Period;->ZERO:Ljj$/time/Period;

    return-object v0
.end method

.method static synthetic lambda$static$1(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Boolean;
    .registers 2

    instance-of v0, p0, Ljj$/time/format/Parsed;

    if-eqz v0, :cond_e

    move-object v0, p0

    check-cast v0, Ljj$/time/format/Parsed;

    iget-boolean v0, v0, Ljj$/time/format/Parsed;->leapSecond:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_e
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object v0
.end method

.method public static ofLocalizedDate(Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatter;
    .registers 4

    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    sget-object v2, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedDateTime(Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatter;
    .registers 4

    const-string v0, "dateTimeStyle"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    sget-object v2, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedDateTime(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatter;
    .registers 5

    const-string v0, "dateStyle"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "timeStyle"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    sget-object v2, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofLocalizedTime(Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatter;
    .registers 4

    const-string v0, "timeStyle"

    invoke-static {p0, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendLocalized(Ljj$/time/format/FormatStyle;Ljj$/time/format/FormatStyle;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    sget-object v1, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    sget-object v2, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-virtual {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljj$/time/format/ResolverStyle;Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatter;
    .registers 2

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter()Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method public static ofPattern(Ljava/lang/String;Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;
    .registers 3

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder;

    invoke-direct {v0}, Ljj$/time/format/DateTimeFormatterBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljj$/time/format/DateTimeFormatterBuilder;->appendPattern(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder;->toFormatter(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;

    move-result-object v0

    return-object v0
.end method

.method private parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;
    .registers 10

    const/4 v0, 0x0

    if-eqz p2, :cond_5

    move-object v1, p2

    goto :goto_a

    :cond_5
    new-instance v1, Ljava/text/ParsePosition;

    invoke-direct {v1, v0}, Ljava/text/ParsePosition;-><init>(I)V

    :goto_a
    invoke-direct {p0, p1, v1}, Ljj$/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/format/DateTimeParseContext;

    move-result-object v2

    if-eqz v2, :cond_2c

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_2c

    if-nez p2, :cond_23

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-ge v3, v4, :cond_23

    goto :goto_2c

    :cond_23
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-virtual {v2, v0, v3}, Ljj$/time/format/DateTimeParseContext;->toResolved(Ljj$/time/format/ResolverStyle;Ljava/util/Set;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0

    :cond_2c
    :goto_2c
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/16 v4, 0x40

    if-le v3, v4, :cond_50

    invoke-interface {p1, v0, v4}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "..."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_54

    :cond_50
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_54
    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    const-string v4, "Text \'"

    if-ltz v3, :cond_85

    new-instance v3, Ljj$/time/format/DateTimeParseException;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' could not be parsed at index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3

    :cond_85
    new-instance v3, Ljj$/time/format/DateTimeParseException;

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "\' could not be parsed, unparsed text found at index "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Ljava/text/ParsePosition;->getIndex()I

    move-result v5

    invoke-direct {v3, v4, p1, v5}, Ljj$/time/format/DateTimeParseException;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    throw v3
.end method

.method private parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/format/DateTimeParseContext;
    .registers 6

    const-string v0, "text"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "position"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeParseContext;

    invoke-direct {v0, p0}, Ljj$/time/format/DateTimeParseContext;-><init>(Ljj$/time/format/DateTimeFormatter;)V

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getIndex()I

    move-result v1

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, p1, v1}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I

    move-result v1

    if-gez v1, :cond_21

    not-int v2, v1

    invoke-virtual {p2, v2}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    const/4 v2, 0x0

    return-object v2

    :cond_21
    invoke-virtual {p2, v1}, Ljava/text/ParsePosition;->setIndex(I)V

    return-object v0
.end method

.method public static final parsedExcessDays()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->PARSED_EXCESS_DAYS:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static final parsedLeapSecond()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/format/DateTimeFormatter;->PARSED_LEAP_SECOND:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method


# virtual methods
.method public format(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0, p1, v0}, Ljj$/time/format/DateTimeFormatter;->formatTo(Ljj$/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public formatTo(Ljj$/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    .registers 6

    const-string v0, "temporal"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "appendable"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_a
    new-instance v0, Ljj$/time/format/DateTimePrintContext;

    invoke-direct {v0, p1, p0}, Ljj$/time/format/DateTimePrintContext;-><init>(Ljj$/time/temporal/TemporalAccessor;Ljj$/time/format/DateTimeFormatter;)V

    instance-of v1, p2, Ljava/lang/StringBuilder;

    if-eqz v1, :cond_1c

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-object v2, p2

    check-cast v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0, v2}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    goto :goto_2b

    :cond_1c
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x20

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v2, v0, v1}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z

    invoke-interface {p2, v1}, Ljava/lang/Appendable;->append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_2b} :catch_2d

    :goto_2b
    nop

    return-void

    :catch_2d
    move-exception v0

    new-instance v1, Ljj$/time/DateTimeException;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getChronology()Ljj$/time/chrono/Chronology;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    return-object v0
.end method

.method public getDecimalStyle()Ljj$/time/format/DecimalStyle;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    return-object v0
.end method

.method public getLocale()Ljava/util/Locale;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    return-object v0
.end method

.method public getResolverFields()Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    return-object v0
.end method

.method public getResolverStyle()Ljj$/time/format/ResolverStyle;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    return-object v0
.end method

.method public getZone()Ljj$/time/ZoneId;
    .registers 2

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    return-object v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;
    .registers 5

    const-string v0, "text"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "query"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_b
    invoke-direct {p0, p1, v0}, Ljj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v0

    invoke-interface {v0, p2}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_13
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_b .. :try_end_13} :catch_1a
    .catch Ljava/lang/RuntimeException; {:try_start_b .. :try_end_13} :catch_14

    return-object v0

    :catch_14
    move-exception v0

    invoke-direct {p0, p1, v0}, Ljj$/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljj$/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    :catch_1a
    move-exception v0

    throw v0
.end method

.method public parse(Ljava/lang/CharSequence;)Ljj$/time/temporal/TemporalAccessor;
    .registers 4

    const-string v0, "text"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    :try_start_6
    invoke-direct {p0, p1, v0}, Ljj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v0
    :try_end_a
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_6 .. :try_end_a} :catch_11
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v0

    :catch_b
    move-exception v0

    invoke-direct {p0, p1, v0}, Ljj$/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljj$/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    :catch_11
    move-exception v0

    throw v0
.end method

.method public parse(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;
    .registers 5

    const-string v0, "text"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "position"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_a
    invoke-direct {p0, p1, p2}, Ljj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v0
    :try_end_e
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_a .. :try_end_e} :catch_17
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_a .. :try_end_e} :catch_15
    .catch Ljava/lang/RuntimeException; {:try_start_a .. :try_end_e} :catch_f

    return-object v0

    :catch_f
    move-exception v0

    invoke-direct {p0, p1, v0}, Ljj$/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljj$/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    :catch_15
    move-exception v0

    goto :goto_18

    :catch_17
    move-exception v0

    :goto_18
    throw v0
.end method

.method public varargs parseBest(Ljava/lang/CharSequence;[Ljj$/time/temporal/TemporalQuery;)Ljj$/time/temporal/TemporalAccessor;
    .registers 8

    const-string v0, "text"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "queries"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_34

    const/4 v0, 0x0

    :try_start_f
    invoke-direct {p0, p1, v0}, Ljj$/time/format/DateTimeFormatter;->parseResolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v0

    array-length v1, p2

    const/4 v2, 0x0

    :goto_15
    if-ge v2, v1, :cond_24

    aget-object v3, p2, v2
    :try_end_19
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_f .. :try_end_19} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_f .. :try_end_19} :catch_2c

    :try_start_19
    invoke-interface {v0, v3}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljj$/time/temporal/TemporalAccessor;
    :try_end_1f
    .catch Ljava/lang/RuntimeException; {:try_start_19 .. :try_end_1f} :catch_20
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_19 .. :try_end_1f} :catch_32

    return-object v4

    :catch_20
    move-exception v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_15

    :cond_24
    :try_start_24
    new-instance v1, Ljj$/time/DateTimeException;

    const-string v2, "Unable to convert parsed text using any of the specified queries"

    invoke-direct {v1, v2}, Ljj$/time/DateTimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2c
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_24 .. :try_end_2c} :catch_32
    .catch Ljava/lang/RuntimeException; {:try_start_24 .. :try_end_2c} :catch_2c

    :catch_2c
    move-exception v0

    invoke-direct {p0, p1, v0}, Ljj$/time/format/DateTimeFormatter;->createError(Ljava/lang/CharSequence;Ljava/lang/RuntimeException;)Ljj$/time/format/DateTimeParseException;

    move-result-object v1

    throw v1

    :catch_32
    move-exception v0

    throw v0

    :cond_34
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "At least two queries must be specified"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseUnresolved(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;
    .registers 5

    invoke-direct {p0, p1, p2}, Ljj$/time/format/DateTimeFormatter;->parseUnresolved0(Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/format/DateTimeParseContext;

    move-result-object v0

    if-nez v0, :cond_8

    const/4 v1, 0x0

    return-object v1

    :cond_8
    invoke-virtual {v0}, Ljj$/time/format/DateTimeParseContext;->toUnresolved()Ljj$/time/format/Parsed;

    move-result-object v1

    return-object v1
.end method

.method public toFormat()Ljava/text/Format;
    .registers 3

    new-instance v0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Ljj$/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljj$/time/format/DateTimeFormatter;Ljj$/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method public toFormat(Ljj$/time/temporal/TemporalQuery;)Ljava/text/Format;
    .registers 3

    const-string v0, "parseQuery"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    new-instance v0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;

    invoke-direct {v0, p0, p1}, Ljj$/time/format/DateTimeFormatter$ClassicFormat;-><init>(Ljj$/time/format/DateTimeFormatter;Ljj$/time/temporal/TemporalQuery;)V

    return-object v0
.end method

.method toPrinterParser(Z)Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;
    .registers 3

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0, p1}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->withOptional(Z)Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    invoke-virtual {v0}, Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v0

    goto :goto_1a

    :cond_10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :goto_1a
    return-object v1
.end method

.method public withChronology(Ljj$/time/chrono/Chronology;)Ljj$/time/format/DateTimeFormatter;
    .registers 11

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    invoke-static {v0, p1}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v1, Ljj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v8, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    move-object v7, p1

    invoke-direct/range {v1 .. v8}, Ljj$/time/format/DateTimeFormatter;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v1
.end method

.method public withDecimalStyle(Ljj$/time/format/DecimalStyle;)Ljj$/time/format/DateTimeFormatter;
    .registers 11

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    invoke-virtual {v0, p1}, Ljj$/time/format/DecimalStyle;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v1, Ljj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v8, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    move-object v4, p1

    invoke-direct/range {v1 .. v8}, Ljj$/time/format/DateTimeFormatter;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v1
.end method

.method public withLocale(Ljava/util/Locale;)Ljj$/time/format/DateTimeFormatter;
    .registers 11

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    invoke-virtual {v0, p1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v1, Ljj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v8, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    move-object v3, p1

    invoke-direct/range {v1 .. v8}, Ljj$/time/format/DateTimeFormatter;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v1
.end method

.method public withResolverFields(Ljava/util/Set;)Ljj$/time/format/DateTimeFormatter;
    .registers 10

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, p1}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    if-eqz p1, :cond_16

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    move-object v5, p1

    goto :goto_17

    :cond_16
    move-object v5, p1

    :goto_17
    new-instance v0, Ljj$/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v7, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    invoke-direct/range {v0 .. v7}, Ljj$/time/format/DateTimeFormatter;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v0
.end method

.method public varargs withResolverFields([Ljj$/time/temporal/TemporalField;)Ljj$/time/format/DateTimeFormatter;
    .registers 11

    const/4 v0, 0x0

    if-eqz p1, :cond_12

    new-instance v1, Ljava/util/HashSet;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-static {v1}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    move-object v6, v0

    goto :goto_13

    :cond_12
    move-object v6, v0

    :goto_13
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    invoke-static {v0, v6}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c

    return-object p0

    :cond_1c
    new-instance v1, Ljj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    iget-object v7, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v8, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    invoke-direct/range {v1 .. v8}, Ljj$/time/format/DateTimeFormatter;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v1
.end method

.method public withResolverStyle(Ljj$/time/format/ResolverStyle;)Ljj$/time/format/DateTimeFormatter;
    .registers 11

    const-string v0, "resolverStyle"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    invoke-static {v0, p1}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    return-object p0

    :cond_e
    new-instance v1, Ljj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    iget-object v8, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    move-object v5, p1

    invoke-direct/range {v1 .. v8}, Ljj$/time/format/DateTimeFormatter;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v1
.end method

.method public withZone(Ljj$/time/ZoneId;)Ljj$/time/format/DateTimeFormatter;
    .registers 11

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter;->zone:Ljj$/time/ZoneId;

    invoke-static {v0, p1}, Ljj$/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-object p0

    :cond_9
    new-instance v1, Ljj$/time/format/DateTimeFormatter;

    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter;->printerParser:Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;

    iget-object v3, p0, Ljj$/time/format/DateTimeFormatter;->locale:Ljava/util/Locale;

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter;->decimalStyle:Ljj$/time/format/DecimalStyle;

    iget-object v5, p0, Ljj$/time/format/DateTimeFormatter;->resolverStyle:Ljj$/time/format/ResolverStyle;

    iget-object v6, p0, Ljj$/time/format/DateTimeFormatter;->resolverFields:Ljava/util/Set;

    iget-object v7, p0, Ljj$/time/format/DateTimeFormatter;->chrono:Ljj$/time/chrono/Chronology;

    move-object v8, p1

    invoke-direct/range {v1 .. v8}, Ljj$/time/format/DateTimeFormatter;-><init>(Ljj$/time/format/DateTimeFormatterBuilder$CompositePrinterParser;Ljava/util/Locale;Ljj$/time/format/DecimalStyle;Ljj$/time/format/ResolverStyle;Ljava/util/Set;Ljj$/time/chrono/Chronology;Ljj$/time/ZoneId;)V

    return-object v1
.end method
