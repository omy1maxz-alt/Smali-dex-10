.class public final Ljj$/io/DesugarInputStream;
.super Ljava/lang/Object;
.source "DesugarInputStream.java"


# static fields
.field private static final DEFAULT_BUFFER_SIZE:I = 0x2000


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 9

    const-string v0, "out"

    invoke-static {p1, v0}, Ljj$/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-wide/16 v0, 0x0

    const/16 v2, 0x2000

    new-array v3, v2, [B

    :goto_b
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v2}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v6, v5

    if-ltz v5, :cond_19

    invoke-virtual {p1, v3, v4, v6}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v4, v6

    add-long/2addr v0, v4

    goto :goto_b

    :cond_19
    return-wide v0
.end method
