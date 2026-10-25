.class final Ljj$/time/zone/Ser;
.super Ljava/lang/Object;
.source "Ser.java"

# interfaces
.implements Ljava/io/Externalizable;


# static fields
.field static final TZRULES:B = 0x64t

.field static final ZOT:B = 0x2t

.field static final ZOTRULE:B = 0x3t

.field static final ZRULES:B = 0x1t

.field private static final serialVersionUID:J = -0x7b4f011483e5ac42L


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

    iput-byte p1, p0, Ljj$/time/zone/Ser;->type:B

    iput-object p2, p0, Ljj$/time/zone/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method static read(Ljava/io/DataInput;)Ljava/lang/Object;
    .registers 3

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    invoke-static {v0, p0}, Ljj$/time/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method static readEpochSec(Ljava/io/DataInput;)J
    .registers 10

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0xff

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_e

    invoke-interface {p0}, Ljava/io/DataInput;->readLong()J

    move-result-wide v1

    return-wide v1

    :cond_e
    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v2

    and-int/2addr v2, v1

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v3

    and-int/2addr v1, v3

    shl-int/lit8 v3, v0, 0x10

    shl-int/lit8 v4, v2, 0x8

    add-int/2addr v3, v4

    add-int/2addr v3, v1

    int-to-long v3, v3

    const-wide/16 v5, 0x384

    mul-long v5, v5, v3

    const-wide v7, 0x110bc5000L

    sub-long/2addr v5, v7

    return-wide v5
.end method

.method private static readInternal(BLjava/io/DataInput;)Ljava/lang/Object;
    .registers 4

    sparse-switch p0, :sswitch_data_20

    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_b
    invoke-static {p1}, Ljj$/time/zone/ZoneRules;->readExternalTimeZone(Ljava/io/DataInput;)Ljj$/time/zone/ZoneRules;

    move-result-object v0

    return-object v0

    :sswitch_10
    invoke-static {p1}, Ljj$/time/zone/ZoneOffsetTransitionRule;->readExternal(Ljava/io/DataInput;)Ljj$/time/zone/ZoneOffsetTransitionRule;

    move-result-object v0

    return-object v0

    :sswitch_15
    invoke-static {p1}, Ljj$/time/zone/ZoneOffsetTransition;->readExternal(Ljava/io/DataInput;)Ljj$/time/zone/ZoneOffsetTransition;

    move-result-object v0

    return-object v0

    :sswitch_1a
    invoke-static {p1}, Ljj$/time/zone/ZoneRules;->readExternal(Ljava/io/DataInput;)Ljj$/time/zone/ZoneRules;

    move-result-object v0

    return-object v0

    nop

    :sswitch_data_20
    .sparse-switch
        0x1 -> :sswitch_1a
        0x2 -> :sswitch_15
        0x3 -> :sswitch_10
        0x64 -> :sswitch_b
    .end sparse-switch
.end method

.method static readOffset(Ljava/io/DataInput;)Ljj$/time/ZoneOffset;
    .registers 3

    invoke-interface {p0}, Ljava/io/DataInput;->readByte()B

    move-result v0

    const/16 v1, 0x7f

    if-ne v0, v1, :cond_d

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v1

    goto :goto_f

    :cond_d
    mul-int/lit16 v1, v0, 0x384

    :goto_f
    invoke-static {v1}, Ljj$/time/ZoneOffset;->ofTotalSeconds(I)Ljj$/time/ZoneOffset;

    move-result-object v1

    return-object v1
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Ljj$/time/zone/Ser;->object:Ljava/lang/Object;

    return-object v0
.end method

.method static write(Ljava/lang/Object;Ljava/io/DataOutput;)V
    .registers 3

    const/4 v0, 0x1

    invoke-static {v0, p0, p1}, Ljj$/time/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method

