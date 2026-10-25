.class public Ljj$/sun/nio/cs/IBM775;
.super Ljava/nio/charset/Charset;
.source "IBM775.java"

# interfaces
.implements Ljj$/sun/nio/cs/HistoricallyNamedCharset;


# static fields
.field private static final b2c:[C

.field private static final b2cTable:Ljava/lang/String; = "ĆüéāäģåćłēŖŗīŹÄÅÉæÆōöĢ¢ŚśÖÜø£Ø×¤ĀĪóŻżź”¦©®¬½¼Ł«»░▒▓│┤ĄČĘĖ╣║╗╝ĮŠ┐└┴┬├─┼ŲŪ╚╔╩╦╠═╬Žąčęėįšųūž┘┌█▄▌▐▀ÓßŌŃõÕµńĶķĻļņĒŅ’\u00ad±“¾¶§÷„°∙·¹³²■\u00a0\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

.field private static final c2b:[C

.field private static final c2bIndex:[C


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const-string v0, "ĆüéāäģåćłēŖŗīŹÄÅÉæÆōöĢ¢ŚśÖÜø£Ø×¤ĀĪóŻżź”¦©®¬½¼Ł«»░▒▓│┤ĄČĘĖ╣║╗╝ĮŠ┐└┴┬├─┼ŲŪ╚╔╩╦╠═╬Žąčęėįšųūž┘┌█▄▌▐▀ÓßŌŃõÕµńĶķĻļņĒŅ’\u00ad±“¾¶§÷„°∙·¹³²■\u00a0\u0000\u0001\u0002\u0003\u0004\u0005\u0006\u0007\b\t\n\u000b\f\r\u000e\u000f\u0010\u0011\u0012\u0013\u0014\u0015\u0016\u0017\u0018\u0019\u001a\u001b\u001c\u001d\u001e\u001f !\"#$%&\'()*+,-./0123456789:;<=>?@ABCDEFGHIJKLMNOPQRSTUVWXYZ[\\]^_`abcdefghijklmnopqrstuvwxyz{|}~\u007f"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Ljj$/sun/nio/cs/IBM775;->b2c:[C

    const/16 v0, 0x500

    new-array v0, v0, [C

    sput-object v0, Ljj$/sun/nio/cs/IBM775;->c2b:[C

    const/16 v0, 0x100

    new-array v0, v0, [C

    sput-object v0, Ljj$/sun/nio/cs/IBM775;->c2bIndex:[C

    sget-object v0, Ljj$/sun/nio/cs/IBM775;->b2c:[C

    const/4 v1, 0x0

    sget-object v2, Ljj$/sun/nio/cs/IBM775;->c2b:[C

    sget-object v3, Ljj$/sun/nio/cs/IBM775;->c2bIndex:[C

    invoke-static {v0, v1, v2, v3}, Ljj$/sun/nio/cs/SingleByte;->initC2B([C[C[C[C)V

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    const-string v0, "IBM775"

    invoke-static {}, Ljj$/sun/nio/cs/StandardCharsets;->aliases_IBM775()[Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljava/nio/charset/Charset;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public contains(Ljava/nio/charset/Charset;)Z
    .registers 3

    instance-of v0, p1, Ljj$/sun/nio/cs/IBM775;

    return v0
.end method

.method public historicalName()Ljava/lang/String;
    .registers 2

    const-string v0, "Cp775"

    return-object v0
.end method

.method public newDecoder()Ljava/nio/charset/CharsetDecoder;
    .registers 4

    new-instance v0, Ljj$/sun/nio/cs/SingleByte$Decoder;

    sget-object v1, Ljj$/sun/nio/cs/IBM775;->b2c:[C

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Ljj$/sun/nio/cs/SingleByte$Decoder;-><init>(Ljava/nio/charset/Charset;[CZ)V

    return-object v0
.end method

.method public newEncoder()Ljava/nio/charset/CharsetEncoder;
    .registers 5

    new-instance v0, Ljj$/sun/nio/cs/SingleByte$Encoder;

    sget-object v1, Ljj$/sun/nio/cs/IBM775;->c2b:[C

    sget-object v2, Ljj$/sun/nio/cs/IBM775;->c2bIndex:[C

    const/4 v3, 0x0

    invoke-direct {v0, p0, v1, v2, v3}, Ljj$/sun/nio/cs/SingleByte$Encoder;-><init>(Ljava/nio/charset/Charset;[C[CZ)V

    return-object v0
.end method
