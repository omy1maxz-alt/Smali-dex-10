.class public final Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
.super Lcom/google/protobuf/GeneratedMessageLite;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContentsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SecondaryContents"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;,
        Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/GeneratedMessageLite<",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;",
        ">;",
        "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContentsOrBuilder;"
    }
.end annotation


# static fields
.field private static final DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

.field public static final ITEMSECTIONRENDERER_FIELD_NUMBER:I = 0x2fdec06

.field private static volatile PARSER:Lcom/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;",
            ">;"
        }
    .end annotation
.end field

.field public static final SHELFRENDERER_FIELD_NUMBER:I = 0x31717cb

.field public static final SLIMVIDEOMETADATASECTIONRENDERER_FIELD_NUMBER:I = 0xce876fd


# instance fields
.field private dataCase_:I

.field private data_:Ljava/lang/Object;


# direct methods
.method public static bridge synthetic -$$Nest$mclearData(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->clearData()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->clearItemSectionRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->clearShelfRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mclearSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->clearSlimVideoMetadataSectionRenderer()V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->mergeItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->mergeShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$mmergeSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->mergeSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->setItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->setShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$msetSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->setSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V

    return-void
.end method

.method public static bridge synthetic -$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 1

    .line 0
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 2152
    new-instance v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-direct {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;-><init>()V

    .line 2155
    sput-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    .line 2156
    const-class v1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v1, v0}, Lcom/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method private constructor <init>()V
    .registers 2

    .line 1635
    invoke-direct {p0}, Lcom/google/protobuf/GeneratedMessageLite;-><init>()V

    const/4 v0, 0x0

    .line 1637
    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    return-void
.end method

.method private clearData()V
    .registers 2

    const/4 v0, 0x0

    .line 1679
    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const/4 v0, 0x0

    .line 1680
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    return-void
.end method

.method private clearItemSectionRenderer()V
    .registers 3

    .line 1781
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0x2fdec06

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    .line 1782
    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const/4 v0, 0x0

    .line 1783
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private clearShelfRenderer()V
    .registers 3

    .line 1833
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0x31717cb

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    .line 1834
    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const/4 v0, 0x0

    .line 1835
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method private clearSlimVideoMetadataSectionRenderer()V
    .registers 3

    .line 1729
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0xce876fd

    if-ne v0, v1, :cond_d

    const/4 v0, 0x0

    .line 1730
    iput v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const/4 v0, 0x0

    .line 1731
    iput-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    :cond_d
    return-void
.end method

.method public static getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 1

    .line 2161
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object v0
.end method

.method private mergeItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V
    .registers 5

    .line 1767
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1768
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0x2fdec06

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    .line 1769
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 1770
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;

    move-result-object v0

    .line 1771
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    goto :goto_29

    .line 1773
    :cond_27
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    .line 1775
    :goto_29
    iput v1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    return-void
.end method

.method private mergeShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V
    .registers 5

    .line 1819
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1820
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0x31717cb

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    .line 1821
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 1822
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;

    move-result-object v0

    .line 1823
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    goto :goto_29

    .line 1825
    :cond_27
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    .line 1827
    :goto_29
    iput v1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    return-void
.end method

.method private mergeSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V
    .registers 5

    .line 1715
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1716
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0xce876fd

    if-ne v0, v1, :cond_27

    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    .line 1717
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    move-result-object v2

    if-eq v0, v2, :cond_27

    .line 1718
    iget-object v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    invoke-static {v0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;

    move-result-object v0

    .line 1719
    invoke-virtual {v0, p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->mergeFrom(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p1

    check-cast p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer$Builder;

    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p1

    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    goto :goto_29

    .line 1721
    :cond_27
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    .line 1723
    :goto_29
    iput v1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    return-void
.end method

.method public static newBuilder()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 1

    .line 1916
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder()Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;

    return-object v0
.end method

.method public static newBuilder(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;
    .registers 2

    .line 1919
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->createBuilder(Lcom/google/protobuf/GeneratedMessageLite;)Lcom/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1892
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseDelimitedFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1899
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseDelimitedFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1855
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1862
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/ByteString;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1904
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom(Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1911
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Lcom/google/protobuf/CodedInputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1879
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom(Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1886
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1842
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom(Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1849
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Lcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom([B)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1867
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[B)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parseFrom([BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 1874
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {v0, p0, p1}, Lcom/google/protobuf/GeneratedMessageLite;->parseFrom(Lcom/google/protobuf/GeneratedMessageLite;[BLcom/google/protobuf/ExtensionRegistryLite;)Lcom/google/protobuf/GeneratedMessageLite;

    move-result-object p0

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0
.end method

.method public static parser()Lcom/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Parser<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;",
            ">;"
        }
    .end annotation

    .line 2167
    sget-object v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-virtual {v0}, Lcom/google/protobuf/GeneratedMessageLite;->getParserForType()Lcom/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private setItemSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;)V
    .registers 2

    .line 1758
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1759
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    const p1, 0x2fdec06

    .line 1760
    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    return-void
.end method

.method private setShelfRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;)V
    .registers 2

    .line 1810
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1811
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    const p1, 0x31717cb

    .line 1812
    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    return-void
.end method

.method private setSlimVideoMetadataSectionRenderer(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;)V
    .registers 2

    .line 1706
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 1707
    iput-object p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    const p1, 0xce876fd

    .line 1708
    iput p1, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    return-void
.end method


# virtual methods
.method public final dynamicMethod(Lcom/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 5

    .line 2099
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p0, p0, p1

    const/4 p1, 0x0

    packed-switch p0, :pswitch_data_56

    .line 2145
    throw p1

    :pswitch_d  #0x6
    const/4 p0, 0x1

    .line 2138
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    return-object p0

    .line 2123
    :pswitch_13  #0x5
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2e

    .line 2125
    const-class p1, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    monitor-enter p1

    .line 2126
    :try_start_1a
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->PARSER:Lcom/google/protobuf/Parser;

    if-nez p0, :cond_2a

    .line 2128
    new-instance p0, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-direct {p0, p2}, Lcom/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    .line 2131
    sput-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->PARSER:Lcom/google/protobuf/Parser;

    goto :goto_2a

    :catchall_28
    move-exception p0

    goto :goto_2c

    .line 2133
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

    .line 2120
    :pswitch_2f  #0x4
    sget-object p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    return-object p0

    .line 2107
    :pswitch_32  #0x3
    const-string p0, "data_"

    const-string p1, "dataCase_"

    const-class p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    const-class p3, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    const-class v0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    filled-new-array {p0, p1, p2, p3, v0}, [Ljava/lang/Object;

    move-result-object p0

    .line 2114
    const-string p1, "\u0000\u0003\u0001\u0000\uec06៯\uf6fd权\u0003\u0000\u0000\u0000\uec06៯<\u0000\uf7cbᢸ<\u0000\uf6fd权<\u0000"

    .line 2117
    sget-object p2, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->DEFAULT_INSTANCE:Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-static {p2, p1, p0}, Lcom/google/protobuf/GeneratedMessageLite;->newMessageInfo(Lcom/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 2104
    :pswitch_49  #0x2
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;

    invoke-direct {p0, p1}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$Builder;-><init>(Lcom/gold/extension/youtube/innertube/NextResponseOuterClass-IA;)V

    return-object p0

    .line 2101
    :pswitch_4f  #0x1
    new-instance p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;

    invoke-direct {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;-><init>()V

    return-object p0

    nop

    :pswitch_data_56
    .packed-switch 0x1
        :pswitch_4f  #00000001
        :pswitch_49  #00000002
        :pswitch_32  #00000003
        :pswitch_2f  #00000004
        :pswitch_13  #00000005
        :pswitch_d  #00000006
    .end packed-switch
.end method

.method public getDataCase()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;
    .registers 1

    .line 1674
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    invoke-static {p0}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;->forNumber(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents$DataCase;

    move-result-object p0

    return-object p0
.end method

.method public getItemSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;
    .registers 3

    .line 1748
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0x2fdec06

    if-ne v0, v1, :cond_c

    .line 1749
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    return-object p0

    .line 1751
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ItemSectionRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getShelfRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;
    .registers 3

    .line 1800
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0x31717cb

    if-ne v0, v1, :cond_c

    .line 1801
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    return-object p0

    .line 1803
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$ShelfRenderer;

    move-result-object p0

    return-object p0
.end method

.method public getSlimVideoMetadataSectionRenderer()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;
    .registers 3

    .line 1696
    iget v0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v1, 0xce876fd

    if-ne v0, v1, :cond_c

    .line 1697
    iget-object p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->data_:Ljava/lang/Object;

    check-cast p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    return-object p0

    .line 1699
    :cond_c
    invoke-static {}, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;->getDefaultInstance()Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRenderer;

    move-result-object p0

    return-object p0
.end method

.method public hasItemSectionRenderer()Z
    .registers 2

    .line 1741
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v0, 0x2fdec06

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasShelfRenderer()Z
    .registers 2

    .line 1793
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v0, 0x31717cb

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method

.method public hasSlimVideoMetadataSectionRenderer()Z
    .registers 2

    .line 1689
    iget p0, p0, Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SecondaryContents;->dataCase_:I

    const v0, 0xce876fd

    if-ne p0, v0, :cond_9

    const/4 p0, 0x1

    return p0

    :cond_9
    const/4 p0, 0x0

    return p0
.end method
