.class public Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils$ScriptLoaderError;
.super Ljava/lang/Exception;
.source "ScriptUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gold/extension/shared/spoof/js/nsigsolver/common/ScriptUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScriptLoaderError"
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 3

    .line 13
    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
