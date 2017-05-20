.class Lio/realm/a/a$6;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lrx/d$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a/a;->a(Lio/realm/e;Lio/realm/f;)Lrx/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/d$a",
        "<",
        "Lio/realm/f;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lio/realm/x;

.field final synthetic b:Lio/realm/f;

.field final synthetic c:Lio/realm/a/a;


# direct methods
.method constructor <init>(Lio/realm/a/a;Lio/realm/x;Lio/realm/f;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lio/realm/a/a$6;->c:Lio/realm/a/a;

    iput-object p2, p0, Lio/realm/a/a$6;->a:Lio/realm/x;

    iput-object p3, p0, Lio/realm/a/a$6;->b:Lio/realm/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lrx/j;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/j",
            "<-",
            "Lio/realm/f;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lio/realm/a/a$6;->a:Lio/realm/x;

    invoke-static {v0}, Lio/realm/e;->b(Lio/realm/x;)Lio/realm/e;

    move-result-object v1

    .line 259
    iget-object v0, p0, Lio/realm/a/a$6;->c:Lio/realm/a/a;

    iget-object v0, v0, Lio/realm/a/a;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a/a$a;

    iget-object v2, p0, Lio/realm/a/a$6;->b:Lio/realm/f;

    invoke-virtual {v0, v2}, Lio/realm/a/a$a;->a(Ljava/lang/Object;)V

    .line 261
    new-instance v0, Lio/realm/a/a$6$1;

    invoke-direct {v0, p0, p1}, Lio/realm/a/a$6$1;-><init>(Lio/realm/a/a$6;Lrx/j;)V

    .line 269
    iget-object v2, p0, Lio/realm/a/a$6;->b:Lio/realm/f;

    invoke-static {v2, v0}, Lio/realm/ad;->addChangeListener(Lio/realm/ac;Lio/realm/w;)V

    .line 270
    new-instance v2, Lio/realm/a/a$6$2;

    invoke-direct {v2, p0, v0, v1}, Lio/realm/a/a$6$2;-><init>(Lio/realm/a/a$6;Lio/realm/w;Lio/realm/e;)V

    invoke-static {v2}, Lrx/j/e;->a(Lrx/b/a;)Lrx/k;

    move-result-object v0

    invoke-virtual {p1, v0}, Lrx/j;->add(Lrx/k;)V

    .line 281
    iget-object v0, p0, Lio/realm/a/a$6;->b:Lio/realm/f;

    invoke-virtual {p1, v0}, Lrx/j;->onNext(Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public synthetic call(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 253
    check-cast p1, Lrx/j;

    invoke-virtual {p0, p1}, Lio/realm/a/a$6;->a(Lrx/j;)V

    return-void
.end method
