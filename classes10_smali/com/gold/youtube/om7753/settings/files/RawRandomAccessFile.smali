.class Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;
.super Ljava/lang/Object;
.source "RawRandomAccessFile.java"

# interfaces
.implements Lcom/gold/youtube/om7753/settings/files/UniRandomAccessFile;


# instance fields
.field private mFile:Ljava/io/RandomAccessFile;


# direct methods
.method constructor <init>(Ljava/io/RandomAccessFile;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    return-void
.end method


# virtual methods
.method public close()V
    .registers 2

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    return-void
.end method

.method public getFilePointer()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v0

    return-wide v0
.end method

.method public length()J
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v0

    return-wide v0
.end method

.method public read([B)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->read([B)I

    return-void
.end method

.method public read([BII)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->read([BII)I

    return-void
.end method

.method public seek(J)V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->seek(J)V

    return-void
.end method

.method public setLength(J)V
    .registers 4

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2}, Ljava/io/RandomAccessFile;->setLength(J)V

    return-void
.end method

.method public skipBytes(I)I
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->skipBytes(I)I

    move-result v0

    return v0
.end method

.method public write([B)V
    .registers 3

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->write([B)V

    return-void
.end method

.method public write([BII)V
    .registers 5

    iget-object v0, p0, Lcom/gold/youtube/om7753/settings/files/RawRandomAccessFile;->mFile:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/RandomAccessFile;->write([BII)V

    return-void
.end method
