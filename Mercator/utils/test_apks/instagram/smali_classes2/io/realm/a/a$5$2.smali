.class Lio/realm/a/a$5$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a/a$5;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/w;

.field final synthetic b:Lio/realm/u;

.field final synthetic c:Lio/realm/a/a$5;


# direct methods
.method constructor <init>(Lio/realm/a/a$5;Lio/realm/w;Lio/realm/u;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lio/realm/a/a$5$2;->c:Lio/realm/a/a$5;

    iput-object p2, p0, Lio/realm/a/a$5$2;->a:Lio/realm/w;

    iput-object p3, p0, Lio/realm/a/a$5$2;->b:Lio/realm/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lio/realm/a/a$5$2;->c:Lio/realm/a/a$5;

    iget-object v0, v0, Lio/realm/a/a$5;->b:Lio/realm/ac;

    iget-object v1, p0, Lio/realm/a/a$5$2;->a:Lio/realm/w;

    invoke-static {v0, v1}, Lio/realm/ad;->removeChangeListener(Lio/realm/ac;Lio/realm/w;)V

    .line 238
    iget-object v0, p0, Lio/realm/a/a$5$2;->b:Lio/realm/u;

    invoke-virtual {v0}, Lio/realm/u;->close()V

    .line 239
    iget-object v0, p0, Lio/realm/a/a$5$2;->c:Lio/realm/a/a$5;

    iget-object v0, v0, Lio/realm/a/a$5;->c:Lio/realm/a/a;

    iget-object v0, v0, Lio/realm/a/a;->b:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a/a$a;

    iget-object v1, p0, Lio/realm/a/a$5$2;->c:Lio/realm/a/a$5;

    iget-object v1, v1, Lio/realm/a/a$5;->b:Lio/realm/ac;

    invoke-virtual {v0, v1}, Lio/realm/a/a$a;->b(Ljava/lang/Object;)V

    .line 240
    return-void
.end method
