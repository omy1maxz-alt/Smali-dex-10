.class public final synthetic Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Lcom/gold/extension/shared/ByteTrieSearch;

.field public final synthetic f$1:Ljava/util/Map;


# direct methods
.method public synthetic constructor <init>(Lcom/gold/extension/shared/ByteTrieSearch;Ljava/util/Map;)V
    .registers 3

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda3;->f$0:Lcom/gold/extension/shared/ByteTrieSearch;

    iput-object p2, p0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 2

    .line 0
    iget-object v0, p0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda3;->f$0:Lcom/gold/extension/shared/ByteTrieSearch;

    iget-object p0, p0, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter$$ExternalSyntheticLambda3;->f$1:Ljava/util/Map;

    invoke-static {v0, p0}, Lcom/gold/extension/youtube/patches/components/KeywordContentFilter;->$r8$lambda$KBVx6s1DRt3RxIYYRtP16OdDr_Y(Lcom/gold/extension/shared/ByteTrieSearch;Ljava/util/Map;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
