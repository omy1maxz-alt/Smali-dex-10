.class public final enum Ljj$/time/format/FormatStyle;
.super Ljava/lang/Enum;
.source "FormatStyle.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/format/FormatStyle;

.field public static final enum FULL:Ljj$/time/format/FormatStyle;

.field public static final enum LONG:Ljj$/time/format/FormatStyle;

.field public static final enum MEDIUM:Ljj$/time/format/FormatStyle;

.field public static final enum SHORT:Ljj$/time/format/FormatStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljj$/time/format/FormatStyle;

    const-string v1, "FULL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/FormatStyle;->FULL:Ljj$/time/format/FormatStyle;

    new-instance v0, Ljj$/time/format/FormatStyle;

    const-string v1, "LONG"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/FormatStyle;->LONG:Ljj$/time/format/FormatStyle;

    new-instance v0, Ljj$/time/format/FormatStyle;

    const-string v1, "MEDIUM"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/FormatStyle;->MEDIUM:Ljj$/time/format/FormatStyle;

    new-instance v0, Ljj$/time/format/FormatStyle;

    const-string v1, "SHORT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/time/format/FormatStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/FormatStyle;->SHORT:Ljj$/time/format/FormatStyle;

    const/4 v0, 0x4

    new-array v0, v0, [Ljj$/time/format/FormatStyle;

    sget-object v1, Ljj$/time/format/FormatStyle;->FULL:Ljj$/time/format/FormatStyle;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/format/FormatStyle;->LONG:Ljj$/time/format/FormatStyle;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/format/FormatStyle;->MEDIUM:Ljj$/time/format/FormatStyle;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/time/format/FormatStyle;->SHORT:Ljj$/time/format/FormatStyle;

    aput-object v1, v0, v5

    sput-object v0, Ljj$/time/format/FormatStyle;->$VALUES:[Ljj$/time/format/FormatStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/format/FormatStyle;
    .registers 2

    const-class v0, Ljj$/time/format/FormatStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/format/FormatStyle;

    return-object v0
.end method

.method public static values()[Ljj$/time/format/FormatStyle;
    .registers 1

    sget-object v0, Ljj$/time/format/FormatStyle;->$VALUES:[Ljj$/time/format/FormatStyle;

    invoke-virtual {v0}, [Ljj$/time/format/FormatStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/format/FormatStyle;

    return-object v0
.end method
