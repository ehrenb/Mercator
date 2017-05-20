.class Lrx/a$10$1;
.super Ljava/lang/Object;
.source "Completable.java"

# interfaces
.implements Lrx/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/a$10;->a(Lrx/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lrx/b;

.field final synthetic b:Lrx/g$a;

.field final synthetic c:Lrx/a$10;


# direct methods
.method constructor <init>(Lrx/a$10;Lrx/b;Lrx/g$a;)V
    .locals 0

    .prologue
    .line 2145
    iput-object p1, p0, Lrx/a$10$1;->c:Lrx/a$10;

    iput-object p2, p0, Lrx/a$10$1;->a:Lrx/b;

    iput-object p3, p0, Lrx/a$10$1;->b:Lrx/g$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .prologue
    .line 2149
    :try_start_0
    iget-object v0, p0, Lrx/a$10$1;->c:Lrx/a$10;

    iget-object v0, v0, Lrx/a$10;->b:Lrx/a;

    iget-object v1, p0, Lrx/a$10$1;->a:Lrx/b;

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/b;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2151
    iget-object v0, p0, Lrx/a$10$1;->b:Lrx/g$a;

    invoke-virtual {v0}, Lrx/g$a;->unsubscribe()V

    .line 2153
    return-void

    .line 2151
    :catchall_0
    move-exception v0

    iget-object v1, p0, Lrx/a$10$1;->b:Lrx/g$a;

    invoke-virtual {v1}, Lrx/g$a;->unsubscribe()V

    throw v0
.end method
