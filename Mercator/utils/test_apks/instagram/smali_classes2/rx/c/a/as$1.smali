.class Lrx/c/a/as$1;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/c/a/at$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/as;-><init>(JLjava/util/concurrent/TimeUnit;Lrx/d;Lrx/g;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/c/a/at$a",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:J

.field final synthetic b:Ljava/util/concurrent/TimeUnit;


# direct methods
.method constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .locals 1

    .prologue
    .line 34
    iput-wide p1, p0, Lrx/c/a/as$1;->a:J

    iput-object p3, p0, Lrx/c/a/as$1;->b:Ljava/util/concurrent/TimeUnit;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 34
    check-cast p1, Lrx/c/a/at$c;

    check-cast p2, Ljava/lang/Long;

    check-cast p3, Lrx/g$a;

    invoke-virtual {p0, p1, p2, p3}, Lrx/c/a/as$1;->a(Lrx/c/a/at$c;Ljava/lang/Long;Lrx/g$a;)Lrx/k;

    move-result-object v0

    return-object v0
.end method

.method public a(Lrx/c/a/at$c;Ljava/lang/Long;Lrx/g$a;)Lrx/k;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/c/a/at$c",
            "<TT;>;",
            "Ljava/lang/Long;",
            "Lrx/g$a;",
            ")",
            "Lrx/k;"
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Lrx/c/a/as$1$1;

    invoke-direct {v0, p0, p1, p2}, Lrx/c/a/as$1$1;-><init>(Lrx/c/a/as$1;Lrx/c/a/at$c;Ljava/lang/Long;)V

    iget-wide v2, p0, Lrx/c/a/as$1;->a:J

    iget-object v1, p0, Lrx/c/a/as$1;->b:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p3, v0, v2, v3, v1}, Lrx/g$a;->a(Lrx/b/a;JLjava/util/concurrent/TimeUnit;)Lrx/k;

    move-result-object v0

    return-object v0
.end method
