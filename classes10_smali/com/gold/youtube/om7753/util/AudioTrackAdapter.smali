.class public Lcom/gold/youtube/om7753/util/AudioTrackAdapter;
.super Landroid/widget/BaseAdapter;
.source "AudioTrackAdapter.java"


# instance fields
.field private final tracksWrapper:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;


# direct methods
.method public constructor <init>(Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter;->tracksWrapper:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    return-void
.end method


# virtual methods
.method public getCount()I
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter;->tracksWrapper:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .registers 2

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter;->getItem(I)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getItem(I)Ljava/util/List;
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/util/AudioTrackAdapter;->tracksWrapper:Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;

    invoke-virtual {v0}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter$AudioTracksWrapper;->getTracksList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/util/StreamItemAdapter$StreamSizeWrapper;->getStreamsList()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .registers 4

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 10

    invoke-virtual {p3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    if-nez p2, :cond_15

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const-string v2, "stream_quality_item"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getLayoutByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    :cond_15
    const-string p3, "wo_sound_icon"

    invoke-static {p3}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result p3

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const-string v2, "stream_format_name"

    invoke-static {v2}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    const-string v3, "stream_quality"

    invoke-static {v3}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const-string v4, "stream_size"

    invoke-static {v4}, Lcom/gold/youtube/om7753/util/Utils;->getIDByName(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/gold/youtube/om7753/util/AudioTrackAdapter;->getItem(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;

    const/16 v5, 0x8

    invoke-virtual {p3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_64

    invoke-virtual {p1}, Lcom/gold/youtube/om7753/extractor/stream/AudioStream;->getAudioTrackId()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_64
    invoke-static {v0, p1}, Lcom/gold/youtube/om7753/util/Localization;->audioTrackName(Landroid/content/Context;Lcom/gold/youtube/om7753/extractor/stream/AudioStream;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
