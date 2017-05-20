.class public final Lcom/bumptech/glide/j$b$a;
.super Ljava/lang/Object;
.source "RequestManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/j$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/j$b;

.field private final b:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TA;>;"
        }
    .end annotation
.end field

.field private final d:Z


# direct methods
.method constructor <init>(Lcom/bumptech/glide/j$b;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    .prologue
    .line 748
    iput-object p1, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bumptech/glide/j$b$a;->d:Z

    .line 750
    iput-object p2, p0, Lcom/bumptech/glide/j$b$a;->b:Ljava/lang/Object;

    .line 751
    invoke-static {p2}, Lcom/bumptech/glide/j;->a(Ljava/lang/Object;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/bumptech/glide/j$b$a;->c:Ljava/lang/Class;

    .line 752
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/bumptech/glide/f;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Z:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TZ;>;)",
            "Lcom/bumptech/glide/f",
            "<TA;TT;TZ;>;"
        }
    .end annotation

    .prologue
    .line 768
    iget-object v0, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    iget-object v0, v0, Lcom/bumptech/glide/j$b;->a:Lcom/bumptech/glide/j;

    invoke-static {v0}, Lcom/bumptech/glide/j;->e(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j$c;

    move-result-object v10

    new-instance v0, Lcom/bumptech/glide/f;

    iget-object v1, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    iget-object v1, v1, Lcom/bumptech/glide/j$b;->a:Lcom/bumptech/glide/j;

    invoke-static {v1}, Lcom/bumptech/glide/j;->a(Lcom/bumptech/glide/j;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    iget-object v2, v2, Lcom/bumptech/glide/j$b;->a:Lcom/bumptech/glide/j;

    invoke-static {v2}, Lcom/bumptech/glide/j;->b(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/g;

    move-result-object v2

    iget-object v3, p0, Lcom/bumptech/glide/j$b$a;->c:Ljava/lang/Class;

    iget-object v4, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    invoke-static {v4}, Lcom/bumptech/glide/j$b;->a(Lcom/bumptech/glide/j$b;)Lcom/bumptech/glide/load/c/l;

    move-result-object v4

    iget-object v5, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    invoke-static {v5}, Lcom/bumptech/glide/j$b;->b(Lcom/bumptech/glide/j$b;)Ljava/lang/Class;

    move-result-object v5

    iget-object v6, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    iget-object v6, v6, Lcom/bumptech/glide/j$b;->a:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->c(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/d/m;

    move-result-object v7

    iget-object v6, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    iget-object v6, v6, Lcom/bumptech/glide/j$b;->a:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->d(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/d/g;

    move-result-object v8

    iget-object v6, p0, Lcom/bumptech/glide/j$b$a;->a:Lcom/bumptech/glide/j$b;

    iget-object v6, v6, Lcom/bumptech/glide/j$b;->a:Lcom/bumptech/glide/j;

    invoke-static {v6}, Lcom/bumptech/glide/j;->e(Lcom/bumptech/glide/j;)Lcom/bumptech/glide/j$c;

    move-result-object v9

    move-object v6, p1

    invoke-direct/range {v0 .. v9}, Lcom/bumptech/glide/f;-><init>(Landroid/content/Context;Lcom/bumptech/glide/g;Ljava/lang/Class;Lcom/bumptech/glide/load/c/l;Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/d/m;Lcom/bumptech/glide/d/g;Lcom/bumptech/glide/j$c;)V

    invoke-virtual {v10, v0}, Lcom/bumptech/glide/j$c;->a(Lcom/bumptech/glide/e;)Lcom/bumptech/glide/e;

    move-result-object v0

    check-cast v0, Lcom/bumptech/glide/f;

    .line 771
    iget-boolean v1, p0, Lcom/bumptech/glide/j$b$a;->d:Z

    if-eqz v1, :cond_0

    .line 772
    iget-object v1, p0, Lcom/bumptech/glide/j$b$a;->b:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/f;->b(Ljava/lang/Object;)Lcom/bumptech/glide/e;

    .line 774
    :cond_0
    return-object v0
.end method
