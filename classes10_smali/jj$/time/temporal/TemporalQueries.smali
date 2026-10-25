.class public final Ljj$/time/temporal/TemporalQueries;
.super Ljava/lang/Object;
.source "TemporalQueries.java"


# static fields
.field static final CHRONO:Ljj$/time/temporal/TemporalQuery;

.field static final LOCAL_DATE:Ljj$/time/temporal/TemporalQuery;

.field static final LOCAL_TIME:Ljj$/time/temporal/TemporalQuery;

.field static final OFFSET:Ljj$/time/temporal/TemporalQuery;

.field static final PRECISION:Ljj$/time/temporal/TemporalQuery;

.field static final ZONE:Ljj$/time/temporal/TemporalQuery;

.field static final ZONE_ID:Ljj$/time/temporal/TemporalQuery;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljj$/time/temporal/TemporalQueries$1;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalQueries$1;-><init>()V

    sput-object v0, Ljj$/time/temporal/TemporalQueries;->ZONE_ID:Ljj$/time/temporal/TemporalQuery;

    new-instance v0, Ljj$/time/temporal/TemporalQueries$2;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalQueries$2;-><init>()V

    sput-object v0, Ljj$/time/temporal/TemporalQueries;->CHRONO:Ljj$/time/temporal/TemporalQuery;

    new-instance v0, Ljj$/time/temporal/TemporalQueries$3;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalQueries$3;-><init>()V

    sput-object v0, Ljj$/time/temporal/TemporalQueries;->PRECISION:Ljj$/time/temporal/TemporalQuery;

    new-instance v0, Ljj$/time/temporal/TemporalQueries$4;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalQueries$4;-><init>()V

    sput-object v0, Ljj$/time/temporal/TemporalQueries;->OFFSET:Ljj$/time/temporal/TemporalQuery;

    new-instance v0, Ljj$/time/temporal/TemporalQueries$5;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalQueries$5;-><init>()V

    sput-object v0, Ljj$/time/temporal/TemporalQueries;->ZONE:Ljj$/time/temporal/TemporalQuery;

    new-instance v0, Ljj$/time/temporal/TemporalQueries$6;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalQueries$6;-><init>()V

    sput-object v0, Ljj$/time/temporal/TemporalQueries;->LOCAL_DATE:Ljj$/time/temporal/TemporalQuery;

    new-instance v0, Ljj$/time/temporal/TemporalQueries$7;

    invoke-direct {v0}, Ljj$/time/temporal/TemporalQueries$7;-><init>()V

    sput-object v0, Ljj$/time/temporal/TemporalQueries;->LOCAL_TIME:Ljj$/time/temporal/TemporalQuery;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static chronology()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/temporal/TemporalQueries;->CHRONO:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static localDate()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/temporal/TemporalQueries;->LOCAL_DATE:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static localTime()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/temporal/TemporalQueries;->LOCAL_TIME:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static offset()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/temporal/TemporalQueries;->OFFSET:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static precision()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/temporal/TemporalQueries;->PRECISION:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static zone()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/temporal/TemporalQueries;->ZONE:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method

.method public static zoneId()Ljj$/time/temporal/TemporalQuery;
    .registers 1

    sget-object v0, Ljj$/time/temporal/TemporalQueries;->ZONE_ID:Ljj$/time/temporal/TemporalQuery;

    return-object v0
.end method
