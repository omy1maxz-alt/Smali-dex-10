.class public final Ljj$/time/temporal/IsoFields;
.super Ljava/lang/Object;
.source "IsoFields.java"


# static fields
.field public static final DAY_OF_QUARTER:Ljj$/time/temporal/TemporalField;

.field public static final QUARTER_OF_YEAR:Ljj$/time/temporal/TemporalField;

.field public static final QUARTER_YEARS:Ljj$/time/temporal/TemporalUnit;

.field public static final WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

.field public static final WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

.field public static final WEEK_OF_WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljj$/time/temporal/IsoFields$Field;->DAY_OF_QUARTER:Ljj$/time/temporal/IsoFields$Field;

    sput-object v0, Ljj$/time/temporal/IsoFields;->DAY_OF_QUARTER:Ljj$/time/temporal/TemporalField;

    sget-object v0, Ljj$/time/temporal/IsoFields$Field;->QUARTER_OF_YEAR:Ljj$/time/temporal/IsoFields$Field;

    sput-object v0, Ljj$/time/temporal/IsoFields;->QUARTER_OF_YEAR:Ljj$/time/temporal/TemporalField;

    sget-object v0, Ljj$/time/temporal/IsoFields$Field;->WEEK_OF_WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    sput-object v0, Ljj$/time/temporal/IsoFields;->WEEK_OF_WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

    sget-object v0, Ljj$/time/temporal/IsoFields$Field;->WEEK_BASED_YEAR:Ljj$/time/temporal/IsoFields$Field;

    sput-object v0, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEAR:Ljj$/time/temporal/TemporalField;

    sget-object v0, Ljj$/time/temporal/IsoFields$Unit;->WEEK_BASED_YEARS:Ljj$/time/temporal/IsoFields$Unit;

    sput-object v0, Ljj$/time/temporal/IsoFields;->WEEK_BASED_YEARS:Ljj$/time/temporal/TemporalUnit;

    sget-object v0, Ljj$/time/temporal/IsoFields$Unit;->QUARTER_YEARS:Ljj$/time/temporal/IsoFields$Unit;

    sput-object v0, Ljj$/time/temporal/IsoFields;->QUARTER_YEARS:Ljj$/time/temporal/TemporalUnit;

    return-void
.end method

.method private constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Not instantiable"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method static isIso(Ljj$/time/temporal/TemporalAccessor;)Z
    .registers 3

    invoke-static {p0}, Ljj$/time/chrono/Chronology$-CC;->from(Ljj$/time/temporal/TemporalAccessor;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    sget-object v1, Ljj$/time/chrono/IsoChronology;->INSTANCE:Ljj$/time/chrono/IsoChronology;

    invoke-interface {v0, v1}, Ljj$/time/chrono/Chronology;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
