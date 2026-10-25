.class public final Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "PlayerResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Format"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;",
        ">;",
        "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$FormatOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;"
        }
    .end annotation
.end field

.field public static final SIGNATURECIPHER_FIELD_NUMBER:I = 0x30

.field public static final URL_FIELD_NUMBER:I = 0x2


# instance fields
.field private signatureCipher_:Ljava/lang/String;

.field private url_:Ljava/lang/String;


# direct methods
.method public static bridge synthetic -$$Nest$mclearSignatureCipher(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->clearSignatureCipher()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearUrl(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->clearUrl()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSignatureCipher(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->setSignatureCipher(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSignatureCipherBytes(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->setSignatureCipherBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUrl(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;Ljava/lang/String;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->setUrl(Ljava/lang/String;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetUrlBytes(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->setUrlBytes(Lcom/google/protobuf/ByteString;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 2089
    new-instance v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-direct {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;-><init>()V

    .line 2092
    sput-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    .line 2093
    const-class v1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1738
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1739
    const-string v0, ""

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->url_:Ljava/lang/String;

    .line 1740
    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->signatureCipher_:Ljava/lang/String;

    return-void
.end method

.method private clearSignatureCipher()V
    .registers 2

    .line 1825
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getSignatureCipher()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->signatureCipher_:Ljava/lang/String;

    return-void
.end method

.method private clearUrl()V
    .registers 2

    .line 1777
    invoke-static {}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->getUrl()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->url_:Ljava/lang/String;

    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 1

    .line 2098
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    .registers 1

    .line 1915
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;
    .registers 2

    .line 1918
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1891
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1898
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1854
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1861
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1903
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1910
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1878
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1885
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1841
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1848
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1866
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1873
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;",
            ">;"
        }
    .end annotation

    .line 2104
    sget-object v0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setSignatureCipher(Ljava/lang/String;)V
    .registers 2

    .line 1816
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1818
    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->signatureCipher_:Ljava/lang/String;

    return-void
.end method

.method private setSignatureCipherBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1833
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1834
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->signatureCipher_:Ljava/lang/String;

    return-void
.end method

.method private setUrl(Ljava/lang/String;)V
    .registers 2

    .line 1768
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1770
    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->url_:Ljava/lang/String;

    return-void
.end method

.method private setUrlBytes(Lcom/google/protobuf/ByteString;)V
    .registers 2

    .line 1785
    invoke-static {p1}, Lcom/google/protobuf/AbstractMessageLite;->checkByteStringIsUtf8(Lcom/google/protobuf/ByteString;)V

    .line 1786
    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->url_:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 2040
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 2082
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 2075
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2060
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 2062
    const-class p1, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    monitor-enter p1

    .line 2063
    :try_start_1a
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 2065
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2068
    sput-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 2070
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

    .line 2057
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    return-object p0

    .line 2048
    :pswitch_32  #0x3
    const-string p0, "url_"

    const-string p1, "signatureCipher_"

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 2052
    const-string p1, "\u0000\u0002\u0000\u0000\u00020\u0002\u0000\u0000\u0000\u0002Ȉ0Ȉ"

    .line 2054
    sget-object p2, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->DEFAULT_INSTANCE:Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2045
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format$Builder;-><init>(Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass-IA;)V

    return-object p0

    .line 2042
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;

    invoke-direct {p0}, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;-><init>()V

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

.method public getSignatureCipher()Ljava/lang/String;
    .registers 1

    .line 1798
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->signatureCipher_:Ljava/lang/String;

    return-object p0
.end method

.method public getSignatureCipherBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 1807
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->signatureCipher_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method

.method public getUrl()Ljava/lang/String;
    .registers 1

    .line 1750
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->url_:Ljava/lang/String;

    return-object p0
.end method

.method public getUrlBytes()Lcom/google/protobuf/ByteString;
    .registers 1

    .line 1759
    iget-object p0, p0, Lcom/gold/extension/shared/innertube/PlayerResponseOuterClass$Format;->url_:Ljava/lang/String;

    invoke-static {p0}, Lcom/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Lcom/google/protobuf/ByteString;

    move-result-object p0

    return-object p0
.end method
