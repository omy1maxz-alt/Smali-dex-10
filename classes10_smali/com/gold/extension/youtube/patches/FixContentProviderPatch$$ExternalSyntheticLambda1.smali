.class public final synthetic Lcom/gold/extension/youtube/patches/FixContentProviderPatch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/gold/extension/shared/Logger$LogMessage;


# instance fields
.field public final synthetic f$0:Ljava/util/Map$Entry;


# direct methods
.method public synthetic constructor <init>(Ljava/util/Map$Entry;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/extension/youtube/patches/FixContentProviderPatch$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map$Entry;

    return-void
.end method


# virtual methods
.method public final buildMessageString()Ljava/lang/String;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/gold/extension/youtube/patches/FixContentProviderPatch$$ExternalSyntheticLambda1;->f$0:Ljava/util/Map$Entry;

    invoke-static {p0}, Lcom/gold/extension/youtube/patches/FixContentProviderPatch;->$r8$lambda$TYIWJjbQ9waZKM4Z_SL_BG92sYk(Ljava/util/Map$Entry;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
