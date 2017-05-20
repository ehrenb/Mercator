.class Lrx/c/a/av$2;
.super Lrx/j;
.source "OperatorToObservableSortedList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/av;->a(Lrx/j;)Lrx/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lrx/j",
        "<TT;>;"
    }
.end annotation


# instance fields
.field a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation
.end field

.field b:Z

.field final synthetic c:Lrx/c/b/b;

.field final synthetic d:Lrx/j;

.field final synthetic e:Lrx/c/a/av;


# direct methods
.method constructor <init>(Lrx/c/a/av;Lrx/c/b/b;Lrx/j;)V
    .locals 2

    .prologue
    .line 62
    iput-object p1, p0, Lrx/c/a/av$2;->e:Lrx/c/a/av;

    iput-object p2, p0, Lrx/c/a/av$2;->c:Lrx/c/b/b;

    iput-object p3, p0, Lrx/c/a/av$2;->d:Lrx/j;

    invoke-direct {p0}, Lrx/j;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lrx/c/a/av$2;->e:Lrx/c/a/av;

    iget v1, v1, Lrx/c/a/av;->b:I

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lrx/c/a/av$2;->a:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .prologue
    .line 74
    iget-boolean v0, p0, Lrx/c/a/av$2;->b:Z

    if-nez v0, :cond_0

    .line 75
    const/4 v0, 0x1

    iput-boolean v0, p0, Lrx/c/a/av$2;->b:Z

    .line 76
    iget-object v0, p0, Lrx/c/a/av$2;->a:Ljava/util/List;

    .line 77
    const/4 v1, 0x0

    iput-object v1, p0, Lrx/c/a/av$2;->a:Ljava/util/List;

    .line 80
    :try_start_0
    iget-object v1, p0, Lrx/c/a/av$2;->e:Lrx/c/a/av;

    iget-object v1, v1, Lrx/c/a/av;->a:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    iget-object v1, p0, Lrx/c/a/av$2;->c:Lrx/c/b/b;

    invoke-virtual {v1, v0}, Lrx/c/b/b;->a(Ljava/lang/Object;)V

    .line 87
    :cond_0
    :goto_0
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    invoke-static {v0, p0}, Lrx/exceptions/a;->a(Ljava/lang/Throwable;Lrx/e;)V

    goto :goto_0
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lrx/c/a/av$2;->d:Lrx/j;

    invoke-virtual {v0, p1}, Lrx/j;->onError(Ljava/lang/Throwable;)V

    .line 92
    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 96
    iget-boolean v0, p0, Lrx/c/a/av$2;->b:Z

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lrx/c/a/av$2;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 99
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 69
    const-wide v0, 0x7fffffffffffffffL

    invoke-virtual {p0, v0, v1}, Lrx/c/a/av$2;->request(J)V

    .line 70
    return-void
.end method
