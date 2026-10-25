.class Ljj$/time/format/DateTimeFormatter$ClassicFormat;
.super Ljava/text/Format;
.source "DateTimeFormatter.java"


# instance fields
.field private final formatter:Ljj$/time/format/DateTimeFormatter;

.field private final parseType:Ljj$/time/temporal/TemporalQuery;


# direct methods
.method public constructor <init>(Ljj$/time/format/DateTimeFormatter;Ljj$/time/temporal/TemporalQuery;)V
    .registers 3

    invoke-direct {p0}, Ljava/text/Format;-><init>()V

    iput-object p1, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljj$/time/format/DateTimeFormatter;

    iput-object p2, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljj$/time/temporal/TemporalQuery;

    return-void
.end method


# virtual methods
.method public format(Ljava/lang/Object;Ljava/lang/StringBuffer;Ljava/text/FieldPosition;)Ljava/lang/StringBuffer;
    .registers 7

    const-string v0, "obj"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "toAppendTo"

    invoke-static {p2, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "pos"

    invoke-static {p3, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    instance-of v0, p1, Ljj$/time/temporal/TemporalAccessor;

    if-eqz v0, :cond_2f

    const/4 v0, 0x0

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setBeginIndex(I)V

    invoke-virtual {p3, v0}, Ljava/text/FieldPosition;->setEndIndex(I)V

    :try_start_1a
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljj$/time/format/DateTimeFormatter;

    move-object v1, p1

    check-cast v1, Ljj$/time/temporal/TemporalAccessor;

    invoke-virtual {v0, v1, p2}, Ljj$/time/format/DateTimeFormatter;->formatTo(Ljj$/time/temporal/TemporalAccessor;Ljava/lang/Appendable;)V
    :try_end_22
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_22} :catch_24

    nop

    return-object p2

    :catch_24
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_2f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Format target must implement TemporalAccessor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parseObject(Ljava/lang/String;)Ljava/lang/Object;
    .registers 6

    const-string v0, "text"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    :try_start_5
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljj$/time/temporal/TemporalQuery;

    if-nez v0, :cond_11

    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljj$/time/format/DateTimeFormatter;

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Ljj$/time/format/DateTimeFormatter;->-$$Nest$mparseResolved0(Ljj$/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v0

    return-object v0

    :cond_11
    iget-object v0, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljj$/time/format/DateTimeFormatter;

    iget-object v1, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljj$/time/temporal/TemporalQuery;

    invoke-virtual {v0, p1, v1}, Ljj$/time/format/DateTimeFormatter;->parse(Ljava/lang/CharSequence;Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_19
    .catch Ljj$/time/format/DateTimeParseException; {:try_start_5 .. :try_end_19} :catch_2c
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_19} :catch_1a

    return-object v0

    :catch_1a
    move-exception v0

    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v1, v0}, Ljava/text/ParseException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/text/ParseException;

    throw v1

    :catch_2c
    move-exception v0

    new-instance v1, Ljava/text/ParseException;

    invoke-virtual {v0}, Ljj$/time/format/DateTimeParseException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljj$/time/format/DateTimeParseException;->getErrorIndex()I

    move-result v3

    invoke-direct {v1, v2, v3}, Ljava/text/ParseException;-><init>(Ljava/lang/String;I)V

    throw v1
.end method

.method public parseObject(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/lang/Object;
    .registers 8

    const-string v0, "text"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_7
    iget-object v2, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-static {v2, p1, p2}, Ljj$/time/format/DateTimeFormatter;->-$$Nest$mparseUnresolved0(Ljj$/time/format/DateTimeFormatter;Ljava/lang/CharSequence;Ljava/text/ParsePosition;)Ljj$/time/format/DateTimeParseContext;

    move-result-object v2
    :try_end_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_d} :catch_3b

    nop

    if-nez v2, :cond_1a

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_19

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_19
    return-object v1

    :cond_1a
    :try_start_1a
    iget-object v3, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-static {v3}, Ljj$/time/format/DateTimeFormatter;->-$$Nest$fgetresolverStyle(Ljj$/time/format/DateTimeFormatter;)Ljj$/time/format/ResolverStyle;

    move-result-object v3

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->formatter:Ljj$/time/format/DateTimeFormatter;

    invoke-static {v4}, Ljj$/time/format/DateTimeFormatter;->-$$Nest$fgetresolverFields(Ljj$/time/format/DateTimeFormatter;)Ljava/util/Set;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljj$/time/format/DateTimeParseContext;->toResolved(Ljj$/time/format/ResolverStyle;Ljava/util/Set;)Ljj$/time/temporal/TemporalAccessor;

    move-result-object v3

    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljj$/time/temporal/TemporalQuery;

    if-nez v4, :cond_2f

    return-object v3

    :cond_2f
    iget-object v4, p0, Ljj$/time/format/DateTimeFormatter$ClassicFormat;->parseType:Ljj$/time/temporal/TemporalQuery;

    invoke-interface {v3, v4}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0
    :try_end_35
    .catch Ljava/lang/RuntimeException; {:try_start_1a .. :try_end_35} :catch_36

    return-object v0

    :catch_36
    move-exception v3

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    return-object v1

    :catch_3b
    move-exception v2

    invoke-virtual {p2}, Ljava/text/ParsePosition;->getErrorIndex()I

    move-result v3

    if-gez v3, :cond_45

    invoke-virtual {p2, v0}, Ljava/text/ParsePosition;->setErrorIndex(I)V

    :cond_45
    return-object v1
.end method
