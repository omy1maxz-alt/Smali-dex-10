.class final Ljj$/time/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final DURATION_TYPE:B = 0x1t

.field static final INSTANT_TYPE:B = 0x2t

.field static final LOCAL_DATE_TIME_TYPE:B = 0x5t

.field static final LOCAL_DATE_TYPE:B = 0x3t

.field static final LOCAL_TIME_TYPE:B = 0x4t

.field static final MONTH_DAY_TYPE:B = 0xdt

.field static final OFFSET_DATE_TIME_TYPE:B = 0xat

.field static final OFFSET_TIME_TYPE:B = 0x9t

.field static final PERIOD_TYPE:B = 0xet

.field static final YEAR_MONTH_TYPE:B = 0xct

.field static final YEAR_TYPE:B = 0xbt

.field static final ZONE_DATE_TIME_TYPE:B = 0x6t

.field static final ZONE_OFFSET_TYPE:B = 0x8t

.field static final ZONE_REGION_TYPE:B = 0x7t

.field private static final serialVersionUID:J = -0x6aa27b45e4ddb74eL


# instance fields
.field private object:Ljava/lang/Object;

.field private type:B


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method constructor <init>(BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte p1, p0, Ljj$/time/Ser;->type:B

    iput-object p2, p0, Ljj$/time/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method static read(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0, p0}, Ljj$/time/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .registers 4

    packed-switch p0, :pswitch_data_52

    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b  #0xe
    invoke-static {p1}, Ljj$/time/Period;->readExternal(Ljava/io/DataInput;)Ljj$/time/Period;

    move-result-object v0

    return-object v0

    :pswitch_10  #0xd
    invoke-static {p1}, Ljj$/time/MonthDay;->readExternal(Ljava/io/DataInput;)Ljj$/time/MonthDay;

    move-result-object v0

    return-object v0

    :pswitch_15  #0xc
    invoke-static {p1}, Ljj$/time/YearMonth;->readExternal(Ljava/io/DataInput;)Ljj$/time/YearMonth;

    move-result-object v0

    return-object v0

    :pswitch_1a  #0xb
    invoke-static {p1}, Ljj$/time/Year;->readExternal(Ljava/io/DataInput;)Ljj$/time/Year;

    move-result-object v0

    return-object v0

    :pswitch_1f  #0xa
    invoke-static {p1}, Ljj$/time/OffsetDateTime;->readExternal(Ljava/io/ObjectInput;)Ljj$/time/OffsetDateTime;

    move-result-object v0

    return-object v0

    :pswitch_24  #0x9
    invoke-static {p1}, Ljj$/time/OffsetTime;->readExternal(Ljava/io/ObjectInput;)Ljj$/time/OffsetTime;

    move-result-object v0

    return-object v0

    :pswitch_29  #0x8
    invoke-static {p1}, Ljj$/time/ZoneOffset;->readExternal(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;

    move-result-object v0

    return-object v0

    :pswitch_2e  #0x7
    invoke-static {p1}, Ljj$/time/ZoneRegion;->readExternal(Ljava/io/DataInput;)Ljj$/time/ZoneId;

    move-result-object v0

    return-object v0

    :pswitch_33  #0x6
    invoke-static {p1}, Ljj$/time/ZonedDateTime;->readExternal(Ljava/io/ObjectInput;)Ljj$/time/ZonedDateTime;

    move-result-object v0

    return-object v0

    :pswitch_38  #0x5
    invoke-static {p1}, Ljj$/time/LocalDateTime;->readExternal(Ljava/io/DataInput;)Ljj$/time/LocalDateTime;

    move-result-object v0

    return-object v0

    :pswitch_3d  #0x4
    invoke-static {p1}, Ljj$/time/LocalTime;->readExternal(Ljava/io/DataInput;)Ljj$/time/LocalTime;

    move-result-object v0

    return-object v0

    :pswitch_42  #0x3
    invoke-static {p1}, Ljj$/time/LocalDate;->readExternal(Ljava/io/DataInput;)Ljj$/time/LocalDate;

    move-result-object v0

    return-object v0

    :pswitch_47  #0x2
    invoke-static {p1}, Ljj$/time/Instant;->readExternal(Ljava/io/DataInput;)Ljj$/time/Instant;

    move-result-object v0

    return-object v0

    :pswitch_4c  #0x1
    invoke-static {p1}, Ljj$/time/Duration;->readExternal(Ljava/io/DataInput;)Ljj$/time/Duration;

    move-result-object v0

    return-object v0

    nop

    :pswitch_data_52
    .packed-switch 0x1
        :pswitch_4c  #00000001
        :pswitch_47  #00000002
        :pswitch_42  #00000003
        :pswitch_3d  #00000004
        :pswitch_38  #00000005
        :pswitch_33  #00000006
        :pswitch_2e  #00000007
        :pswitch_29  #00000008
        :pswitch_24  #00000009
        :pswitch_1f  #0000000a
        :pswitch_1a  #0000000b
        :pswitch_15  #0000000c
        :pswitch_10  #0000000d
        :pswitch_b  #0000000e
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/time/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .registers 5

    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    packed-switch p0, :pswitch_data_72

    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e  #0xe
    move-object v0, p1

    check-cast v0, Ljj$/time/Period;

    invoke-virtual {v0, p2}, Ljj$/time/Period;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_15  #0xd
    move-object v0, p1

    check-cast v0, Ljj$/time/MonthDay;

    invoke-virtual {v0, p2}, Ljj$/time/MonthDay;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_1c  #0xc
    move-object v0, p1

    check-cast v0, Ljj$/time/YearMonth;

    invoke-virtual {v0, p2}, Ljj$/time/YearMonth;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_23  #0xb
    move-object v0, p1

    check-cast v0, Ljj$/time/Year;

    invoke-virtual {v0, p2}, Ljj$/time/Year;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_2a  #0xa
    move-object v0, p1

    check-cast v0, Ljj$/time/OffsetDateTime;

    invoke-virtual {v0, p2}, Ljj$/time/OffsetDateTime;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_70

    :pswitch_31  #0x9
    move-object v0, p1

    check-cast v0, Ljj$/time/OffsetTime;

    invoke-virtual {v0, p2}, Ljj$/time/OffsetTime;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_70

    :pswitch_38  #0x8
    move-object v0, p1

    check-cast v0, Ljj$/time/ZoneOffset;

    invoke-virtual {v0, p2}, Ljj$/time/ZoneOffset;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_3f  #0x7
    move-object v0, p1

    check-cast v0, Ljj$/time/ZoneRegion;

    invoke-virtual {v0, p2}, Ljj$/time/ZoneRegion;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_46  #0x6
    move-object v0, p1

    check-cast v0, Ljj$/time/ZonedDateTime;

    invoke-virtual {v0, p2}, Ljj$/time/ZonedDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_4d  #0x5
    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDateTime;

    invoke-virtual {v0, p2}, Ljj$/time/LocalDateTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_54  #0x4
    move-object v0, p1

    check-cast v0, Ljj$/time/LocalTime;

    invoke-virtual {v0, p2}, Ljj$/time/LocalTime;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_5b  #0x3
    move-object v0, p1

    check-cast v0, Ljj$/time/LocalDate;

    invoke-virtual {v0, p2}, Ljj$/time/LocalDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_62  #0x2
    move-object v0, p1

    check-cast v0, Ljj$/time/Instant;

    invoke-virtual {v0, p2}, Ljj$/time/Instant;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_70

    :pswitch_69  #0x1
    move-object v0, p1

    check-cast v0, Ljj$/time/Duration;

    invoke-virtual {v0, p2}, Ljj$/time/Duration;->writeExternal(Ljava/io/DataOutput;)V

    nop

    :goto_70
    return-void

    nop

    :pswitch_data_72
    .packed-switch 0x1
        :pswitch_69  #00000001
        :pswitch_62  #00000002
        :pswitch_5b  #00000003
        :pswitch_54  #00000004
        :pswitch_4d  #00000005
        :pswitch_46  #00000006
        :pswitch_3f  #00000007
        :pswitch_38  #00000008
        :pswitch_31  #00000009
        :pswitch_2a  #0000000a
        :pswitch_23  #0000000b
        :pswitch_1c  #0000000c
        :pswitch_15  #0000000d
        :pswitch_e  #0000000e
    .end packed-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljj$/time/Ser;->type:B

    iget-byte v0, p0, Ljj$/time/Ser;->type:B

    invoke-static {v0, p1}, Ljj$/time/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4

    iget-byte v0, p0, Ljj$/time/Ser;->type:B

    iget-object v1, p0, Ljj$/time/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljj$/time/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    return-void
.end method