.method static writeEpochSec(JLjava/io/DataOutput;)V
    .registers 11

    const-wide v0, -0x110bc5000L

    const/16 v2, 0xff

    cmp-long v3, p0, v0

    if-ltz v3, :cond_38

    const-wide v0, 0x26cb5db00L

    cmp-long v3, p0, v0

    if-gez v3, :cond_38

    const-wide/16 v0, 0x384

    rem-long v3, p0, v0

    const-wide/16 v5, 0x0

    cmp-long v7, v3, v5

    if-nez v7, :cond_38

    const-wide v3, 0x110bc5000L

    add-long/2addr v3, p0

    div-long/2addr v3, v0

    long-to-int v0, v3

    ushr-int/lit8 v1, v0, 0x10

    and-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    ushr-int/lit8 v1, v0, 0x8

    and-int/2addr v1, v2

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    and-int/lit16 v1, v0, 0xff

    invoke-interface {p2, v1}, Ljava/io/DataOutput;->writeByte(I)V

    goto :goto_3e

    :cond_38
    invoke-interface {p2, v2}, Ljava/io/DataOutput;->writeByte(I)V

    invoke-interface {p2, p0, p1}, Ljava/io/DataOutput;->writeLong(J)V

    :goto_3e
    return-void
.end method

.method private static writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V
    .registers 5

    invoke-interface {p2, p0}, Ljava/io/DataOutput;->writeByte(I)V

    sparse-switch p0, :sswitch_data_2c

    new-instance v0, Ljava/io/InvalidClassException;

    const-string v1, "Unknown serialized type"

    invoke-direct {v0, v1}, Ljava/io/InvalidClassException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_e
    move-object v0, p1

    check-cast v0, Ljj$/time/zone/ZoneRules;

    invoke-virtual {v0, p2}, Ljj$/time/zone/ZoneRules;->writeExternalTimeZone(Ljava/io/DataOutput;)V

    goto :goto_2a

    :sswitch_15
    move-object v0, p1

    check-cast v0, Ljj$/time/zone/ZoneOffsetTransitionRule;

    invoke-virtual {v0, p2}, Ljj$/time/zone/ZoneOffsetTransitionRule;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_2a

    :sswitch_1c
    move-object v0, p1

    check-cast v0, Ljj$/time/zone/ZoneOffsetTransition;

    invoke-virtual {v0, p2}, Ljj$/time/zone/ZoneOffsetTransition;->writeExternal(Ljava/io/DataOutput;)V

    goto :goto_2a

    :sswitch_23
    move-object v0, p1

    check-cast v0, Ljj$/time/zone/ZoneRules;

    invoke-virtual {v0, p2}, Ljj$/time/zone/ZoneRules;->writeExternal(Ljava/io/DataOutput;)V

    nop

    :goto_2a
    return-void

    nop

    :sswitch_data_2c
    .sparse-switch
        0x1 -> :sswitch_23
        0x2 -> :sswitch_1c
        0x3 -> :sswitch_15
        0x64 -> :sswitch_e
    .end sparse-switch
.end method

.method static writeOffset(Ljj$/time/ZoneOffset;Ljava/io/DataOutput;)V
    .registers 5

    invoke-virtual {p0}, Ljj$/time/ZoneOffset;->getTotalSeconds()I

    move-result v0

    rem-int/lit16 v1, v0, 0x384

    const/16 v2, 0x7f

    if-nez v1, :cond_d

    div-int/lit16 v1, v0, 0x384

    goto :goto_f

    :cond_d
    const/16 v1, 0x7f

    :goto_f
    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeByte(I)V

    if-ne v1, v2, :cond_17

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->writeInt(I)V

    :cond_17
    return-void
.end method


# virtual methods
.method public readExternal(Ljava/io/ObjectInput;)V
    .registers 3

    invoke-interface {p1}, Ljava/io/ObjectInput;->readByte()B

    move-result v0

    iput-byte v0, p0, Ljj$/time/zone/Ser;->type:B

    iget-byte v0, p0, Ljj$/time/zone/Ser;->type:B

    invoke-static {v0, p1}, Ljj$/time/zone/Ser;->readInternal(BLjava/io/DataInput;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljj$/time/zone/Ser;->object:Ljava/lang/Object;

    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .registers 4

    iget-byte v0, p0, Ljj$/time/zone/Ser;->type:B

    iget-object v1, p0, Ljj$/time/zone/Ser;->object:Ljava/lang/Object;

    invoke-static {v0, v1, p1}, Ljj$/time/zone/Ser;->writeInternal(BLjava/lang/Object;Ljava/io/DataOutput;)V

    return-void
.end method
