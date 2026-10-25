.class public interface abstract Lokin/BufferedSource;
.super Ljava/lang/Object;
.source "BufferedSource.java"

# interfaces
.implements Lokin/Source;
.implements Ljava/nio/channels/ReadableByteChannel;


# virtual methods
.method public abstract buffer()Lokin/Buffer;
.end method

.method public abstract exhausted()Z
.end method

.method public abstract indexOf(B)J
.end method

.method public abstract inputStream()Ljava/io/InputStream;
.end method

.method public abstract rangeEquals(JLokin/ByteString;)Z
.end method

.method public abstract readByte()B
.end method

.method public abstract readByteArray()[B
.end method

.method public abstract readByteArray(J)[B
.end method

.method public abstract readByteString(J)Lokin/ByteString;
.end method

.method public abstract readDecimalLong()J
.end method

.method public abstract readFully([B)V
.end method

.method public abstract readHexadecimalUnsignedLong()J
.end method

.method public abstract readInt()I
.end method

.method public abstract readIntLe()I
.end method

.method public abstract readShort()S
.end method

.method public abstract readShortLe()S
.end method

.method public abstract readString(Ljava/nio/charset/Charset;)Ljava/lang/String;
.end method

.method public abstract readUtf8LineStrict()Ljava/lang/String;
.end method

.method public abstract readUtf8LineStrict(J)Ljava/lang/String;
.end method

.method public abstract require(J)V
.end method

.method public abstract skip(J)V
.end method
