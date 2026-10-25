.class Ljj$/time/temporal/TemporalQueries$4;
.super Ljava/lang/Object;
.source "TemporalQueries.java"

# interfaces
.implements Ljj$/time/temporal/TemporalQuery;


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Ljj$/time/temporal/TemporalQueries$4;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZoneOffset;

    move-result-object p1

    return-object p1
.end method

.method public queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/ZoneOffset;
    .registers 3

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->isSupported(Ljj$/time/temporal/TemporalField;)Z

    move-result v0

    if-eqz v0, :cond_13

    sget-object v0, Ljj$/time/temporal/ChronoField;->OFFSET_SECONDS:Ljj$/time/temporal/ChronoField;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->get(Ljj$/time/temporal/TemporalField;)I

    move-result v0

    invoke-static {v0}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v0

    return-object v0

    :cond_13
    const/4 v0, 0x0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "ZoneOffset"

    return-object v0
.end method
