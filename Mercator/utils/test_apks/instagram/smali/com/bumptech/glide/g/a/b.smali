.class public Lcom/bumptech/glide/g/a/b;
.super Ljava/lang/Object;
.source "DrawableCrossFadeViewAnimation.java"

# interfaces
.implements Lcom/bumptech/glide/g/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/graphics/drawable/Drawable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/g/a/c",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/g/a/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/g/a/c",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/g/a/c;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/g/a/c",
            "<TT;>;I)V"
        }
    .end annotation

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/bumptech/glide/g/a/b;->a:Lcom/bumptech/glide/g/a/c;

    .line 26
    iput p2, p0, Lcom/bumptech/glide/g/a/b;->b:I

    .line 27
    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/g/a/c$a;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/bumptech/glide/g/a/c$a;",
            ")Z"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x1

    .line 44
    invoke-interface {p2}, Lcom/bumptech/glide/g/a/c$a;->b()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 45
    if-eqz v2, :cond_0

    .line 46
    new-instance v3, Landroid/graphics/drawable/TransitionDrawable;

    const/4 v4, 0x2

    new-array v4, v4, [Landroid/graphics/drawable/Drawable;

    aput-object v2, v4, v1

    aput-object p1, v4, v0

    invoke-direct {v3, v4}, Landroid/graphics/drawable/TransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 47
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/TransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 48
    iget v1, p0, Lcom/bumptech/glide/g/a/b;->b:I

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    .line 49
    invoke-interface {p2, v3}, Lcom/bumptech/glide/g/a/c$a;->c(Landroid/graphics/drawable/Drawable;)V

    .line 53
    :goto_0
    return v0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/bumptech/glide/g/a/b;->a:Lcom/bumptech/glide/g/a/c;

    invoke-interface {v0, p1, p2}, Lcom/bumptech/glide/g/a/c;->a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c$a;)Z

    move v0, v1

    .line 53
    goto :goto_0
.end method

.method public bridge synthetic a(Ljava/lang/Object;Lcom/bumptech/glide/g/a/c$a;)Z
    .locals 1

    .prologue
    .line 14
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1, p2}, Lcom/bumptech/glide/g/a/b;->a(Landroid/graphics/drawable/Drawable;Lcom/bumptech/glide/g/a/c$a;)Z

    move-result v0

    return v0
.end method
