.class public Ljj$/sun/nio/cs/DoubleByte;
.super Ljava/lang/Object;
.source "DoubleByte.java"


# static fields
.field public static final B2C_UNMAPPABLE:[C


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Ljj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    sget-object v0, Ljj$/sun/nio/cs/DoubleByte;->B2C_UNMAPPABLE:[C

    const v1, 0xfffd

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
