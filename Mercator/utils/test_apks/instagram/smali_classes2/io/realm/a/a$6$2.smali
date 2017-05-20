.class Lio/realm/a/a$6$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a/a$6;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/w;

.field final synthetic b:Lio/realm/e;

.field final synthetic c:Lio/realm/a/a$6;


# direct methods
.method constructor <init>(Lio/realm/a/a$6;Lio/realm/w;Lio/realm/e;)V
    .locals 0

    .prologue
    .line 270
    iput-object p1, p0, Lio/realm/a/a$6$2;->c:Lio/realm/a/a$6;

    iput-object p2, p0, Lio/realm/a/a$6$2;->a:Lio/realm/w;

    iput-object p3, p0, Lio/realm/a/a$6$2;->b:Lio/realm/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lio/realm/a/a$6$2;->c:Lio/realm/a/a$6;

    iget-object v0, v0, Lio/realm/a/a$6;->b:Lio/realm/f;

    iget-object v1, p0, Lio/realm/a/a$6$2;->a:Lio/realm/w;

    invoke-static {v0, v1}, Lio/realm/ad;->removeChangeListener(Lio/realm/ac;Lio/realm/w;)V

    .line 274
    iget-object v0, p0, Lio/realm/a/a$6$2;->b:Lio/realm/e;

    invoke-virtual {v0}, Lio/realm/e;->close()V

    .line 275
    iget-object v0, p0, Lio/realm/a/a$6$2;->c:Lio/realm/a/a$6;

    iget-object v0, v0, Lio/realm/a/a$6;->c:Lio/realm/a/a;

    iget-object v0, v0, Lio/realm/a/a;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a/a$a;

    iget-object v1, p0, Lio/realm/a/a$6$2;->c:Lio/realm/a/a$6;

    iget-object v1, v1, Lio/realm/a/a$6;->b:Lio/realm/f;

    invoke-virtual {v0, v1}, Lio/realm/a/a$a;->b(Ljava/lang/Object;)V

    .line 276
    return-void
.end method
