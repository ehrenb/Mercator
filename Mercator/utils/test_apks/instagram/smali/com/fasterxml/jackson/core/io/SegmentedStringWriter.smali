.class public final Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;
.super Ljava/io/Writer;
.source "SegmentedStringWriter.java"


# instance fields
.field private final _buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;


# direct methods
.method public constructor <init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/io/Writer;-><init>()V

    .line 22
    new-instance v0, Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-direct {v0, p1}, Lcom/fasterxml/jackson/core/util/TextBuffer;-><init>(Lcom/fasterxml/jackson/core/util/BufferRecycler;)V

    iput-object v0, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    .line 23
    return-void
.end method


# virtual methods
.method public append(C)Ljava/io/Writer;
    .locals 0

    .prologue
    .line 33
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->write(I)V

    .line 34
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Ljava/io/Writer;
    .locals 4

    .prologue
    .line 39
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(Ljava/lang/String;II)V

    .line 41
    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Ljava/io/Writer;
    .locals 4

    .prologue
    .line 46
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(Ljava/lang/String;II)V

    .line 48
    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->append(C)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 16
    invoke-virtual {p0, p1, p2, p3}, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->append(Ljava/lang/CharSequence;II)Ljava/io/Writer;

    move-result-object v0

    return-object v0
.end method

.method public close()V
    .locals 0

    .prologue
    .line 51
    return-void
.end method

.method public flush()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public getAndClear()Ljava/lang/String;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0}, Lcom/fasterxml/jackson/core/util/TextBuffer;->contentsAsString()Ljava/lang/String;

    move-result-object v0

    .line 84
    iget-object v1, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->releaseBuffers()V

    .line 85
    return-object v0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    int-to-char v1, p1

    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(C)V

    return-void
.end method

.method public write(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 64
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public write(Ljava/lang/String;II)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append(Ljava/lang/String;II)V

    return-void
.end method

.method public write([C)V
    .locals 3

    .prologue
    .line 55
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    const/4 v1, 0x0

    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append([CII)V

    return-void
.end method

.method public write([CII)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/fasterxml/jackson/core/io/SegmentedStringWriter;->_buffer:Lcom/fasterxml/jackson/core/util/TextBuffer;

    invoke-virtual {v0, p1, p2, p3}, Lcom/fasterxml/jackson/core/util/TextBuffer;->append([CII)V

    return-void
.end method
