.class Lcom/bumptech/glide/load/b/d$a;
.super Ljava/lang/Object;
.source "EngineJob.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/bumptech/glide/load/b/k;Z)Lcom/bumptech/glide/load/b/h;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/bumptech/glide/load/b/k",
            "<TR;>;Z)",
            "Lcom/bumptech/glide/load/b/h",
            "<TR;>;"
        }
    .end annotation

    .prologue
    .line 191
    new-instance v0, Lcom/bumptech/glide/load/b/h;

    invoke-direct {v0, p1, p2}, Lcom/bumptech/glide/load/b/h;-><init>(Lcom/bumptech/glide/load/b/k;Z)V

    return-object v0
.end method
