.class public Lcm/aptoide/pt/imageloader/GlideModifications;
.super Ljava/lang/Object;
.source "GlideModifications.java"

# interfaces
.implements Lcom/bumptech/glide/e/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/h;)V
    .locals 3

    .prologue
    .line 14
    sget-object v0, Lcom/bumptech/glide/load/a;->c:Lcom/bumptech/glide/load/a;

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/a;)Lcom/bumptech/glide/h;

    .line 20
    new-instance v0, Lcom/bumptech/glide/load/b/b/i;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/b/b/i;-><init>(Landroid/content/Context;)V

    .line 23
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/i;->a()I

    move-result v1

    .line 24
    new-instance v2, Lcom/bumptech/glide/load/b/b/g;

    invoke-direct {v2, v1}, Lcom/bumptech/glide/load/b/b/g;-><init>(I)V

    invoke-virtual {p2, v2}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/b/b/h;)Lcom/bumptech/glide/h;

    .line 27
    invoke-virtual {v0}, Lcom/bumptech/glide/load/b/b/i;->b()I

    move-result v0

    .line 28
    new-instance v1, Lcom/bumptech/glide/load/b/a/f;

    invoke-direct {v1, v0}, Lcom/bumptech/glide/load/b/a/f;-><init>(I)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/h;->a(Lcom/bumptech/glide/load/b/a/c;)Lcom/bumptech/glide/h;

    .line 29
    return-void
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/g;)V
    .locals 0

    .prologue
    .line 33
    return-void
.end method
