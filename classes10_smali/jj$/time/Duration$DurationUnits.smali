.class Ljj$/time/Duration$DurationUnits;
.super Ljava/lang/Object;
.source "Duration.java"


# static fields
.field static final UNITS:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Ljj$/time/temporal/ChronoUnit;->SECONDS:Ljj$/time/temporal/ChronoUnit;

    sget-object v1, Ljj$/time/temporal/ChronoUnit;->NANOS:Ljj$/time/temporal/ChronoUnit;

    invoke-static {v0, v1}, Ljj$/time/Duration$DurationUnits$$ExternalSyntheticBackport0;->m(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Ljj$/time/Duration$DurationUnits;->UNITS:Ljava/util/List;

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
