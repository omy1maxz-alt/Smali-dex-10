.class public final enum Ljj$/time/format/SignStyle;
.super Ljava/lang/Enum;
.source "SignStyle.java"


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/format/SignStyle;

.field public static final enum ALWAYS:Ljj$/time/format/SignStyle;

.field public static final enum EXCEEDS_PAD:Ljj$/time/format/SignStyle;

.field public static final enum NEVER:Ljj$/time/format/SignStyle;

.field public static final enum NORMAL:Ljj$/time/format/SignStyle;

.field public static final enum NOT_NEGATIVE:Ljj$/time/format/SignStyle;


# direct methods
.method static constructor <clinit>()V
    .registers 7

    new-instance v0, Ljj$/time/format/SignStyle;

    const-string v1, "NORMAL"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    new-instance v0, Ljj$/time/format/SignStyle;

    const-string v1, "ALWAYS"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/SignStyle;->ALWAYS:Ljj$/time/format/SignStyle;

    new-instance v0, Ljj$/time/format/SignStyle;

    const-string v1, "NEVER"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/SignStyle;->NEVER:Ljj$/time/format/SignStyle;

    new-instance v0, Ljj$/time/format/SignStyle;

    const-string v1, "NOT_NEGATIVE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    new-instance v0, Ljj$/time/format/SignStyle;

    const-string v1, "EXCEEDS_PAD"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Ljj$/time/format/SignStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    const/4 v0, 0x5

    new-array v0, v0, [Ljj$/time/format/SignStyle;

    sget-object v1, Ljj$/time/format/SignStyle;->NORMAL:Ljj$/time/format/SignStyle;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/format/SignStyle;->ALWAYS:Ljj$/time/format/SignStyle;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/format/SignStyle;->NEVER:Ljj$/time/format/SignStyle;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/time/format/SignStyle;->NOT_NEGATIVE:Ljj$/time/format/SignStyle;

    aput-object v1, v0, v5

    sget-object v1, Ljj$/time/format/SignStyle;->EXCEEDS_PAD:Ljj$/time/format/SignStyle;

    aput-object v1, v0, v6

    sput-object v0, Ljj$/time/format/SignStyle;->$VALUES:[Ljj$/time/format/SignStyle;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/format/SignStyle;
    .registers 2

    const-class v0, Ljj$/time/format/SignStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/format/SignStyle;

    return-object v0
.end method

.method public static values()[Ljj$/time/format/SignStyle;
    .registers 1

    sget-object v0, Ljj$/time/format/SignStyle;->$VALUES:[Ljj$/time/format/SignStyle;

    invoke-virtual {v0}, [Ljj$/time/format/SignStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/format/SignStyle;

    return-object v0
.end method


# virtual methods
.method parse(ZZZ)Z
    .registers 7

    invoke-virtual {p0}, Ljj$/time/format/SignStyle;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_18

    :pswitch_9  #0x2, 0x3
    if-nez p2, :cond_16

    if-nez p3, :cond_16

    const/4 v1, 0x1

    goto :goto_16

    :pswitch_f  #0x1, 0x4
    return v2

    :pswitch_10  #0x0
    if-eqz p1, :cond_14

    if-nez p2, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1

    :cond_16
    :goto_16
    return v1

    nop

    :pswitch_data_18
    .packed-switch 0x0
        :pswitch_10  #00000000
        :pswitch_f  #00000001
        :pswitch_9  #00000002
        :pswitch_9  #00000003
        :pswitch_f  #00000004
    .end packed-switch
.end method
