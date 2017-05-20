.class public Lcom/c/b/a;
.super Lcom/c/b/b;
.source "PublishRelay.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/c/b/b",
        "<TT;TT;>;"
    }
.end annotation


# instance fields
.field private final b:Lcom/c/b/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/c/b/c",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lrx/d$a;Lcom/c/b/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/d$a",
            "<TT;>;",
            "Lcom/c/b/c",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/c/b/b;-><init>(Lrx/d$a;)V

    .line 42
    iput-object p2, p0, Lcom/c/b/a;->b:Lcom/c/b/c;

    .line 43
    return-void
.end method

.method public static a()Lcom/c/b/a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lcom/c/b/a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lcom/c/b/c;

    invoke-direct {v0}, Lcom/c/b/c;-><init>()V

    .line 35
    new-instance v1, Lcom/c/b/a;

    invoke-direct {v1, v0, v0}, Lcom/c/b/a;-><init>(Lrx/d$a;Lcom/c/b/c;)V

    return-object v1
.end method


# virtual methods
.method public call(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 46
    iget-object v0, p0, Lcom/c/b/a;->b:Lcom/c/b/c;

    invoke-virtual {v0}, Lcom/c/b/c;->a()[Lcom/c/b/c$a;

    move-result-object v1

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 47
    invoke-virtual {v3, p1}, Lcom/c/b/c$a;->onNext(Ljava/lang/Object;)V

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    :cond_0
    return-void
.end method
