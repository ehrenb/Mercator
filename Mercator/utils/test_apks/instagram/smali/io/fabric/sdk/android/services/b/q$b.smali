.class final Lio/fabric/sdk/android/services/b/q$b;
.super Ljava/io/InputStream;
.source "QueueFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/fabric/sdk/android/services/b/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Lio/fabric/sdk/android/services/b/q;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/b/q$a;)V
    .locals 1

    .prologue
    .line 465
    iput-object p1, p0, Lio/fabric/sdk/android/services/b/q$b;->a:Lio/fabric/sdk/android/services/b/q;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 466
    iget v0, p2, Lio/fabric/sdk/android/services/b/q$a;->b:I

    add-int/lit8 v0, v0, 0x4

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/b/q;->a(Lio/fabric/sdk/android/services/b/q;I)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/b/q$b;->b:I

    .line 467
    iget v0, p2, Lio/fabric/sdk/android/services/b/q$a;->c:I

    iput v0, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    .line 468
    return-void
.end method

.method synthetic constructor <init>(Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/b/q$a;Lio/fabric/sdk/android/services/b/q$1;)V
    .locals 0

    .prologue
    .line 461
    invoke-direct {p0, p1, p2}, Lio/fabric/sdk/android/services/b/q$b;-><init>(Lio/fabric/sdk/android/services/b/q;Lio/fabric/sdk/android/services/b/q$a;)V

    return-void
.end method


# virtual methods
.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 491
    iget v0, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    if-nez v0, :cond_0

    .line 492
    const/4 v0, -0x1

    .line 498
    :goto_0
    return v0

    .line 494
    :cond_0
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/q$b;->a:Lio/fabric/sdk/android/services/b/q;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/q;->a(Lio/fabric/sdk/android/services/b/q;)Ljava/io/RandomAccessFile;

    move-result-object v0

    iget v1, p0, Lio/fabric/sdk/android/services/b/q$b;->b:I

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 495
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/q$b;->a:Lio/fabric/sdk/android/services/b/q;

    invoke-static {v0}, Lio/fabric/sdk/android/services/b/q;->a(Lio/fabric/sdk/android/services/b/q;)Ljava/io/RandomAccessFile;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->read()I

    move-result v0

    .line 496
    iget-object v1, p0, Lio/fabric/sdk/android/services/b/q$b;->a:Lio/fabric/sdk/android/services/b/q;

    iget v2, p0, Lio/fabric/sdk/android/services/b/q$b;->b:I

    add-int/lit8 v2, v2, 0x1

    invoke-static {v1, v2}, Lio/fabric/sdk/android/services/b/q;->a(Lio/fabric/sdk/android/services/b/q;I)I

    move-result v1

    iput v1, p0, Lio/fabric/sdk/android/services/b/q$b;->b:I

    .line 497
    iget v1, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    goto :goto_0
.end method

.method public read([BII)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 472
    const-string v0, "buffer"

    invoke-static {p1, v0}, Lio/fabric/sdk/android/services/b/q;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 473
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    array-length v0, p1

    sub-int/2addr v0, p2

    if-le p3, v0, :cond_1

    .line 474
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 476
    :cond_1
    iget v0, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    if-lez v0, :cond_3

    .line 477
    iget v0, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    if-le p3, v0, :cond_2

    .line 478
    iget p3, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    .line 480
    :cond_2
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/q$b;->a:Lio/fabric/sdk/android/services/b/q;

    iget v1, p0, Lio/fabric/sdk/android/services/b/q$b;->b:I

    invoke-static {v0, v1, p1, p2, p3}, Lio/fabric/sdk/android/services/b/q;->a(Lio/fabric/sdk/android/services/b/q;I[BII)V

    .line 481
    iget-object v0, p0, Lio/fabric/sdk/android/services/b/q$b;->a:Lio/fabric/sdk/android/services/b/q;

    iget v1, p0, Lio/fabric/sdk/android/services/b/q$b;->b:I

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lio/fabric/sdk/android/services/b/q;->a(Lio/fabric/sdk/android/services/b/q;I)I

    move-result v0

    iput v0, p0, Lio/fabric/sdk/android/services/b/q$b;->b:I

    .line 482
    iget v0, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    sub-int/2addr v0, p3

    iput v0, p0, Lio/fabric/sdk/android/services/b/q$b;->c:I

    .line 485
    :goto_0
    return p3

    :cond_3
    const/4 p3, -0x1

    goto :goto_0
.end method
