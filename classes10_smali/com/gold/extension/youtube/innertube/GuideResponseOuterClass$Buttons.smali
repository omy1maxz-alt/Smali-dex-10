.class public final Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "GuideResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Buttons"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;,
        Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonsOrBuilder;"
    }
.end annotation


# static fields
.field public static final BUTTONRENDERER_FIELD_NUMBER:I = 0x3e22b11

.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
            ">;"
        }
    .end annotation
.end field

.field public static final TOPBARBUTTONRENDERER_FIELD_NUMBER:I = 0x13322bde


# instance fields
.field private dataCase_:I

.field private data_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mclearButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->clearButtonRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->clearData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->clearTopbarButtonRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->mergeButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->mergeTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->setButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->setTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 1942
    new-instance v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;-><init>()V

    .line 1945
    sput-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    .line 1946
    const-class v1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1528
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1530
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    return-void
.end method

.method private clearButtonRenderer()V
    .registers 3

    .line 1620
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const v1, 0x3e22b11

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    .line 1621
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const/4 v0, 0x0

    .line 1622
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private clearData()V
    .registers 2

    const/4 v0, 0x0

    .line 1570
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const/4 v0, 0x0

    .line 1571
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    return-void
.end method

.method private clearTopbarButtonRenderer()V
    .registers 3

    .line 1672
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const v1, 0x13322bde

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    .line 1673
    iput v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const/4 v0, 0x0

    .line 1674
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 1

    .line 1951
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object v0
.end method

.method private mergeButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V
    .registers 5

    .line 1606
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1607
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const v1, 0x3e22b11

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    .line 1608
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 1609
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    move-result-object v0

    .line 1610
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    goto :goto_29

    .line 1612
    :cond_27
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    .line 1614
    :goto_29
    iput v1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    return-void
.end method

.method private mergeTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V
    .registers 5

    .line 1658
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1659
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const v1, 0x13322bde

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    .line 1660
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 1661
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer$Builder;

    move-result-object v0

    .line 1662
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    goto :goto_29

    .line 1664
    :cond_27
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    .line 1666
    :goto_29
    iput v1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 1

    .line 1755
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;
    .registers 2

    .line 1758
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1731
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1738
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1694
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1701
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1743
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1750
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1718
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1725
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1681
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1688
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1706
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1713
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;",
            ">;"
        }
    .end annotation

    .line 1957
    sget-object v0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;)V
    .registers 2

    .line 1597
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1598
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    const p1, 0x3e22b11

    .line 1599
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    return-void
.end method

.method private setTopbarButtonRenderer(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;)V
    .registers 2

    .line 1649
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1650
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    const p1, 0x13322bde

    .line 1651
    iput p1, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 4

    .line 1890
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_54

    .line 1935
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 1928
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 1913
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 1915
    const-class p1, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    monitor-enter p1

    .line 1916
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 1918
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 1921
    sput-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 1923
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

    .line 1910
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    return-object p0

    .line 1898
    :pswitch_32  #0x3
    const-string p0, "data_"

    const-string p1, "dataCase_"

    const-class p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    const-class p3, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;

    filled-new-array {p0, p1, p2, p3}, [Ljava/lang/Object;

    move-result-object p0

    .line 1904
    const-string p1, "\u0000\u0002\u0001\u0000\ueb11ἑ\uebde馑\u0002\u0000\u0000\u0000\ueb11ἑ<\u0000\uebde馑<\u0000"

    .line 1907
    sget-object p2, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 1895
    :pswitch_47  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$Builder;-><init>(Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass-IA;)V

    return-object p0

    .line 1892
    :pswitch_4d  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;-><init>()V

    return-object p0

    nop

    :pswitch_data_54
    .packed-switch 0x1
        :pswitch_4d  #00000001
        :pswitch_47  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;
    .registers 3

    .line 1587
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const v1, 0x3e22b11

    if-ne v0, v1, :cond_c

    .line 1588
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    return-object p0

    .line 1590
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$ButtonRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;
    .registers 1

    .line 1565
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;->forNumber(I)Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getTopbarButtonRenderer()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;
    .registers 3

    .line 1639
    iget v0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const v1, 0x13322bde

    if-ne v0, v1, :cond_c

    .line 1640
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;

    return-object p0

    .line 1642
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$TopbarButtonRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasButtonRenderer()Z
    .registers 2

    .line 1580
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const v0, 0x3e22b11

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasTopbarButtonRenderer()Z
    .registers 2

    .line 1632
    iget p0, p0, Lcom/gold/extension/youtube/innertube/GuideResponseOuterClass$Buttons;->dataCase_:I

    const v0, 0x13322bde

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
