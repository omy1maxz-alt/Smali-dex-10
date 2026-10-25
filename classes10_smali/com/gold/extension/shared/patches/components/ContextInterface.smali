.class public interface abstract Lcom/gold/extension/shared/patches/components/ContextInterface;
.super Ljava/lang/Object;
.source "ContextInterface.java"


# virtual methods
.method public isHomeFeedOrRelatedVideo()Z
    .registers 2

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "horizontalCollectionSwipeProtector=null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public isSubscriptionOrLibrary()Z
    .registers 2

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "heightConstraint=null"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    return p0
.end method

.method public abstract patch_getIdentifier()Ljava/lang/String;
.end method

.method public abstract patch_getPathBuilder()Ljava/lang/StringBuilder;
.end method
