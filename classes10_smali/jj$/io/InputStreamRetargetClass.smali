.class public final synthetic Ljj$/io/InputStreamRetargetClass;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"


# direct methods
.method public static synthetic transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 3

    instance-of v0, p0, Ljj$/io/InputStreamRetargetInterface;

    if-eqz v0, :cond_b

    check-cast p0, Ljj$/io/InputStreamRetargetInterface;

    invoke-interface {p0, p1}, Ljj$/io/InputStreamRetargetInterface;->transferTo(Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0

    :cond_b
    invoke-static {p0, p1}, Ljj$/io/DesugarInputStream;->transferTo(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    move-result-wide p0

    return-wide p0
.end method
