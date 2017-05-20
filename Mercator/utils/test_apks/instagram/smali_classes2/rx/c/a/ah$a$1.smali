.class Lrx/c/a/ah$a$1;
.super Ljava/lang/Object;
.source "OperatorObserveOn.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/ah$a;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/ah$a;


# direct methods
.method constructor <init>(Lrx/c/a/ah$a;)V
    .locals 0

    .prologue
    .line 139
    iput-object p1, p0, Lrx/c/a/ah$a$1;->a:Lrx/c/a/ah$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 3

    .prologue
    .line 143
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 144
    iget-object v0, p0, Lrx/c/a/ah$a$1;->a:Lrx/c/a/ah$a;

    iget-object v0, v0, Lrx/c/a/ah$a;->g:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-static {v0, p1, p2}, Lrx/c/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 145
    iget-object v0, p0, Lrx/c/a/ah$a$1;->a:Lrx/c/a/ah$a;

    invoke-virtual {v0}, Lrx/c/a/ah$a;->b()V

    .line 147
    :cond_0
    return-void
.end method
