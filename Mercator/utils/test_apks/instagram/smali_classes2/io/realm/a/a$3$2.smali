.class Lio/realm/a/a$3$2;
.super Ljava/lang/Object;
.source "RealmObservableFactory.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/a/a$3;->a(Lrx/j;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lio/realm/w;

.field final synthetic b:Lio/realm/u;

.field final synthetic c:Lio/realm/a/a$3;


# direct methods
.method constructor <init>(Lio/realm/a/a$3;Lio/realm/w;Lio/realm/u;)V
    .locals 0

    .prologue
    .line 148
    iput-object p1, p0, Lio/realm/a/a$3$2;->c:Lio/realm/a/a$3;

    iput-object p2, p0, Lio/realm/a/a$3$2;->a:Lio/realm/w;

    iput-object p3, p0, Lio/realm/a/a$3$2;->b:Lio/realm/u;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lio/realm/a/a$3$2;->c:Lio/realm/a/a$3;

    iget-object v0, v0, Lio/realm/a/a$3;->b:Lio/realm/ag;

    iget-object v1, p0, Lio/realm/a/a$3$2;->a:Lio/realm/w;

    invoke-virtual {v0, v1}, Lio/realm/ag;->b(Lio/realm/w;)V

    .line 152
    iget-object v0, p0, Lio/realm/a/a$3$2;->b:Lio/realm/u;

    invoke-virtual {v0}, Lio/realm/u;->close()V

    .line 153
    iget-object v0, p0, Lio/realm/a/a$3$2;->c:Lio/realm/a/a$3;

    iget-object v0, v0, Lio/realm/a/a$3;->c:Lio/realm/a/a;

    iget-object v0, v0, Lio/realm/a/a;->a:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/realm/a/a$a;

    iget-object v1, p0, Lio/realm/a/a$3$2;->c:Lio/realm/a/a$3;

    iget-object v1, v1, Lio/realm/a/a$3;->b:Lio/realm/ag;

    invoke-virtual {v0, v1}, Lio/realm/a/a$a;->b(Ljava/lang/Object;)V

    .line 154
    return-void
.end method
