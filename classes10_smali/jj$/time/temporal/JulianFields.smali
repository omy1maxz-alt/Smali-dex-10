.class public final Ljj$/time/temporal/JulianFields;
.super Ljava/lang/Object;
.source "JulianFields.java"


# static fields
.field public static final JULIAN_DAY:Ljj$/time/temporal/TemporalField;

.field private static final JULIAN_DAY_OFFSET:J = 0x253d8cL

.field public static final MODIFIED_JULIAN_DAY:Ljj$/time/temporal/TemporalField;

.field public static final RATA_DIE:Ljj$/time/temporal/TemporalField;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Ljj$/time/temporal/JulianFields$Field;->JULIAN_DAY:Ljj$/time/temporal/JulianFields$Field;

    sput-object v0, Ljj$/time/temporal/JulianFields;->JULIAN_DAY:Ljj$/time/temporal/TemporalField;

    sget-object v0, Ljj$/time/temporal/JulianFields$Field;->MODIFIED_JULIAN_DAY:Ljj$/time/temporal/JulianFields$Field;

    sput-object v0, Ljj$/time/temporal/JulianFields;->MODIFIED_JULIAN_DAY:Ljj$/time/temporal/TemporalField;

    sget-object v0, Ljj$/time/temporal/JulianFields$Field;->RATA_DIE:Ljj$/time/temporal/JulianFields$Field;

    sput-object v0, Ljj$/time/temporal/JulianFields;->RATA_DIE:Ljj$/time/temporal/TemporalField;

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
