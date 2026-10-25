.class final enum Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;
.super Ljava/lang/Enum;
.source "DateTimeFormatterBuilder.java"

# interfaces
.implements Ljj$/time/format/DateTimeFormatterBuilder$DateTimePrinterParser;


# static fields
.field private static final synthetic $VALUES:[Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum INSENSITIVE:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum LENIENT:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum SENSITIVE:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

.field public static final enum STRICT:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "SENSITIVE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "INSENSITIVE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "STRICT"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    new-instance v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    const-string v1, "LENIENT"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    const/4 v0, 0x4

    new-array v0, v0, [Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->SENSITIVE:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v0, v2

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->INSENSITIVE:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v0, v3

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->STRICT:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v0, v4

    sget-object v1, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->LENIENT:Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    aput-object v1, v0, v5

    sput-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 3

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 2

    const-class v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method

.method public static values()[Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;
    .registers 1

    sget-object v0, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->$VALUES:[Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    invoke-virtual {v0}, [Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;

    return-object v0
.end method


# virtual methods
.method public format(Ljj$/time/format/DateTimePrintContext;Ljava/lang/StringBuilder;)Z
    .registers 4

    const/4 v0, 0x1

    return v0
.end method

.method public parse(Ljj$/time/format/DateTimeParseContext;Ljava/lang/CharSequence;I)I
    .registers 7

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_1a

    goto :goto_19

    :pswitch_a  #0x3
    invoke-virtual {p1, v1}, Ljj$/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_19

    :pswitch_e  #0x2
    invoke-virtual {p1, v2}, Ljj$/time/format/DateTimeParseContext;->setStrict(Z)V

    goto :goto_19

    :pswitch_12  #0x1
    invoke-virtual {p1, v1}, Ljj$/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    goto :goto_19

    :pswitch_16  #0x0
    invoke-virtual {p1, v2}, Ljj$/time/format/DateTimeParseContext;->setCaseSensitive(Z)V

    :goto_19
    return p3

    :pswitch_data_1a
    .packed-switch 0x0
        :pswitch_16  #00000000
        :pswitch_12  #00000001
        :pswitch_e  #00000002
        :pswitch_a  #00000003
    .end packed-switch
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    invoke-virtual {p0}, Ljj$/time/format/DateTimeFormatterBuilder$SettingsParser;->ordinal()I

    move-result v0

    packed-switch v0, :pswitch_data_1c

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unreachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_f  #0x3
    const-string v0, "ParseStrict(false)"

    return-object v0

    :pswitch_12  #0x2
    const-string v0, "ParseStrict(true)"

    return-object v0

    :pswitch_15  #0x1
    const-string v0, "ParseCaseSensitive(false)"

    return-object v0

    :pswitch_18  #0x0
    const-string v0, "ParseCaseSensitive(true)"

    return-object v0

    nop

    :pswitch_data_1c
    .packed-switch 0x0
        :pswitch_18  #00000000
        :pswitch_15  #00000001
        :pswitch_12  #00000002
        :pswitch_f  #00000003
    .end packed-switch
.end method
