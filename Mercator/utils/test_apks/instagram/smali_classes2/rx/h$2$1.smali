.class Lrx/h$2$1;
.super Ljava/lang/Object;
.source "Single.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/h$2;->a(Lrx/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/i;

.field final synthetic b:Lrx/g$a;

.field final synthetic c:Lrx/h$2;


# direct methods
.method constructor <init>(Lrx/h$2;Lrx/i;Lrx/g$a;)V
    .locals 0

    .prologue
    .line 1923
    iput-object p1, p0, Lrx/h$2$1;->c:Lrx/h$2;

    iput-object p2, p0, Lrx/h$2$1;->a:Lrx/i;

    iput-object p3, p0, Lrx/h$2$1;->b:Lrx/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 1926
    new-instance v0, Lrx/h$2$1$1;

    invoke-direct {v0, p0}, Lrx/h$2$1$1;-><init>(Lrx/h$2$1;)V

    .line 1946
    iget-object v1, p0, Lrx/h$2$1;->a:Lrx/i;

    invoke-virtual {v1, v0}, Lrx/i;->b(Lrx/k;)V

    .line 1948
    iget-object v1, p0, Lrx/h$2$1;->c:Lrx/h$2;

    iget-object v1, v1, Lrx/h$2;->b:Lrx/h;

    invoke-virtual {v1, v0}, Lrx/h;->a(Lrx/i;)Lrx/k;

    .line 1949
    return-void
.end method
