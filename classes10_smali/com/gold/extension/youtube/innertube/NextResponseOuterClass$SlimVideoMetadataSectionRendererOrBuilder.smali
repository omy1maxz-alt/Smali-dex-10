.class public interface abstract Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$SlimVideoMetadataSectionRendererOrBuilder;
.super Ljava/lang/Object;
.source "NextResponseOuterClass.java"

# interfaces
.implements Lcom/google/protobuf/MessageLiteOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/youtube/innertube/NextResponseOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "SlimVideoMetadataSectionRendererOrBuilder"
.end annotation


# virtual methods
.method public abstract getTertiaryContents(I)Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;
.end method

.method public abstract getTertiaryContentsCount()I
.end method

.method public abstract getTertiaryContentsList()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gold/extension/youtube/innertube/NextResponseOuterClass$TertiaryContents;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getVideoId()Ljava/lang/String;
.end method

.method public abstract getVideoIdBytes()Lcom/google/protobuf/ByteString;
.end method
