.class Lcom/bumptech/glide/load/resource/d/c$b;
.super Ljava/lang/Object;
.source "GifBitmapWrapperResourceDecoder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/resource/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "b"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/io/InputStream;)Lcom/bumptech/glide/load/resource/bitmap/l$a;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    new-instance v0, Lcom/bumptech/glide/load/resource/bitmap/l;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/resource/bitmap/l;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/resource/bitmap/l;->b()Lcom/bumptech/glide/load/resource/bitmap/l$a;

    move-result-object v0

    return-object v0
.end method
