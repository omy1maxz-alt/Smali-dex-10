.class Ljj$/sun/nio/cs/StringUTF16;
.super Ljava/lang/Object;
.source "StringUTF16.java"


# static fields
.field private static final unsafe:Ljj$/sun/misc/DesugarUnsafe;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Ljj$/sun/misc/DesugarUnsafe;->getUnsafe()Ljj$/sun/misc/DesugarUnsafe;

    move-result-object v0

    sput-object v0, Ljj$/sun/nio/cs/StringUTF16;->unsafe:Ljj$/sun/misc/DesugarUnsafe;

    return-void
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getChar([BI)C
    .registers 9

    sget-object v0, Ljj$/sun/nio/cs/StringUTF16;->unsafe:Ljj$/sun/misc/DesugarUnsafe;

    sget v1, Ljj$/sun/misc/DesugarUnsafe;->ARRAY_BYTE_BASE_OFFSET:I

    int-to-long v1, v1

    sget v3, Ljj$/sun/misc/DesugarUnsafe;->ARRAY_BYTE_INDEX_SCALE:I

    mul-int v3, v3, p1

    int-to-long v3, v3

    const-wide/16 v5, 0x2

    mul-long v3, v3, v5

    add-long/2addr v1, v3

    invoke-virtual {v0, p0, v1, v2}, Ljj$/sun/misc/DesugarUnsafe;->getChar(Ljava/lang/Object;J)C

    move-result v0

    return v0
.end method
