.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResultsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PrimaryResults"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResultsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;",
            ">;"
        }
    .end annotation
.end field

.field public static final SECONDARYRESULTS_FIELD_NUMBER:I = 0x2f1c7f5


# instance fields
.field private bitField0_:I

.field private secondaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;


# direct methods
.method public static bridge synthetic -$$Nest$mclearSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->clearSecondaryResults()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->mergeSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->setSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1169
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;-><init>()V

    .line 1172
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    .line 1173
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 917
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearSecondaryResults()V
    .registers 2

    const/4 v0, 0x0

    .line 964
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->secondaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    .line 965
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->bitField0_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 1

    .line 1178
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object v0
.end method

.method private mergeSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V
    .registers 4

    .line 950
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 951
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->secondaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    if-eqz v0, :cond_22

    .line 952
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    move-result-object v1

    if-eq v0, v1, :cond_22

    .line 953
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->secondaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    .line 954
    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->secondaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    goto :goto_24

    .line 956
    :cond_22
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->secondaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    .line 958
    :goto_24
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->bitField0_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;
    .registers 1

    .line 1045
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;
    .registers 2

    .line 1048
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1021
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1028
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 984
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 991
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1033
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1040
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1008
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1015
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 971
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 978
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 996
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1003
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;",
            ">;"
        }
    .end annotation

    .line 1184
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setSecondaryResults(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;)V
    .registers 2

    .line 941
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 942
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->secondaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    .line 943
    iget p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->bitField0_:I

    or-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->bitField0_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1119
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 1162
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 1155
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1140
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 1142
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    monitor-enter p1

    .line 1143
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 1145
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1148
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1150
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

    .line 1137
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    return-object p0

    .line 1127
    :pswitch_32  #0x3
    const-string p0, "bitField0_"

    const-string p1, "secondaryResults_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1131
    const-string p1, "\u0000\u0001\u0000\u0001\ue7f5ណ\ue7f5ណ\u0001\u0000\u0000\u0000\ue7f5ណဉ\u0000"

    .line 1134
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1124
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 1121
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;-><init>()V

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

.method public getSecondaryResults()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;
    .registers 1

    .line 934
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->secondaryResults_:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    if-nez p0, :cond_8

    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryResults;

    move-result-object p0

    :cond_8
    return-object p0
.end method

.method public hasSecondaryResults()Z
    .registers 2

    .line 927
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$PrimaryResults;->bitField0_:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    return v0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method
