.class final Lrx/c/a/ax$b;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "OperatorZip.java"

# interfaces
.implements Lrx/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/c/a/ax;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/f;"
    }
.end annotation


# instance fields
.field final a:Lrx/c/a/ax$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/c/a/ax$a",
            "<TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/c/a/ax$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/ax$a",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 156
    iput-object p1, p0, Lrx/c/a/ax$b;->a:Lrx/c/a/ax$a;

    .line 157
    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 1

    .prologue
    .line 161
    invoke-static {p0, p1, p2}, Lrx/c/a/a;->a(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 163
    iget-object v0, p0, Lrx/c/a/ax$b;->a:Lrx/c/a/ax$a;

    invoke-virtual {v0}, Lrx/c/a/ax$a;->a()V

    .line 164
    return-void
.end method
