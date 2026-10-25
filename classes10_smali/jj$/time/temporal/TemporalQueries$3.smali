.class Ljj$/time/temporal/TemporalQueries$3;
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

    invoke-virtual {p0, p1}, Ljj$/time/temporal/TemporalQueries$3;->queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/TemporalUnit;

    move-result-object p1

    return-object p1
.end method

.method public queryFrom(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/temporal/TemporalUnit;
    .registers 3

    sget-object v0, Ljj$/time/temporal/TemporalQueries;->PRECISION:Ljj$/time/temporal/TemporalQuery;

    invoke-interface {p1, v0}, Ljj$/time/temporal/TemporalAccessor;->query(Ljj$/time/temporal/TemporalQuery;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljj$/time/temporal/TemporalUnit;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .registers 2

    const-string v0, "Precision"

    return-object v0
.end method
