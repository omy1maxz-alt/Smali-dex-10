.class public final enum Ljj$/time/format/TextStyle;
.super Ljava/lang/Enum;
.source "TextStyle.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/format/TextStyle;

.field public static final enum FULL:Ljj$/time/format/TextStyle;

.field public static final enum FULL_STANDALONE:Ljj$/time/format/TextStyle;

.field public static final enum NARROW:Ljj$/time/format/TextStyle;

.field public static final enum NARROW_STANDALONE:Ljj$/time/format/TextStyle;

.field public static final enum SHORT:Ljj$/time/format/TextStyle;

.field public static final enum SHORT_STANDALONE:Ljj$/time/format/TextStyle;


# instance fields
.field private final calendarStyle:I

.field private final zoneNameStyleIndex:I


# direct methods
.method static constructor <clinit>()V
    .registers 9

    new-instance v0, Ljj$/time/format/TextStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Ljj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    new-instance v0, Ljj$/time/format/TextStyle;

    const v1, 0x8002

    const-string v4, "FULL_STANDALONE"

    const/4 v5, 0x1

    invoke-direct {v0, v4, v5, v1, v2}, Ljj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljj$/time/format/TextStyle;->FULL_STANDALONE:Ljj$/time/format/TextStyle;

    new-instance v0, Ljj$/time/format/TextStyle;

    const-string v1, "SHORT"

    invoke-direct {v0, v1, v3, v5, v5}, Ljj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    new-instance v0, Ljj$/time/format/TextStyle;

    const v1, 0x8001

    const-string v4, "SHORT_STANDALONE"

    const/4 v6, 0x3

    invoke-direct {v0, v4, v6, v1, v5}, Ljj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljj$/time/format/TextStyle;->SHORT_STANDALONE:Ljj$/time/format/TextStyle;

    new-instance v0, Ljj$/time/format/TextStyle;

    const-string v1, "NARROW"

    const/4 v4, 0x4

    invoke-direct {v0, v1, v4, v4, v5}, Ljj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    new-instance v0, Ljj$/time/format/TextStyle;

    const v1, 0x8004

    const-string v7, "NARROW_STANDALONE"

    const/4 v8, 0x5

    invoke-direct {v0, v7, v8, v1, v5}, Ljj$/time/format/TextStyle;-><init>(Ljava/lang/String;III)V

    sput-object v0, Ljj$/time/format/TextStyle;->NARROW_STANDALONE:Ljj$/time/format/TextStyle;

    const/4 v0, 0x6

    new-array v0, v0, [Ljj$/time/format/TextStyle;

    sget-object v1, Ljj$/time/format/TextStyle;->FULL:Ljj$/time/format/TextStyle;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/format/TextStyle;->FULL_STANDALONE:Ljj$/time/format/TextStyle;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/time/format/TextStyle;->SHORT:Ljj$/time/format/TextStyle;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/format/TextStyle;->SHORT_STANDALONE:Ljj$/time/format/TextStyle;

    aput-object v1, v0, v6

    sget-object v1, Ljj$/time/format/TextStyle;->NARROW:Ljj$/time/format/TextStyle;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/time/format/TextStyle;->NARROW_STANDALONE:Ljj$/time/format/TextStyle;

    aput-object v1, v0, v8

    sput-object v0, Ljj$/time/format/TextStyle;->$VALUES:[Ljj$/time/format/TextStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .registers 5

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Ljj$/time/format/TextStyle;->calendarStyle:I

    iput p4, p0, Ljj$/time/format/TextStyle;->zoneNameStyleIndex:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/format/TextStyle;
    .registers 2

    const-class v0, Ljj$/time/format/TextStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/format/TextStyle;

    return-object v0
.end method

.method public static values()[Ljj$/time/format/TextStyle;
    .registers 1

    sget-object v0, Ljj$/time/format/TextStyle;->$VALUES:[Ljj$/time/format/TextStyle;

    invoke-virtual {v0}, [Ljj$/time/format/TextStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/format/TextStyle;

    return-object v0
.end method


# virtual methods
.method public asNormal()Ljj$/time/format/TextStyle;
    .registers 3

    invoke-static {}, Ljj$/time/format/TextStyle;->values()[Ljj$/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/format/TextStyle;->ordinal()I

    move-result v1

    and-int/lit8 v1, v1, -0x2

    aget-object v0, v0, v1

    return-object v0
.end method

.method public asStandalone()Ljj$/time/format/TextStyle;
    .registers 3

    invoke-static {}, Ljj$/time/format/TextStyle;->values()[Ljj$/time/format/TextStyle;

    move-result-object v0

    invoke-virtual {p0}, Ljj$/time/format/TextStyle;->ordinal()I

    move-result v1

    or-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public isStandalone()Z
    .registers 3

    invoke-virtual {p0}, Ljj$/time/format/TextStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    goto :goto_a

    :cond_9
    const/4 v1, 0x0

    :goto_a
    return v1
.end method

.method toCalendarStyle()I
    .registers 2

    iget v0, p0, Ljj$/time/format/TextStyle;->calendarStyle:I

    return v0
.end method

.method zoneNameStyleIndex()I
    .registers 2

    iget v0, p0, Ljj$/time/format/TextStyle;->zoneNameStyleIndex:I

    return v0
.end method
