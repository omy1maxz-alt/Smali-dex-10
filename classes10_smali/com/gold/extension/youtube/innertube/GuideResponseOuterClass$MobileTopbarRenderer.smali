.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRendererOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MobileTopbarRenderer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRendererOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUTTONS_FIELD_NUMBER:I = 0x4

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

.field private static volatile PARSER:Lcom/google/protobuf/Parser;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private buttons_:Lcom/google/protobuf/Internal$ProtobufList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$ProtobufList<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static bridge synthetic -$$Nest$maddAllButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;Ljava/lang/Iterable;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->addAllButtons(Ljava/lang/Iterable;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->addButtons(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$maddButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->addButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->clearButtons()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mremoveButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->removeButtons(I)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->setButtons(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1473
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;-><init>()V

    .line 1476
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    .line 1477
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1118
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 1119
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private addAllButtons(Ljava/lang/Iterable;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "+",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
            ">;)V"
        }
    .end annotation

    .line 1200
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->ensureButtonsIsMutable()V

    .line 1201
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-static {p1, p0}, Lcom/google/protobuf/AbstractMessageLite;->addAll(Ljava/lang/Iterable;Ljava/util/List;)V

    return-void
.end method

.method private addButtons(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 3

    .line 1191
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1192
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->ensureButtonsIsMutable()V

    .line 1193
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    return-void
.end method

.method private addButtons(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 2

    .line 1181
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1182
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->ensureButtonsIsMutable()V

    .line 1183
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private clearButtons()V
    .registers 2

    .line 1208
    invoke-static {}, Lcom/google/protobuf/GeneratedMessageLite;->emptyProtobufList()Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-void
.end method

.method private ensureButtonsIsMutable()V
    .registers 3

    .line 1159
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    .line 1160
    invoke-interface {v0}, Lcom/google/protobuf/Internal$ProtobufList;->isModifiable()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1162
    invoke-static {v0}, Lcom/google/protobuf/GeneratedMessageLite;->mutableCopy(Lcom/google/protobuf/Internal$ProtobufList;)Lcom/google/protobuf/Internal$ProtobufList;

    move-result-object v0

    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    :cond_e
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 1

    .line 1482
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object v0
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 1

    .line 1295
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;
    .registers 2

    .line 1298
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1271
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1278
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1234
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1241
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1283
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1290
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1258
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1265
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1221
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1228
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1246
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1253
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;",
            ">;"
        }
    .end annotation

    .line 1488
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private removeButtons(I)V
    .registers 2

    .line 1214
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->ensureButtonsIsMutable()V

    .line 1215
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method private setButtons(ILcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 3

    .line 1172
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1173
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->ensureButtonsIsMutable()V

    .line 1174
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1424
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_50

    .line 1466
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 1459
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1444
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 1446
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    monitor-enter p1

    .line 1447
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 1449
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1452
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1454
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

    .line 1441
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    return-object p0

    .line 1432
    :pswitch_32  #0x3
    const-string p0, "buttons_"

    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    filled-new-array {p0, p1}, [Ljava/lang/Object;

    move-result-object p0

    .line 1436
    const-string p1, "\u0000\u0001\u0000\u0000\u0004\u0004\u0001\u0000\u0001\u0000\u0004\u001b"

    .line 1438
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1429
    :pswitch_43  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 1426
    :pswitch_49  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;-><init>()V

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

.method public getButtons(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 2

    .line 1149
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public getButtonsCount()I
    .registers 1

    .line 1142
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    return p0
.end method

.method public getButtonsList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
            ">;"
        }
    .end annotation

    .line 1128
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method

.method public getButtonsOrBuilder(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonsOrBuilder;
    .registers 2

    .line 1156
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonsOrBuilder;

    return-object p0
.end method

.method public getButtonsOrBuilderList()Ljava/util/List;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonsOrBuilder;",
            ">;"
        }
    .end annotation

    .line 1135
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$MobileTopbarRenderer;->buttons_:Lcom/google/protobuf/Internal$ProtobufList;

    return-object p0
.end method
