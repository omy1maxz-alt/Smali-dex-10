.class public final enum Ljj$/time/format/ResolverStyle;
.super Ljava/lang/Enum;
.source "ResolverStyle.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/format/ResolverStyle;

.field public static final enum LENIENT:Ljj$/time/format/ResolverStyle;

.field public static final enum SMART:Ljj$/time/format/ResolverStyle;

.field public static final enum STRICT:Ljj$/time/format/ResolverStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/time/format/ResolverStyle;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    new-instance v0, Ljj$/time/format/ResolverStyle;

    const-string v1, "SMART"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    new-instance v0, Ljj$/time/format/ResolverStyle;

    const-string v1, "LENIENT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/time/format/ResolverStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Ljj$/time/format/ResolverStyle;

    sget-object v1, Ljj$/time/format/ResolverStyle;->STRICT:Ljj$/time/format/ResolverStyle;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/format/ResolverStyle;->SMART:Ljj$/time/format/ResolverStyle;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/format/ResolverStyle;->LENIENT:Ljj$/time/format/ResolverStyle;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/time/format/ResolverStyle;->$VALUES:[Ljj$/time/format/ResolverStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/format/ResolverStyle;
    .registers 2

    const-class v0, Ljj$/time/format/ResolverStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/format/ResolverStyle;

    return-object v0
.end method

.method public static values()[Ljj$/time/format/ResolverStyle;
    .registers 1

    sget-object v0, Ljj$/time/format/ResolverStyle;->$VALUES:[Ljj$/time/format/ResolverStyle;

    invoke-virtual {v0}, [Ljj$/time/format/ResolverStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/format/ResolverStyle;

    return-object v0
.end method
