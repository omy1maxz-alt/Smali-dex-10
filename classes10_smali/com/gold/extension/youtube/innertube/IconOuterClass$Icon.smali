.class public final Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "IconOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/IconOuterClass$IconOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/IconOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Icon"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;",
        "Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/IconOuterClass$IconOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;",
            ">;"
        }
    .end annotation
.end field

.field public static final YTICONTYPE_FIELD_NUMBER:I = 0x1


# instance fields
.field private ytIconType_:I


# direct methods
.method public static bridge synthetic -$$Nest$mclearYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->clearYtIconType()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->setYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetYtIconTypeValue(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->setYtIconTypeValue(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 11953
    new-instance v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;-><init>()V

    .line 11956
    sput-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    .line 11957
    const-class v1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 1

    .line 11709
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    return-void
.end method

.method private clearYtIconType()V
    .registers 2

    const/4 v0, 0x0

    .line 11751
    iput v0, p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->ytIconType_:I

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 1

    .line 11962
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;
    .registers 1

    .line 11831
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;
    .registers 2

    .line 11834
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11807
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11814
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11770
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11777
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11819
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11826
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11794
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 11801
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11757
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11764
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11782
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 11789
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;",
            ">;"
        }
    .end annotation

    .line 11968
    sget-object v0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setYtIconType(Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;)V
    .registers 2

    .line 11743
    invoke-virtual {p1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;->getNumber()I

    move-result p1

    iput p1, p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->ytIconType_:I

    return-void
.end method

.method private setYtIconTypeValue(I)V
    .registers 2

    .line 11735
    iput p1, p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->ytIconType_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 11905
    sget-object p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_4e

    .line 11946
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 11939
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 11924
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 11926
    const-class p1, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    monitor-enter p1

    .line 11927
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 11929
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 11932
    sput-object p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 11934
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

    .line 11921
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    return-object p0

    .line 11913
    :pswitch_32  #0x3
    const-string p0, "ytIconType_"

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    .line 11916
    const-string p1, "\u0000\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0000\u0000\u0001\f"

    .line 11918
    sget-object p2, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 11910
    :pswitch_41  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon$Builder;-><init>(Lcom/gold/extension/youtube/innertube/IconOuterClass-IA;)V

    return-object p0

    .line 11907
    :pswitch_47  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;-><init>()V

    return-object p0

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_47  #00000001
        :pswitch_41  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getYtIconType()Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;
    .registers 1

    .line 11727
    iget p0, p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->ytIconType_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;->forNumber(I)Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    move-result-object p0

    if-nez p0, :cond_a

    .line 11728
    sget-object p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;->UNRECOGNIZED:Lcom/gold/extension/youtube/innertube/IconOuterClass$YTIconType;

    :cond_a
    return-object p0
.end method

.method public getYtIconTypeValue()I
    .registers 1

    .line 11719
    iget p0, p0, Lcom/gold/extension/youtube/innertube/IconOuterClass$Icon;->ytIconType_:I

    return p0
.end method
