.class Lrx/c/c/j$a$1;
.super Ljava/lang/Object;
.source "TrampolineScheduler.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/c/j$a;->a(Lrx/b/a;J)Lrx/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/c/j$b;

.field final synthetic b:Lrx/c/c/j$a;


# direct methods
.method constructor <init>(Lrx/c/c/j$a;Lrx/c/c/j$b;)V
    .locals 0

    .prologue
    .line 79
    iput-object p1, p0, Lrx/c/c/j$a$1;->b:Lrx/c/c/j$a;

    iput-object p2, p0, Lrx/c/c/j$a$1;->a:Lrx/c/c/j$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lrx/c/c/j$a$1;->b:Lrx/c/c/j$a;

    iget-object v0, v0, Lrx/c/c/j$a;->b:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v1, p0, Lrx/c/c/j$a$1;->a:Lrx/c/c/j$b;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/PriorityBlockingQueue;->remove(Ljava/lang/Object;)Z

    .line 84
    return-void
.end method
