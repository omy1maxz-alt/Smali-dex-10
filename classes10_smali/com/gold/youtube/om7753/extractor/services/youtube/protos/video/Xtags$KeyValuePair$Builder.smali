.class public final Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
.super Lcom/google/protobuf/GeneratedMessageLite$Builder;
.source "Xtags.java"

# interfaces
.implements Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePairOrBuilder;


# direct methods
.method private constructor <init>()V
    .registers 2

    invoke-static {}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->-$$Nest$sfgetDEFAULT_INSTANCE()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/google/protobuf/GeneratedMessageLite;)V

    return-void
.end method

.method synthetic constructor <init>(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags-IA;)V
    .registers 2

    invoke-direct {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public clearKey()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->-$$Nest$mclearKey(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-object p0
.end method

.method public clearValue()Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
    .registers 2

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->-$$Nest$mclearValue(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;)V

    return-object p0
.end method

.method public getKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getKeyBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getValueBytes()Lcom/google/protobuf/ByteString;
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->getValueBytes()Lcom/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public hasKey()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->hasKey()Z

    move-result v0

    return v0
.end method

.method public hasValue()Z
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->hasValue()Z

    move-result v0

    return v0
.end method

.method public setKey(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->-$$Nest$msetKey(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;Ljava/lang/String;)V

    return-object p0
.end method

.method public setKeyBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->-$$Nest$msetKeyBytes(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->-$$Nest$msetValue(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;Ljava/lang/String;)V

    return-object p0
.end method

.method public setValueBytes(Lcom/google/protobuf/ByteString;)Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;
    .registers 3

    invoke-virtual {p0}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->copyOnWrite()V

    iget-object v0, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair$Builder;->instance:Lcom/google/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;

    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;->-$$Nest$msetValueBytes(Lcom/gold/youtube/om7753/extractor/services/youtube/protos/video/Xtags$KeyValuePair;Lcom/google/protobuf/ByteString;)V

    return-object p0
.end method
