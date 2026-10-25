.class abstract Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;
.super Ljava/lang/Object;
.source "YoutubeStreamInfoItemLockupExtractor.java"


# instance fields
.field protected viewModel:Lcom/grack/nanojson/JsonObject;


# direct methods
.method protected constructor <init>(Lcom/grack/nanojson/JsonObject;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/extractor/services/youtube/extractors/YoutubeStreamInfoItemLockupExtractor$ChannelImageViewModel;->viewModel:Lcom/grack/nanojson/JsonObject;

    return-void
.end method


# virtual methods
.method public abstract forAvatarExtraction()Lcom/grack/nanojson/JsonObject;
.end method

.method public abstract forUploaderUrlExtraction()Lcom/grack/nanojson/JsonObject;
.end method
