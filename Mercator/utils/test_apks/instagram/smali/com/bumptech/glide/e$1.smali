.class Lcom/bumptech/glide/e$1;
.super Ljava/lang/Object;
.source "GenericRequestBuilder.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/e;->c(II)Lcom/bumptech/glide/g/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/g/e;

.field final synthetic b:Lcom/bumptech/glide/e;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/e;Lcom/bumptech/glide/g/e;)V
    .locals 0

    .prologue
    .line 718
    iput-object p1, p0, Lcom/bumptech/glide/e$1;->b:Lcom/bumptech/glide/e;

    iput-object p2, p0, Lcom/bumptech/glide/e$1;->a:Lcom/bumptech/glide/g/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 721
    iget-object v0, p0, Lcom/bumptech/glide/e$1;->a:Lcom/bumptech/glide/g/e;

    invoke-virtual {v0}, Lcom/bumptech/glide/g/e;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 722
    iget-object v0, p0, Lcom/bumptech/glide/e$1;->b:Lcom/bumptech/glide/e;

    iget-object v1, p0, Lcom/bumptech/glide/e$1;->a:Lcom/bumptech/glide/g/e;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/e;->a(Lcom/bumptech/glide/g/b/k;)Lcom/bumptech/glide/g/b/k;

    .line 724
    :cond_0
    return-void
.end method
