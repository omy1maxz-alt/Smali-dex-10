.class final Ljj$/time/chrono/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final CHRONO_LOCAL_DATE_TIME_TYPE:B = 0x2t

.field static final CHRONO_PERIOD_TYPE:B = 0x9t

.field static final CHRONO_TYPE:B = 0x1t

.field static final CHRONO_ZONE_DATE_TIME_TYPE:B = 0x3t

.field static final HIJRAH_DATE_TYPE:B = 0x6t

.field static final JAPANESE_DATE_TYPE:B = 0x4t

.field static final JAPANESE_ERA_TYPE:B = 0x5t

.field static final MINGUO_DATE_TYPE:B = 0x7t

.field static final THAIBUDDHIST_DATE_TYPE:B = 0x8t

.field private static final serialVersionUID:J = -0x54b386e71d87ec81L


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

    iput-byte p1, p0, Ljj$/time/chrono/Ser;->type:B

    iput-object p2, p0, Ljj$/time/chrono/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method static read(Ljava/io/ObjectInput;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    invoke-static {v0, p0}, Ljj$/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;
    .registers 4

    packed-switch p0, :pswitch_data_38

    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_b  #0x9
    invoke-static {p1}, Ljj$/time/chrono/ChronoPeriodImpl;->readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/ChronoPeriodImpl;

    move-result-object v0

    return-object v0

    :pswitch_10  #0x8
    invoke-static {p1}, Ljj$/time/chrono/ThaiBuddhistDate;->readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/ThaiBuddhistDate;

    move-result-object v0

    return-object v0

    :pswitch_15  #0x7
    invoke-static {p1}, Ljj$/time/chrono/MinguoDate;->readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/MinguoDate;

    move-result-object v0

    return-object v0

    :pswitch_1a  #0x6
    invoke-static {p1}, Ljj$/time/chrono/HijrahDate;->readExternal(Ljava/io/ObjectInput;)Ljj$/time/chrono/HijrahDate;

    move-result-object v0

    return-object v0

    :pswitch_1f  #0x5
    invoke-static {p1}, Ljj$/time/chrono/JapaneseEra;->readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/JapaneseEra;

    move-result-object v0

    return-object v0

    :pswitch_24  #0x4
    invoke-static {p1}, Ljj$/time/chrono/JapaneseDate;->readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/JapaneseDate;

    move-result-object v0

    return-object v0

    :pswitch_29  #0x3
    invoke-static {p1}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljj$/time/chrono/ChronoZonedDateTime;

    move-result-object v0

    return-object v0

    :pswitch_2e  #0x2
    invoke-static {p1}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->readExternal(Ljava/io/ObjectInput;)Ljj$/time/chrono/ChronoLocalDateTime;

    move-result-object v0

    return-object v0

    :pswitch_33  #0x1
    invoke-static {p1}, Ljj$/time/chrono/AbstractChronology;->readExternal(Ljava/io/DataInput;)Ljj$/time/chrono/Chronology;

    move-result-object v0

    return-object v0

    :pswitch_data_38
    .packed-switch 0x1
        :pswitch_33  #00000001
        :pswitch_2e  #00000002
        :pswitch_29  #00000003
        :pswitch_24  #00000004
        :pswitch_1f  #00000005
        :pswitch_1a  #00000006
        :pswitch_15  #00000007
        :pswitch_10  #00000008
        :pswitch_b  #00000009
    .end packed-switch
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/time/chrono/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V
    .registers 5

    invoke-interface {p2, p0}, Ljava/io/ObjectOutput;->writeByte(I)V

    packed-switch p0, :pswitch_data_4e

    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_e  #0x9
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ChronoPeriodImpl;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/ChronoPeriodImpl;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_4d

    :pswitch_15  #0x8
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ThaiBuddhistDate;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/ThaiBuddhistDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_4d

    :pswitch_1c  #0x7
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/MinguoDate;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/MinguoDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_4d

    :pswitch_23  #0x6
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/HijrahDate;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/HijrahDate;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_4d

    :pswitch_2a  #0x5
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/JapaneseEra;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/JapaneseEra;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_4d

    :pswitch_31  #0x4
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/JapaneseDate;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/JapaneseDate;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_4d

    :pswitch_38  #0x3
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ChronoZonedDateTimeImpl;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/ChronoZonedDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_4d

    :pswitch_3f  #0x2
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/ChronoLocalDateTimeImpl;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/ChronoLocalDateTimeImpl;->writeExternal(Ljava/io/ObjectOutput;)V

    goto :goto_4d

    :pswitch_46  #0x1
    move-object v0, p1

    check-cast v0, Ljj$/time/chrono/AbstractChronology;

    invoke-virtual {v0, p2}, Ljj$/time/chrono/AbstractChronology;->writeExternal(Ljava/io/DataOutput;)V

    nop

    :goto_4d
    return-void

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_46  #00000001
        :pswitch_3f  #00000002
        :pswitch_38  #00000003
        :pswitch_31  #00000004
        :pswitch_2a  #00000005
        :pswitch_23  #00000006
        :pswitch_1c  #00000007
        :pswitch_15  #00000008
        :pswitch_e  #00000009
    .end packed-switch
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljj$/time/chrono/Ser;->type:B

    iget-byte v0, p0, Ljj$/time/chrono/Ser;->type:B

    invoke-static {v0, p1}, Ljj$/time/chrono/Ser;->readInternal(BLjava/io/ObjectInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/chrono/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4

    iget-byte v0, p0, Ljj$/time/chrono/Ser;->type:B

    iget-object v1, p0, Ljj$/time/chrono/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljj$/time/chrono/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/ObjectOutput;)V

    return-void
.end method
