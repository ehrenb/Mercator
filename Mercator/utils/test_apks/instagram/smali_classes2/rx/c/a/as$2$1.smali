.class Lrx/c/a/as$2$1;
.super Ljava/lang/Object;
.source "OperatorTimeout.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/c/a/as$2;->a(Lrx/c/a/at$c;Ljava/lang/Long;Ljava/lang/Object;Lrx/g$a;)Lrx/k;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/c/a/at$c;

.field final synthetic b:Ljava/lang/Long;

.field final synthetic c:Lrx/c/a/as$2;


# direct methods
.method constructor <init>(Lrx/c/a/as$2;Lrx/c/a/at$c;Ljava/lang/Long;)V
    .locals 0

    .prologue
    .line 49
    iput-object p1, p0, Lrx/c/a/as$2$1;->c:Lrx/c/a/as$2;

    iput-object p2, p0, Lrx/c/a/as$2$1;->a:Lrx/c/a/at$c;

    iput-object p3, p0, Lrx/c/a/as$2$1;->b:Ljava/lang/Long;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 4

    .prologue
    .line 52
    iget-object v0, p0, Lrx/c/a/as$2$1;->a:Lrx/c/a/at$c;

    iget-object v1, p0, Lrx/c/a/as$2$1;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lrx/c/a/at$c;->a(J)V

    .line 53
    return-void
.end method
