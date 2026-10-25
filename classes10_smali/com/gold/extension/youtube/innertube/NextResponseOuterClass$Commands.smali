.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CommandsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Commands"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$CommandsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHOWSHEETCOMMAND_FIELD_NUMBER:I = 0x1a6e45c9


# instance fields
.field private bitField0_:I

.field private showSheetCommand_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;


# direct methods
.method public static bridge synthetic -$$Nest$mclearShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->clearShowSheetCommand()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->mergeShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->setShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 4596
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;-><init>()V

    .line 4599
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    .line 4600
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 4344
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearShowSheetCommand()V
    .registers 2

    const/4 v0, 0x0

    .line 4391
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->showSheetCommand_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    .line 4392
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 1

    .line 4605
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object v0
.end method

.method private mergeShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V
    .registers 4

    .line 4377
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4378
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->showSheetCommand_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    if-eqz v0, :cond_22

    .line 4379
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 4380
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->showSheetCommand_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    .line 4381
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->showSheetCommand_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    goto :goto_24

    .line 4383
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->showSheetCommand_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    .line 4385
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;
    .registers 1

    .line 4472
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;
    .registers 2

    .line 4475
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4448
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4455
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4411
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4418
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4460
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4467
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4435
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4442
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4398
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4405
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4423
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 4430
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;",
            ">;"
        }
    .end annotation

    .line 4611
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setShowSheetCommand(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;)V
    .registers 2

    .line 4368
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4369
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->showSheetCommand_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    .line 4370
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 4546
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 4589
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 4582
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 4567
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 4569
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    monitor-enter p1

    .line 4570
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 4572
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 4575
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 4577
    :cond_2a
    :goto_2a
    monitor-exit p1

    return-object p0

    :goto_2c
    monitor-exit p1
    :try_end_2d
    .catchall {:try_start_1a .. :try_end_2d} :catchall_28

    throw p0

    :cond_2e
    return-object p0

    .line 4564
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    return-object p0

    .line 4554
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "showSheetCommand_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 4558
    const-string p1, "\u0000\u0001\u0000\u0001\ue5c9퍲\ue5c9퍲\u0001\u0000\u0000\u0000\ue5c9퍲ဉ\u0000"

    .line 4561
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 4551
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 4548
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;-><init>()V

    return-object p0

    nop

    :pswitch_data_50
    .packed-switch 0x1
        :pswitch_49  #00000001
        :pswitch_43  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getShowSheetCommand()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;
    .registers 1

    .line 4361
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->showSheetCommand_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShowSheetCommand;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasShowSheetCommand()Z
    .registers 2

    .line 4354
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$Commands;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
