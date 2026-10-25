.class public final enum Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
.super Ljava/lang/Enum;
.source "ZoneOffsetTransitionRule.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum STANDARD:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum UTC:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

.field public static final enum WALL:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;


# direct methods
.method static constructor <clinit>()V
    .registers 5

    new-instance v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "UTC"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    new-instance v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "WALL"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    new-instance v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const-string v1, "STANDARD"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    const/4 v0, 0x3

    new-array v0, v0, [Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    sget-object v1, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->UTC:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->WALL:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->STANDARD:Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    aput-object v1, v0, v4

    sput-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 2

    const-class v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method

.method public static values()[Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;
    .registers 1

    sget-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->$VALUES:[Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    invoke-virtual {v0}, [Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;

    return-object v0
.end method


# virtual methods
.method public createDateTime(Ljj$/time/LocalDateTime;Ljj$/time/ZoneOffset;Ljj$/time/ZoneOffset;)Ljj$/time/LocalDateTime;
    .registers 7

    sget-object v0, Ljj$/time/zone/ZoneOffsetTransitionRule$1;->$SwitchMap$java$time$zone$ZoneOffsetTransitionRule$TimeDefinition:[I

    invoke-virtual {p0}, Ljj$/time/zone/ZoneOffsetTransitionRule$TimeDefinition;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_2c

    return-object p1

    :pswitch_c  #0x2
    invoke-virtual {p3}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    invoke-virtual {p2}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Ljj$/time/LocalDateTime;->plusSeconds(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_1b  #0x1
    invoke-virtual {p3}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    sget-object v1, Ljj$/time/ZoneOffset;->UTC:Ljj$/time/ZoneOffset;

    invoke-virtual {v1}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-long v1, v0

    invoke-virtual {p1, v1, v2}, Ljj$/time/LocalDateTime;->plusSeconds(J)Ljj$/time/LocalDateTime;

    move-result-object v1

    return-object v1

    :pswitch_data_2c
    .packed-switch 0x1
        :pswitch_1b  #00000001
        :pswitch_c  #00000002
    .end packed-switch
.end method
